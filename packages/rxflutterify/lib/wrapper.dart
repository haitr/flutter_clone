library rxflutterify;

// ignore: depend_on_referenced_packages
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

// very simple Stack implementation
class _Stack<T> {
  final List<T> _stack = [];
  void push(T value) => _stack.add(value);
  T? pop() => isEmpty ? null : _stack.removeLast();
  T? get peek => isEmpty ? null : _stack.last;
  bool get isEmpty => _stack.isEmpty;
  int get size => _stack.length;
}

class Goto {
  final dynamic ref;

  const Goto(this.ref);
}

extension ReactableObjectExt<T> on T {
  BehaviorSubject<T> get react => BehaviorSubject.seeded(this);
}

// two-way binding for Flutter's ValueNotifier
extension ListenableExt<T> on ValueNotifier<T> {
  void bind(BehaviorSubject<T> subject) =>
      bindMap(subject, from: (value) => value, to: (value) => value);

  void bindMap<R>(
    BehaviorSubject<R> subject, {
    required R Function(T from) from,
    required T Function(R to) to,
  }) {
    var lock = 0;
    // bind from notifier to stream
    addListener(() {
      if (lock > 0) {
        lock--;
        return;
      }
      subject.value = from(value);
      lock++;
    });
    // bind from stream to notifier
    subject.listen((event) {
      if (lock > 0) {
        lock--;
        return;
      }
      value = to(subject.value);
      lock++;
    });
  }
}

extension BindExt<T> on T {
  T bind(Symbol tag, Stream<T> stream) {
    assert(!Wrapper._scopeManager.isEmpty,
        "cannot bind outside of Widget's constructors. Is [config] missing?");
    Wrapper._scopeManager.addToCurrentScope(tag, _ValueWrapper(this, stream));
    return this;
  }
}

class _ValueWrapper<T> {
  final T value;
  final Stream<T> stream;
  _ValueWrapper(this.value, this.stream);
}

class _ScopeManager {
  final bindingArgStack = _Stack<_Scope>();
  bool get isEmpty => bindingArgStack.isEmpty;
  void newScope(_Scope newScope) => bindingArgStack.push(newScope);
  _Scope popScope() => bindingArgStack.pop()!;
  void addToCurrentScope(Symbol tag, _ValueWrapper valueWrapper) =>
      bindingArgStack.peek?.add(tag, valueWrapper);
}

interface class _Scope {
  bool get isEmpty => throw UnimplementedError();

  List<Stream<(Symbol, dynamic)>> get data {
    throw UnimplementedError();
  }

  void add(Symbol tag, _ValueWrapper valueWrapper) {
    throw UnimplementedError();
  }
}

class _NormalScope implements _Scope {
  final _data = <Symbol, _ValueWrapper<dynamic>>{};

  @override
  void add(Symbol tag, _ValueWrapper valueWrapper) => _data.putIfAbsent(tag, () => valueWrapper);

  @override
  List<Stream<(Symbol, dynamic)>> get data => _data.entries.fold(
        [],
        (previousValue, element) =>
            previousValue..add(element.value.stream.map((event) => (element.key, event))),
      );

  @override
  bool get isEmpty => _data.isEmpty;
}

class _EmptyScope implements _Scope {
  @override
  void add(Symbol tag, _ValueWrapper valueWrapper) {}

  @override
  List<Stream<(Symbol, dynamic)>> get data => [];

  @override
  bool get isEmpty => true;
}

class Wrapper extends StatelessWidget {
  // companion object for stacking tasks
  static final _scopeManager = _ScopeManager();

  final Widget Function(Argument args) builder;
  final Argument _arguments;
  late final _Scope _scope;

  Wrapper(this._arguments, {super.key, required this.builder}) {
    _scope = Wrapper._scopeManager.popScope();
  }

  @override
  Widget build(BuildContext context) {
    if (_scope.isEmpty) {
      return builder(_arguments);
    }

    return StreamBuilder(
        stream: Rx.combineLatest(_scope.data, (values) => values),
        builder: (_, snapshot) {
          if (snapshot.data case var data?) {
            for (var element in data) {
              _arguments.original[element.$1] = element.$2;
            }
          }
          return builder(_arguments);
        });
  }
}

class $ {
  $._all() {
    Wrapper._scopeManager.newScope(_NormalScope());
  }

  /// React on every emitted event
  static $ get all => $._all();

  $._none() {
    Wrapper._scopeManager.newScope(_EmptyScope());
  }

  /// Skip all streams' event, aka not react at all
  static $ get none => $._none();
}

class Argument {
  final Map<Symbol, dynamic> original;

  Argument(this.original);

  dynamic call(Symbol symbol) => original[symbol];
}

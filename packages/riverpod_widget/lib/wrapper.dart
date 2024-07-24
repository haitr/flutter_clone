library riverpod_widget;

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

export 'package:flutter_riverpod/flutter_riverpod.dart';

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

typedef GetStateRef<T> = T Function(WidgetRef ref);

extension BindExt<T> on T {
  T bind<S>(Symbol tag, GetStateRef<T> getter) {
    assert(!Wrapper._scopeManager.isEmpty,
        "cannot bind outside of Widget's constructors. Is [config] missing?");
    Wrapper._scopeManager.addToCurrentScope(tag, _ValueWrapper(this, getter));
    return this;
  }
}

class _ValueWrapper<T> {
  final T value;
  final GetStateRef<T> getter;
  _ValueWrapper(this.value, this.getter);
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

  Map<Symbol, _ValueWrapper<dynamic>> get data {
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
  Map<Symbol, _ValueWrapper<dynamic>> get data => _data;

  @override
  bool get isEmpty => _data.isEmpty;
}

class _EmptyScope implements _Scope {
  @override
  void add(Symbol tag, _ValueWrapper valueWrapper) {}

  @override
  Map<Symbol, _ValueWrapper<dynamic>> get data => {};

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
    if (_scope.isEmpty) return builder(_arguments);
    return Consumer(builder: (_, ref, __) {
      _scope.data.forEach((key, value) => _arguments[key] = value.getter(ref));
      return builder(_arguments);
    });
  }
}

extension ProviderScopeExt on BuildContext {
  ProviderContainer get providerScope => ProviderScope.containerOf(this);
}

class ProviderScopeBuilder extends StatelessWidget {
  @Deprecated(
    'Will be removed in 3.0.0. See https://github.com/rrousselGit/riverpod/issues/3261#issuecomment-1973514033',
  )
  final ProviderContainer? parent;

  final Widget? child;

  final List<ProviderObserver>? observers;

  final List<Override> overrides;

  final Widget Function(BuildContext context, WidgetRef ref, Widget? child) builder;

  const ProviderScopeBuilder({
    super.key,
    @Deprecated(
      'Will be removed in 3.0.0. See https://github.com/rrousselGit/riverpod/issues/3261#issuecomment-1973514033',
    )
    this.parent,
    this.observers,
    this.overrides = const [],
    this.child,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) => ProviderScope(
        key: key,
        observers: observers,
        parent: parent,
        overrides: overrides,
        child: Consumer(builder: builder),
      );
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

  void operator []=(Symbol symbol, dynamic newValue) => original[symbol] = newValue;
}

library rxflutterify;

// ignore: depend_on_referenced_packages
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

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

class Argument {
  final Map<String, dynamic> original;
  final Map<String, dynamic> stream;

  Argument(this.original, {this.stream = const {}});

  dynamic call(String symbol) => original[symbol];
}

class Wrapper extends StatelessWidget {
  final Widget Function(Argument args) builder;
  final Argument _arguments;

  const Wrapper(this._arguments, {super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    final streams = _arguments.stream.entries.fold(
      <Stream<(String, dynamic)>>[],
      (previousValue, element) {
        if (element.value case Stream stream?) {
          return previousValue..add(stream.map((event) => (element.key, event)));
        }
        return previousValue;
      },
    );

    if (streams.isEmpty) {
      return builder(_arguments);
    }

    return StreamBuilder(
        stream: Rx.combineLatest(streams, (values) => values),
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

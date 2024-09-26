library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class UndoHistory<T> extends Wrapper {
  @Goto(_i1.UndoHistory.new)
  UndoHistory({
    _i2.Key? key,
    bool Function(
      T?,
      T,
    )? shouldChangeUndoStack,
    required _i2.ValueNotifier<T> value,
    required void Function(T) onTriggered,
    required _i1.FocusNode focusNode,
    T Function(T)? undoStackModifier,
    _i1.UndoHistoryController? controller,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with shouldChangeUndoStack
    Stream<
            bool Function(
              T?,
              T,
            )?>?
        $shouldChangeUndoStack,
    // Associate with value
    Stream<_i2.ValueNotifier<T>>? $value,
    // Associate with onTriggered
    Stream<void Function(T)>? $onTriggered,
    // Associate with focusNode
    Stream<_i1.FocusNode>? $focusNode,
    // Associate with undoStackModifier
    Stream<T Function(T)?>? $undoStackModifier,
    // Associate with controller
    Stream<_i1.UndoHistoryController?>? $controller,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'shouldChangeUndoStack': shouldChangeUndoStack,
              'value': value,
              'onTriggered': onTriggered,
              'focusNode': focusNode,
              'undoStackModifier': undoStackModifier,
              'controller': controller,
              'child': child,
            },
            stream: {
              'key': $key,
              'shouldChangeUndoStack': $shouldChangeUndoStack,
              'value': $value,
              'onTriggered': $onTriggered,
              'focusNode': $focusNode,
              'undoStackModifier': $undoStackModifier,
              'controller': $controller,
              'child': $child,
            },
          ),
          builder: (args) => _i1.UndoHistory<T>(
            key: args('key'),
            shouldChangeUndoStack: args('shouldChangeUndoStack'),
            value: args('value'),
            onTriggered: args('onTriggered'),
            focusNode: args('focusNode'),
            undoStackModifier: args('undoStackModifier'),
            controller: args('controller'),
            child: args('child'),
          ),
        );
}

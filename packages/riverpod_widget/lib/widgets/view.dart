library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class RawView extends Wrapper {
  @Goto(_i1.RawView.new)
  RawView(
    $ $config, {
    _i2.Key? key,
    required ui.FlutterView view,
    _i3.PipelineOwner? deprecatedDoNotUseWillBeRemovedWithoutNoticePipelineOwner,
    _i3.RenderView? deprecatedDoNotUseWillBeRemovedWithoutNoticeRenderView,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #view: view,
            #deprecatedDoNotUseWillBeRemovedWithoutNoticePipelineOwner: deprecatedDoNotUseWillBeRemovedWithoutNoticePipelineOwner,
            #deprecatedDoNotUseWillBeRemovedWithoutNoticeRenderView: deprecatedDoNotUseWillBeRemovedWithoutNoticeRenderView,
            #child: child,
          }),
          builder: (args) => _i1.RawView(
            key: args(#key),
            view: args(#view),
            deprecatedDoNotUseWillBeRemovedWithoutNoticePipelineOwner: args(#deprecatedDoNotUseWillBeRemovedWithoutNoticePipelineOwner),
            deprecatedDoNotUseWillBeRemovedWithoutNoticeRenderView: args(#deprecatedDoNotUseWillBeRemovedWithoutNoticeRenderView),
            child: args(#child),
          ),
        );
}

final class View extends Wrapper {
  @Goto(_i1.View.new)
  View(
    $ $config, {
    _i2.Key? key,
    required ui.FlutterView view,
    _i3.PipelineOwner? deprecatedDoNotUseWillBeRemovedWithoutNoticePipelineOwner,
    _i3.RenderView? deprecatedDoNotUseWillBeRemovedWithoutNoticeRenderView,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #view: view,
            #deprecatedDoNotUseWillBeRemovedWithoutNoticePipelineOwner: deprecatedDoNotUseWillBeRemovedWithoutNoticePipelineOwner,
            #deprecatedDoNotUseWillBeRemovedWithoutNoticeRenderView: deprecatedDoNotUseWillBeRemovedWithoutNoticeRenderView,
            #child: child,
          }),
          builder: (args) => _i1.View(
            key: args(#key),
            view: args(#view),
            deprecatedDoNotUseWillBeRemovedWithoutNoticePipelineOwner: args(#deprecatedDoNotUseWillBeRemovedWithoutNoticePipelineOwner),
            deprecatedDoNotUseWillBeRemovedWithoutNoticeRenderView: args(#deprecatedDoNotUseWillBeRemovedWithoutNoticeRenderView),
            child: args(#child),
          ),
        );
}

final class ViewCollection extends Wrapper {
  @Goto(_i1.ViewCollection.new)
  ViewCollection(
    $ $config, {
    _i2.Key? key,
    required List<_i1.Widget> views,
  }) : super(
          Argument({
            #key: key,
            #views: views,
          }),
          builder: (args) => _i1.ViewCollection(
            key: args(#key),
            views: args(#views),
          ),
        );
}

final class ViewAnchor extends Wrapper {
  @Goto(_i1.ViewAnchor.new)
  ViewAnchor(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? view,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #view: view,
            #child: child,
          }),
          builder: (args) => _i1.ViewAnchor(
            key: args(#key),
            view: args(#view),
            child: args(#child),
          ),
        );
}

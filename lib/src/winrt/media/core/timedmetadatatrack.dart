// timedmetadatatrack.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../com/iinspectable.dart';
import '../../../combase.dart';
import '../../../exceptions.dart';
import '../../../macros.dart';
import '../../../types.dart';
import '../../../utils.dart';
import '../../../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';
import '../../../winrt_callbacks.dart';
import '../../../winrt_helpers.dart';
import '../../foundation/collections/ivectorview.dart';
import '../../internal/hstring_array.dart';
import '../playback/mediaplaybackitem.dart';
import 'enums.g.dart';
import 'imediacue.dart';
import 'imediatrack.dart';
import 'itimedmetadatatrack.dart';
import 'itimedmetadatatrack2.dart';
import 'itimedmetadatatrackfactory.dart';

/// Represents a timed metadata track. The track contains a list of
/// IMediaCue objects and raises events at the beginning and end of the time
/// window of each cue.
///
/// {@category Class}
/// {@category winrt}
class TimedMetadataTrack extends IInspectable
    implements ITimedMetadataTrack, IMediaTrack, ITimedMetadataTrack2 {
  TimedMetadataTrack.fromRawPointer(super.ptr);

  static const _className = 'Windows.Media.Core.TimedMetadataTrack';

  // ITimedMetadataTrackFactory methods
  static TimedMetadataTrack create(
      String id, String language, TimedMetadataKind kind) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_ITimedMetadataTrackFactory);
    final object =
        ITimedMetadataTrackFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.create(id, language, kind);
    } finally {
      object.release();
    }
  }

  // ITimedMetadataTrack methods
  late final _iTimedMetadataTrack = ITimedMetadataTrack.from(this);

  @override
  int add_CueEntered(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iTimedMetadataTrack.add_CueEntered(handler);

  @override
  void remove_CueEntered(int token) =>
      _iTimedMetadataTrack.remove_CueEntered(token);

  @override
  int add_CueExited(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iTimedMetadataTrack.add_CueExited(handler);

  @override
  void remove_CueExited(int token) =>
      _iTimedMetadataTrack.remove_CueExited(token);

  @override
  int add_TrackFailed(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iTimedMetadataTrack.add_TrackFailed(handler);

  @override
  void remove_TrackFailed(int token) =>
      _iTimedMetadataTrack.remove_TrackFailed(token);

  @override
  List<IMediaCue> get cues => _iTimedMetadataTrack.cues;

  @override
  List<IMediaCue> get activeCues => _iTimedMetadataTrack.activeCues;

  @override
  TimedMetadataKind get timedMetadataKind =>
      _iTimedMetadataTrack.timedMetadataKind;

  @override
  String get dispatchType => _iTimedMetadataTrack.dispatchType;

  @override
  void addCue(IMediaCue? cue) => _iTimedMetadataTrack.addCue(cue);

  @override
  void removeCue(IMediaCue? cue) => _iTimedMetadataTrack.removeCue(cue);

  // IMediaTrack methods
  late final _iMediaTrack = IMediaTrack.from(this);

  @override
  String get id => _iMediaTrack.id;

  @override
  String get language => _iMediaTrack.language;

  @override
  MediaTrackKind get trackKind => _iMediaTrack.trackKind;

  @override
  set label(String value) => _iMediaTrack.label = value;

  @override
  String get label => _iMediaTrack.label;

  // ITimedMetadataTrack2 methods
  late final _iTimedMetadataTrack2 = ITimedMetadataTrack2.from(this);

  @override
  MediaPlaybackItem? get playbackItem => _iTimedMetadataTrack2.playbackItem;

  @override
  String get name => _iTimedMetadataTrack2.name;
}

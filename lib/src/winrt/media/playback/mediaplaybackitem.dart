// mediaplaybackitem.dart

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
import '../../foundation/ireference.dart';
import '../../internal/hstring_array.dart';
import '../core/mediasource.dart';
import 'enums.g.dart';
import 'imediaplaybackitem.dart';
import 'imediaplaybackitem2.dart';
import 'imediaplaybackitem3.dart';
import 'imediaplaybackitemfactory.dart';
import 'imediaplaybackitemfactory2.dart';
import 'imediaplaybackitemstatics.dart';
import 'imediaplaybacksource.dart';
import 'mediaitemdisplayproperties.dart';
import 'mediaplaybackaudiotracklist.dart';
import 'mediaplaybacktimedmetadatatracklist.dart';
import 'mediaplaybackvideotracklist.dart';

/// Represents a media item that can be played back. This class acts as a
/// wrapper around a MediaSource that exposes the audio tracks, video
/// tracks, and timed metadata tracks included in the media source.
///
/// {@category Class}
/// {@category winrt}
class MediaPlaybackItem extends IInspectable
    implements
        IMediaPlaybackItem,
        IMediaPlaybackSource,
        IMediaPlaybackItem2,
        IMediaPlaybackItem3 {
  MediaPlaybackItem.fromRawPointer(super.ptr);

  static const _className = 'Windows.Media.Playback.MediaPlaybackItem';

  // IMediaPlaybackItemFactory methods
  static MediaPlaybackItem create(MediaSource source) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IMediaPlaybackItemFactory);
    final object =
        IMediaPlaybackItemFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.create(source);
    } finally {
      object.release();
    }
  }

  // IMediaPlaybackItemFactory2 methods
  static MediaPlaybackItem createWithStartTime(
      MediaSource source, Duration startTime) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IMediaPlaybackItemFactory2);
    final object =
        IMediaPlaybackItemFactory2.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWithStartTime(source, startTime);
    } finally {
      object.release();
    }
  }

  static MediaPlaybackItem createWithStartTimeAndDurationLimit(
      MediaSource source, Duration startTime, Duration durationLimit) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IMediaPlaybackItemFactory2);
    final object =
        IMediaPlaybackItemFactory2.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWithStartTimeAndDurationLimit(
          source, startTime, durationLimit);
    } finally {
      object.release();
    }
  }

  // IMediaPlaybackItemStatics methods
  static MediaPlaybackItem? findFromMediaSource(MediaSource? source) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IMediaPlaybackItemStatics);
    final object =
        IMediaPlaybackItemStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.findFromMediaSource(source);
    } finally {
      object.release();
    }
  }

  // IMediaPlaybackItem methods
  late final _iMediaPlaybackItem = IMediaPlaybackItem.from(this);

  @override
  int add_AudioTracksChanged(
          Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iMediaPlaybackItem.add_AudioTracksChanged(handler);

  @override
  void remove_AudioTracksChanged(int token) =>
      _iMediaPlaybackItem.remove_AudioTracksChanged(token);

  @override
  int add_VideoTracksChanged(
          Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iMediaPlaybackItem.add_VideoTracksChanged(handler);

  @override
  void remove_VideoTracksChanged(int token) =>
      _iMediaPlaybackItem.remove_VideoTracksChanged(token);

  @override
  int add_TimedMetadataTracksChanged(
          Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iMediaPlaybackItem.add_TimedMetadataTracksChanged(handler);

  @override
  void remove_TimedMetadataTracksChanged(int token) =>
      _iMediaPlaybackItem.remove_TimedMetadataTracksChanged(token);

  @override
  MediaSource? get source => _iMediaPlaybackItem.source;

  @override
  MediaPlaybackAudioTrackList? get audioTracks =>
      _iMediaPlaybackItem.audioTracks;

  @override
  MediaPlaybackVideoTrackList? get videoTracks =>
      _iMediaPlaybackItem.videoTracks;

  @override
  MediaPlaybackTimedMetadataTrackList? get timedMetadataTracks =>
      _iMediaPlaybackItem.timedMetadataTracks;

  // IMediaPlaybackItem2 methods
  late final _iMediaPlaybackItem2 = IMediaPlaybackItem2.from(this);

  @override
  Duration get startTime => _iMediaPlaybackItem2.startTime;

  @override
  Duration? get durationLimit => _iMediaPlaybackItem2.durationLimit;

  @override
  bool get canSkip => _iMediaPlaybackItem2.canSkip;

  @override
  set canSkip(bool value) => _iMediaPlaybackItem2.canSkip = value;

  @override
  MediaItemDisplayProperties? getDisplayProperties() =>
      _iMediaPlaybackItem2.getDisplayProperties();

  @override
  void applyDisplayProperties(MediaItemDisplayProperties? value) =>
      _iMediaPlaybackItem2.applyDisplayProperties(value);

  // IMediaPlaybackItem3 methods
  late final _iMediaPlaybackItem3 = IMediaPlaybackItem3.from(this);

  @override
  bool get isDisabledInPlaybackList =>
      _iMediaPlaybackItem3.isDisabledInPlaybackList;

  @override
  set isDisabledInPlaybackList(bool value) =>
      _iMediaPlaybackItem3.isDisabledInPlaybackList = value;

  @override
  double get totalDownloadProgress =>
      _iMediaPlaybackItem3.totalDownloadProgress;

  @override
  AutoLoadedDisplayPropertyKind get autoLoadedDisplayProperties =>
      _iMediaPlaybackItem3.autoLoadedDisplayProperties;

  @override
  set autoLoadedDisplayProperties(AutoLoadedDisplayPropertyKind value) =>
      _iMediaPlaybackItem3.autoLoadedDisplayProperties = value;
}

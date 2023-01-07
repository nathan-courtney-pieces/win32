// imediaplaybackitem3.dart

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
import '../../internal/ipropertyvalue_helpers.dart';
import '../core/mediasource.dart';
import 'enums.g.dart';
import 'imediaplaybackitem.dart';
import 'imediaplaybackitem2.dart';
import 'imediaplaybacksource.dart';
import 'mediaitemdisplayproperties.dart';
import 'mediaplaybackaudiotracklist.dart';
import 'mediaplaybackitem.dart';
import 'mediaplaybacktimedmetadatatracklist.dart';
import 'mediaplaybackvideotracklist.dart';

/// @nodoc
const IID_IMediaPlaybackItem3 = '{0d328220-b80a-4d09-9ff8-f87094a1c831}';

/// {@category Interface}
/// {@category winrt}
class IMediaPlaybackItem3 extends IInspectable
    implements IMediaPlaybackItem2, IMediaPlaybackItem, IMediaPlaybackSource {
  // vtable begins at 6, is 5 entries long.
  IMediaPlaybackItem3.fromRawPointer(super.ptr);

  factory IMediaPlaybackItem3.from(IInspectable interface) =>
      IMediaPlaybackItem3.fromRawPointer(
          interface.toInterface(IID_IMediaPlaybackItem3));

  bool get isDisabledInPlaybackList {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set isDisabledInPlaybackList(bool value) {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Bool)>>>()
        .value
        .asFunction<int Function(Pointer, bool)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get totalDownloadProgress {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Double>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Double>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  AutoLoadedDisplayPropertyKind get autoLoadedDisplayProperties {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return AutoLoadedDisplayPropertyKind.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  set autoLoadedDisplayProperties(AutoLoadedDisplayPropertyKind value) {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Int32)>>>()
        .value
        .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, value.value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

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
}

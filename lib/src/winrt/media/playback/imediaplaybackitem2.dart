// imediaplaybackitem2.dart

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
import 'imediaplaybackitem.dart';
import 'imediaplaybacksource.dart';
import 'mediaitemdisplayproperties.dart';
import 'mediaplaybackaudiotracklist.dart';
import 'mediaplaybackitem.dart';
import 'mediaplaybacktimedmetadatatracklist.dart';
import 'mediaplaybackvideotracklist.dart';

/// @nodoc
const IID_IMediaPlaybackItem2 = '{d859d171-d7ef-4b81-ac1f-f40493cbb091}';

/// {@category Interface}
/// {@category winrt}
class IMediaPlaybackItem2 extends IInspectable
    implements IMediaPlaybackItem, IMediaPlaybackSource {
  // vtable begins at 6, is 7 entries long.
  IMediaPlaybackItem2.fromRawPointer(super.ptr);

  factory IMediaPlaybackItem2.from(IInspectable interface) =>
      IMediaPlaybackItem2.fromRawPointer(
          interface.toInterface(IID_IMediaPlaybackItem2));

  Duration get startTime {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint64>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return Duration(microseconds: retValuePtr.value ~/ 10);
    } finally {
      free(retValuePtr);
    }
  }

  Duration? get durationLimit {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<Duration>.fromRawPointer(retValuePtr,
        referenceIid: '{604d0c4c-91de-5c2a-935f-362f13eaf800}');
    final value = reference.value;
    reference.release();

    return value;
  }

  bool get canSkip {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
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

  set canSkip(bool value) {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Bool)>>>()
        .value
        .asFunction<int Function(Pointer, bool)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  MediaItemDisplayProperties? getDisplayProperties() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return MediaItemDisplayProperties.fromRawPointer(retValuePtr);
  }

  void applyDisplayProperties(MediaItemDisplayProperties? value) {
    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> value)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl,
        value == null ? nullptr : value.ptr.cast<Pointer<COMObject>>().value);

    if (FAILED(hr)) throw WindowsException(hr);
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
}

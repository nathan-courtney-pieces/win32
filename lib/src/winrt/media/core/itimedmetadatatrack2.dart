// itimedmetadatatrack2.dart

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
import 'timedmetadatatrack.dart';

/// @nodoc
const IID_ITimedMetadataTrack2 = '{21b4b648-9f9d-40ba-a8f3-1a92753aef0b}';

/// {@category Interface}
/// {@category winrt}
class ITimedMetadataTrack2 extends IInspectable
    implements ITimedMetadataTrack, IMediaTrack {
  // vtable begins at 6, is 2 entries long.
  ITimedMetadataTrack2.fromRawPointer(super.ptr);

  factory ITimedMetadataTrack2.from(IInspectable interface) =>
      ITimedMetadataTrack2.fromRawPointer(
          interface.toInterface(IID_ITimedMetadataTrack2));

  MediaPlaybackItem? get playbackItem {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
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

    return MediaPlaybackItem.fromRawPointer(retValuePtr);
  }

  String get name {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
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
}

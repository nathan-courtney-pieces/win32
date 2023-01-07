// itimedmetadatatrack.dart

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
import 'enums.g.dart';
import 'imediacue.dart';
import 'imediatrack.dart';
import 'timedmetadatatrack.dart';

/// @nodoc
const IID_ITimedMetadataTrack = '{9e6aed9e-f67a-49a9-b330-cf03b0e9cf07}';

/// {@category Interface}
/// {@category winrt}
class ITimedMetadataTrack extends IInspectable implements IMediaTrack {
  // vtable begins at 6, is 12 entries long.
  ITimedMetadataTrack.fromRawPointer(super.ptr);

  factory ITimedMetadataTrack.from(IInspectable interface) =>
      ITimedMetadataTrack.fromRawPointer(
          interface.toInterface(IID_ITimedMetadataTrack));

  int add_CueEntered(Pointer<NativeFunction<TypedEventHandler>> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          Pointer,
                          Pointer<NativeFunction<TypedEventHandler>> handler,
                          Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  Pointer<NativeFunction<TypedEventHandler>> handler,
                  Pointer<IntPtr>)>()(ptr.ref.lpVtbl, handler, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_CueEntered(int token) {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, IntPtr token)>>>()
        .value
        .asFunction<int Function(Pointer, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int add_CueExited(Pointer<NativeFunction<TypedEventHandler>> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          Pointer,
                          Pointer<NativeFunction<TypedEventHandler>> handler,
                          Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  Pointer<NativeFunction<TypedEventHandler>> handler,
                  Pointer<IntPtr>)>()(ptr.ref.lpVtbl, handler, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_CueExited(int token) {
    final hr = ptr.ref.vtable
        .elementAt(9)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, IntPtr token)>>>()
        .value
        .asFunction<int Function(Pointer, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int add_TrackFailed(Pointer<NativeFunction<TypedEventHandler>> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          Pointer,
                          Pointer<NativeFunction<TypedEventHandler>> handler,
                          Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  Pointer<NativeFunction<TypedEventHandler>> handler,
                  Pointer<IntPtr>)>()(ptr.ref.lpVtbl, handler, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_TrackFailed(int token) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, IntPtr token)>>>()
        .value
        .asFunction<int Function(Pointer, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  List<IMediaCue> get cues {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(12)
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

    final vectorView = IVectorView<IMediaCue>.fromRawPointer(retValuePtr,
        iterableIid: '{737a2098-41bf-5d9f-a1d2-2f171c578b3c}',
        creator: IMediaCue.fromRawPointer);
    final list = vectorView.toList();
    vectorView.release();

    return list;
  }

  List<IMediaCue> get activeCues {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(13)
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

    final vectorView = IVectorView<IMediaCue>.fromRawPointer(retValuePtr,
        iterableIid: '{737a2098-41bf-5d9f-a1d2-2f171c578b3c}',
        creator: IMediaCue.fromRawPointer);
    final list = vectorView.toList();
    vectorView.release();

    return list;
  }

  TimedMetadataKind get timedMetadataKind {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return TimedMetadataKind.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  String get dispatchType {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(15)
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

  void addCue(IMediaCue? cue) {
    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> cue)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject> cue)>()(
        ptr.ref.lpVtbl,
        cue == null ? nullptr : cue.ptr.cast<Pointer<COMObject>>().value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void removeCue(IMediaCue? cue) {
    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> cue)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject> cue)>()(
        ptr.ref.lpVtbl,
        cue == null ? nullptr : cue.ptr.cast<Pointer<COMObject>>().value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

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

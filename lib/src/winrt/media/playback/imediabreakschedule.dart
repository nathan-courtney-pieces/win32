// imediabreakschedule.dart

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
import 'mediaplaybackitem.dart';

/// @nodoc
const IID_IMediaBreakSchedule = '{a19a5813-98b6-41d8-83da-f971d22b7bba}';

/// {@category Interface}
/// {@category winrt}
class IMediaBreakSchedule extends IInspectable {
  // vtable begins at 6, is 10 entries long.
  IMediaBreakSchedule.fromRawPointer(super.ptr);

  factory IMediaBreakSchedule.from(IInspectable interface) =>
      IMediaBreakSchedule.fromRawPointer(
          interface.toInterface(IID_IMediaBreakSchedule));

  int add_ScheduleChanged(Pointer<NativeFunction<TypedEventHandler>> handler) {
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

  void remove_ScheduleChanged(int token) {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, IntPtr token)>>>()
        .value
        .asFunction<int Function(Pointer, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  MediaPlaybackItem? get playbackItem {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(15)
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
}

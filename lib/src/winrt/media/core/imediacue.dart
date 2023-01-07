// imediacue.dart

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
import '../../internal/hstring_array.dart';

/// @nodoc
const IID_IMediaCue = '{c7d15e5d-59dc-431f-a0ee-27744323b36d}';

/// Defines the interface implemented by all media cues.
///
/// {@category Interface}
/// {@category winrt}
class IMediaCue extends IInspectable {
  // vtable begins at 6, is 6 entries long.
  IMediaCue.fromRawPointer(super.ptr);

  factory IMediaCue.from(IInspectable interface) =>
      IMediaCue.fromRawPointer(interface.toInterface(IID_IMediaCue));

  set startTime(Duration value) {
    final duration = value.inMicroseconds * 10;

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint64)>>>()
        .value
        .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, duration);

    if (FAILED(hr)) throw WindowsException(hr);
  }

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

  set duration(Duration value) {
    final duration = value.inMicroseconds * 10;

    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint64)>>>()
        .value
        .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, duration);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Duration get duration {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
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

  set id(String value) {
    final hstr = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(10)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, IntPtr)>>>()
          .value
          .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, hstr);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hstr);
    }
  }

  String get id {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(11)
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
}

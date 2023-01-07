// ispeechsynthesizeroptions2.dart

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
const IID_ISpeechSynthesizerOptions2 = '{1cbef60e-119c-4bed-b118-d250c3a25793}';

/// {@category Interface}
/// {@category winrt}
class ISpeechSynthesizerOptions2 extends IInspectable {
  // vtable begins at 6, is 6 entries long.
  ISpeechSynthesizerOptions2.fromRawPointer(super.ptr);

  factory ISpeechSynthesizerOptions2.from(IInspectable interface) =>
      ISpeechSynthesizerOptions2.fromRawPointer(
          interface.toInterface(IID_ISpeechSynthesizerOptions2));

  double get audioVolume {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
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

  set audioVolume(double value) {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Double)>>>()
        .value
        .asFunction<int Function(Pointer, double)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get speakingRate {
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

  set speakingRate(double value) {
    final hr = ptr.ref.vtable
        .elementAt(9)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Double)>>>()
        .value
        .asFunction<int Function(Pointer, double)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get audioPitch {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(10)
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

  set audioPitch(double value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Double)>>>()
        .value
        .asFunction<int Function(Pointer, double)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

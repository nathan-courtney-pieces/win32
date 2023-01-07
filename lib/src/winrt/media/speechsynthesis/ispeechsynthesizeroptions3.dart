// ispeechsynthesizeroptions3.dart

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
import 'enums.g.dart';

/// @nodoc
const IID_ISpeechSynthesizerOptions3 = '{401ed877-902c-4814-a582-a5d0c0769fa8}';

/// {@category Interface}
/// {@category winrt}
class ISpeechSynthesizerOptions3 extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  ISpeechSynthesizerOptions3.fromRawPointer(super.ptr);

  factory ISpeechSynthesizerOptions3.from(IInspectable interface) =>
      ISpeechSynthesizerOptions3.fromRawPointer(
          interface.toInterface(IID_ISpeechSynthesizerOptions3));

  SpeechAppendedSilence get appendedSilence {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return SpeechAppendedSilence.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  set appendedSilence(SpeechAppendedSilence value) {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Int32)>>>()
        .value
        .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, value.value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  SpeechPunctuationSilence get punctuationSilence {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return SpeechPunctuationSilence.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  set punctuationSilence(SpeechPunctuationSilence value) {
    final hr = ptr.ref.vtable
        .elementAt(9)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Int32)>>>()
        .value
        .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, value.value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

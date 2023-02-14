// iappinfo3.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../com/iinspectable.dart';
import '../../combase.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../types.dart';
import '../../utils.dart';
import '../../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';
import '../../winrt_callbacks.dart';
import '../../winrt_helpers.dart';
import '../internal/hstring_array.dart';
import 'enums.g.dart';

/// @nodoc
const IID_IAppInfo3 = '{09a78e46-93a4-46de-9397-0843b57115ea}';

/// {@category Interface}
/// {@category winrt}
class IAppInfo3 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IAppInfo3.fromRawPointer(super.ptr);

  factory IAppInfo3.from(IInspectable interface) =>
      IAppInfo3.fromRawPointer(interface.toInterface(IID_IAppInfo3));

  AppExecutionContext get executionContext {
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

      return AppExecutionContext.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}

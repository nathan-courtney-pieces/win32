// iappinfo4.dart

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

/// @nodoc
const IID_IAppInfo4 = '{2f34bdeb-1609-4554-9f33-12e1e803e0d4}';

/// {@category Interface}
/// {@category winrt}
class IAppInfo4 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IAppInfo4.fromRawPointer(super.ptr);

  factory IAppInfo4.from(IInspectable interface) =>
      IAppInfo4.fromRawPointer(interface.toInterface(IID_IAppInfo4));

  Pointer<IntPtr> get supportedFileExtensions {
    final retValuePtr = calloc<Pointer<IntPtr>>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(Pointer, Pointer<Pointer<IntPtr>>)>>>()
          .value
          .asFunction<
              int Function(Pointer,
                  Pointer<Pointer<IntPtr>>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

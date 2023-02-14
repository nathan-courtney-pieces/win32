// istoragelibrarychangereader2.dart

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
const IID_IStorageLibraryChangeReader2 =
    '{abf4868b-fbcc-4a4f-999e-e7ab7c646dbe}';

/// {@category Interface}
/// {@category winrt}
class IStorageLibraryChangeReader2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IStorageLibraryChangeReader2.fromRawPointer(super.ptr);

  factory IStorageLibraryChangeReader2.from(IInspectable interface) =>
      IStorageLibraryChangeReader2.fromRawPointer(
          interface.toInterface(IID_IStorageLibraryChangeReader2));

  int getLastChangeId() {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint64>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

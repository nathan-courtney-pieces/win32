// istoragefolder3.dart

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
import 'storagelibrarychangetracker.dart';

/// @nodoc
const IID_IStorageFolder3 = '{9f617899-bde1-4124-aeb3-b06ad96f98d4}';

/// {@category Interface}
/// {@category winrt}
class IStorageFolder3 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IStorageFolder3.fromRawPointer(super.ptr);

  factory IStorageFolder3.from(IInspectable interface) =>
      IStorageFolder3.fromRawPointer(
          interface.toInterface(IID_IStorageFolder3));

  StorageLibraryChangeTracker? tryGetChangeTracker() {
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

    return StorageLibraryChangeTracker.fromRawPointer(retValuePtr);
  }
}

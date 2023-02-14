// ipackageupdateavailabilityresult.dart

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
const IID_IPackageUpdateAvailabilityResult =
    '{114e5009-199a-48a1-a079-313c45634a71}';

/// {@category Interface}
/// {@category winrt}
class IPackageUpdateAvailabilityResult extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IPackageUpdateAvailabilityResult.fromRawPointer(super.ptr);

  factory IPackageUpdateAvailabilityResult.from(IInspectable interface) =>
      IPackageUpdateAvailabilityResult.fromRawPointer(
          interface.toInterface(IID_IPackageUpdateAvailabilityResult));

  PackageUpdateAvailability get availability {
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

      return PackageUpdateAvailability.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  int get extendedError {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

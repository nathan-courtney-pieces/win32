// ipackage6.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
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
import '../foundation/iasyncoperation.dart';
import '../internal/async_helpers.dart';
import '../internal/hstring_array.dart';
import 'appinstallerinfo.dart';
import 'packageupdateavailabilityresult.dart';

/// @nodoc
const IID_IPackage6 = '{8b1ad942-12d7-4754-ae4e-638cbc0e3a2e}';

/// {@category Interface}
/// {@category winrt}
class IPackage6 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IPackage6.fromRawPointer(super.ptr);

  factory IPackage6.from(IInspectable interface) =>
      IPackage6.fromRawPointer(interface.toInterface(IID_IPackage6));

  AppInstallerInfo? getAppInstallerInfo() {
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

    return AppInstallerInfo.fromRawPointer(retValuePtr);
  }

  Future<PackageUpdateAvailabilityResult?> checkUpdateAvailabilityAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<PackageUpdateAvailabilityResult?>();

    final hr = ptr.ref.vtable
            .elementAt(7)
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

    final asyncOperation =
        IAsyncOperation<PackageUpdateAvailabilityResult?>.fromRawPointer(
            retValuePtr,
            creator: PackageUpdateAvailabilityResult.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }
}

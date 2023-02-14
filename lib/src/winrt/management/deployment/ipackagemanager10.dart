// ipackagemanager10.dart

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
import '../../foundation/iasyncoperationwithprogress.dart';
import '../../internal/hstring_array.dart';
import 'deploymentresult.dart';
import 'packagealluserprovisioningoptions.dart';
import 'structs.g.dart';

/// @nodoc
const IID_IPackageManager10 = '{a7d7d07e-2e66-4093-aed5-e093ed87b3bb}';

/// {@category Interface}
/// {@category winrt}
class IPackageManager10 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IPackageManager10.fromRawPointer(super.ptr);

  factory IPackageManager10.from(IInspectable interface) =>
      IPackageManager10.fromRawPointer(
          interface.toInterface(IID_IPackageManager10));

  Pointer<COMObject> provisionPackageForAllUsersWithOptionsAsync(
      String mainPackageFamilyName,
      PackageAllUserProvisioningOptions? options) {
    final retValuePtr = calloc<COMObject>();
    final mainPackageFamilyNameHstring =
        convertToHString(mainPackageFamilyName);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr mainPackageFamilyName,
                            Pointer<COMObject> options, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int mainPackageFamilyName,
                    Pointer<COMObject> options, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        mainPackageFamilyNameHstring,
        options == null
            ? nullptr
            : options.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(mainPackageFamilyNameHstring);

    return retValuePtr;
  }
}

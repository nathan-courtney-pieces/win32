// ipackagemanager8.dart

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
import 'structs.g.dart';

/// @nodoc
const IID_IPackageManager8 = '{b8575330-1298-4ee2-80ee-7f659c5d2782}';

/// {@category Interface}
/// {@category winrt}
class IPackageManager8 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IPackageManager8.fromRawPointer(super.ptr);

  factory IPackageManager8.from(IInspectable interface) =>
      IPackageManager8.fromRawPointer(
          interface.toInterface(IID_IPackageManager8));

  Pointer<COMObject> deprovisionPackageForAllUsersAsync(
      String packageFamilyName) {
    final retValuePtr = calloc<COMObject>();
    final packageFamilyNameHstring = convertToHString(packageFamilyName);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr packageFamilyName,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, int packageFamilyName, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, packageFamilyNameHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(packageFamilyNameHstring);

    return retValuePtr;
  }
}

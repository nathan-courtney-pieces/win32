// iappinfostatics.dart

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
import '../system/user.dart';
import 'appinfo.dart';

/// @nodoc
const IID_IAppInfoStatics = '{cf1f782a-e48b-4f0c-9b0b-79c3f8957dd7}';

/// {@category Interface}
/// {@category winrt}
class IAppInfoStatics extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IAppInfoStatics.fromRawPointer(super.ptr);

  factory IAppInfoStatics.from(IInspectable interface) =>
      IAppInfoStatics.fromRawPointer(
          interface.toInterface(IID_IAppInfoStatics));

  AppInfo? get current {
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

    return AppInfo.fromRawPointer(retValuePtr);
  }

  AppInfo? getFromAppUserModelId(String appUserModelId) {
    final retValuePtr = calloc<COMObject>();
    final appUserModelIdHstring = convertToHString(appUserModelId);

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr appUserModelId,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, int appUserModelId, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, appUserModelIdHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(appUserModelIdHstring);

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return AppInfo.fromRawPointer(retValuePtr);
  }

  AppInfo? getFromAppUserModelIdForUser(User? user, String appUserModelId) {
    final retValuePtr = calloc<COMObject>();

    final appUserModelIdHstring = convertToHString(appUserModelId);

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> user,
                            IntPtr appUserModelId, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> user,
                    int appUserModelId, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        user == null ? nullptr : user.ptr.cast<Pointer<COMObject>>().value,
        appUserModelIdHstring,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(appUserModelIdHstring);

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return AppInfo.fromRawPointer(retValuePtr);
  }
}

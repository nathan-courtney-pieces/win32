// ipackagemanagerdebugsettings.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
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
import '../../applicationmodel/enums.g.dart';
import '../../applicationmodel/package.dart';
import '../../foundation/iasyncaction.dart';
import '../../internal/async_helpers.dart';
import '../../internal/hstring_array.dart';

/// @nodoc
const IID_IPackageManagerDebugSettings =
    '{1a611683-a988-4fcf-8f0f-ce175898e8eb}';

/// {@category Interface}
/// {@category winrt}
class IPackageManagerDebugSettings extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IPackageManagerDebugSettings.fromRawPointer(super.ptr);

  factory IPackageManagerDebugSettings.from(IInspectable interface) =>
      IPackageManagerDebugSettings.fromRawPointer(
          interface.toInterface(IID_IPackageManagerDebugSettings));

  Future<void> setContentGroupStateAsync(Package? package,
      String contentGroupName, PackageContentGroupState state) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();

    final contentGroupNameHstring = convertToHString(contentGroupName);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<COMObject> package,
                            IntPtr contentGroupName,
                            Int32 state,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> package,
                    int contentGroupName, int state, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        package == null
            ? nullptr
            : package.ptr.cast<Pointer<COMObject>>().value,
        contentGroupNameHstring,
        state.value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(contentGroupNameHstring);

    final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }

  Future<void> setContentGroupStateWithPercentageAsync(
      Package? package,
      String contentGroupName,
      PackageContentGroupState state,
      double completionPercentage) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();

    final contentGroupNameHstring = convertToHString(contentGroupName);

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<COMObject> package,
                            IntPtr contentGroupName,
                            Int32 state,
                            Double completionPercentage,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    Pointer<COMObject> package,
                    int contentGroupName,
                    int state,
                    double completionPercentage,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        package == null
            ? nullptr
            : package.ptr.cast<Pointer<COMObject>>().value,
        contentGroupNameHstring,
        state.value,
        completionPercentage,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(contentGroupNameHstring);

    final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }
}

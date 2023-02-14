// iautoupdatesettingsoptionsstatics.dart

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
import '../../applicationmodel/appinstallerinfo.dart';
import '../../internal/hstring_array.dart';
import 'autoupdatesettingsoptions.dart';

/// @nodoc
const IID_IAutoUpdateSettingsOptionsStatics =
    '{887b337d-0c05-54d0-bd49-3bb7a2c084cb}';

/// {@category Interface}
/// {@category winrt}
class IAutoUpdateSettingsOptionsStatics extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IAutoUpdateSettingsOptionsStatics.fromRawPointer(super.ptr);

  factory IAutoUpdateSettingsOptionsStatics.from(IInspectable interface) =>
      IAutoUpdateSettingsOptionsStatics.fromRawPointer(
          interface.toInterface(IID_IAutoUpdateSettingsOptionsStatics));

  AutoUpdateSettingsOptions? createFromAppInstallerInfo(
      AppInstallerInfo? appInstallerInfo) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<COMObject> appInstallerInfo,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> appInstallerInfo,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        appInstallerInfo == null
            ? nullptr
            : appInstallerInfo.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return AutoUpdateSettingsOptions.fromRawPointer(retValuePtr);
  }
}

// iinstalledvoicesstatic2.dart

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
import '../../foundation/iasyncoperation.dart';
import '../../internal/async_helpers.dart';
import '../../internal/hstring_array.dart';
import 'voiceinformation.dart';

/// @nodoc
const IID_IInstalledVoicesStatic2 = '{64255f2e-358d-4058-be9a-fd3fcb423530}';

/// {@category Interface}
/// {@category winrt}
class IInstalledVoicesStatic2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IInstalledVoicesStatic2.fromRawPointer(super.ptr);

  factory IInstalledVoicesStatic2.from(IInspectable interface) =>
      IInstalledVoicesStatic2.fromRawPointer(
          interface.toInterface(IID_IInstalledVoicesStatic2));

  Future<bool> trySetDefaultVoiceAsync(VoiceInformation? voice) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<bool>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> voice,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, Pointer<COMObject> voice, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        voice == null ? nullptr : voice.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromRawPointer(retValuePtr);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }
}

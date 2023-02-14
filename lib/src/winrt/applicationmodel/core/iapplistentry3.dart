// iapplistentry3.dart

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
import '../../system/user.dart';

/// @nodoc
const IID_IAppListEntry3 = '{6099f28d-fc32-470a-bc69-4b061a76ef2e}';

/// {@category Interface}
/// {@category winrt}
class IAppListEntry3 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IAppListEntry3.fromRawPointer(super.ptr);

  factory IAppListEntry3.from(IInspectable interface) =>
      IAppListEntry3.fromRawPointer(interface.toInterface(IID_IAppListEntry3));

  Future<bool> launchForUserAsync(User? user) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<bool>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> user,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, Pointer<COMObject> user, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        user == null ? nullptr : user.ptr.cast<Pointer<COMObject>>().value,
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

// istoragefolder2.dart

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
import 'istorageitem.dart';

/// @nodoc
const IID_IStorageFolder2 = '{e827e8b9-08d9-4a8e-a0ac-fe5ed3cbbbd3}';

/// {@category Interface}
/// {@category winrt}
class IStorageFolder2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IStorageFolder2.fromRawPointer(super.ptr);

  factory IStorageFolder2.from(IInspectable interface) =>
      IStorageFolder2.fromRawPointer(
          interface.toInterface(IID_IStorageFolder2));

  Future<IStorageItem?> tryGetItemAsync(String name) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<IStorageItem?>();
    final nameHstring = convertToHString(name);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, IntPtr name, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, int name, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, nameHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(nameHstring);

    final asyncOperation = IAsyncOperation<IStorageItem?>.fromRawPointer(
        retValuePtr,
        creator: IStorageItem.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }
}

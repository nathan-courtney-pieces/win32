// istoragefolderstatics2.dart

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
import '../system/user.dart';
import 'storagefolder.dart';

/// @nodoc
const IID_IStorageFolderStatics2 = '{b4656dc3-71d2-467d-8b29-371f0f62bf6f}';

/// {@category Interface}
/// {@category winrt}
class IStorageFolderStatics2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IStorageFolderStatics2.fromRawPointer(super.ptr);

  factory IStorageFolderStatics2.from(IInspectable interface) =>
      IStorageFolderStatics2.fromRawPointer(
          interface.toInterface(IID_IStorageFolderStatics2));

  Future<StorageFolder?> getFolderFromPathForUserAsync(
      User? user, String path) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFolder?>();

    final pathHstring = convertToHString(path);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> user,
                            IntPtr path, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> user, int path,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        user == null ? nullptr : user.ptr.cast<Pointer<COMObject>>().value,
        pathHstring,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(pathHstring);

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromRawPointer(
        retValuePtr,
        creator: StorageFolder.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }
}

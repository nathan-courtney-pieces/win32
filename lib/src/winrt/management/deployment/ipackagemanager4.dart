// ipackagemanager4.dart

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
import '../../foundation/collections/ivectorview.dart';
import '../../foundation/iasyncoperation.dart';
import '../../internal/async_helpers.dart';
import '../../internal/hstring_array.dart';
import 'packagevolume.dart';

/// @nodoc
const IID_IPackageManager4 = '{3c719963-bab6-46bf-8ff7-da4719230ae6}';

/// {@category Interface}
/// {@category winrt}
class IPackageManager4 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IPackageManager4.fromRawPointer(super.ptr);

  factory IPackageManager4.from(IInspectable interface) =>
      IPackageManager4.fromRawPointer(
          interface.toInterface(IID_IPackageManager4));

  Future<List<PackageVolume>> getPackageVolumesAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<PackageVolume>>();

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

    final asyncOperation =
        IAsyncOperation<IVectorView<PackageVolume>>.fromRawPointer(retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr,
                creator: PackageVolume.fromRawPointer,
                iterableIid: '{a6199162-b163-56a1-9980-db0c3f4e9284}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }
}

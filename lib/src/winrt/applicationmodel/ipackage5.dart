// ipackage5.dart

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
import '../foundation/collections/iiterable.dart';
import '../foundation/collections/ivector.dart';
import '../foundation/iasyncoperation.dart';
import '../internal/async_helpers.dart';
import '../internal/hstring_array.dart';
import 'packagecontentgroup.dart';

/// @nodoc
const IID_IPackage5 = '{0e842dd4-d9ac-45ed-9a1e-74ce056b2635}';

/// {@category Interface}
/// {@category winrt}
class IPackage5 extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IPackage5.fromRawPointer(super.ptr);

  factory IPackage5.from(IInspectable interface) =>
      IPackage5.fromRawPointer(interface.toInterface(IID_IPackage5));

  Future<IVector<PackageContentGroup>> getContentGroupsAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<IVector<PackageContentGroup>>();

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
        IAsyncOperation<IVector<PackageContentGroup>>.fromRawPointer(
            retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVector.fromRawPointer(ptr,
                creator: PackageContentGroup.fromRawPointer,
                iterableIid: '{d7dd1456-4805-5768-a25d-99641b096491}'));
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<PackageContentGroup?> getContentGroupAsync(String name) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<PackageContentGroup?>();
    final nameHstring = convertToHString(name);

    final hr = ptr.ref.vtable
            .elementAt(7)
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

    final asyncOperation = IAsyncOperation<PackageContentGroup?>.fromRawPointer(
        retValuePtr,
        creator: PackageContentGroup.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<IVector<PackageContentGroup>> stageContentGroupsAsync(
      IIterable<String>? names) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<IVector<PackageContentGroup>>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> names,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, Pointer<COMObject> names, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        names == null ? nullptr : names.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVector<PackageContentGroup>>.fromRawPointer(
            retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVector.fromRawPointer(ptr,
                creator: PackageContentGroup.fromRawPointer,
                iterableIid: '{d7dd1456-4805-5768-a25d-99641b096491}'));
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<IVector<PackageContentGroup>> stageContentGroupsWithPriorityAsync(
      IIterable<String>? names, bool moveToHeadOfQueue) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<IVector<PackageContentGroup>>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> names,
                            Bool moveToHeadOfQueue, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> names,
                    bool moveToHeadOfQueue, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        names == null ? nullptr : names.ptr.cast<Pointer<COMObject>>().value,
        moveToHeadOfQueue,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVector<PackageContentGroup>>.fromRawPointer(
            retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVector.fromRawPointer(ptr,
                creator: PackageContentGroup.fromRawPointer,
                iterableIid: '{d7dd1456-4805-5768-a25d-99641b096491}'));
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<bool> setInUseAsync(bool inUse) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<bool>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Bool inUse, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, bool inUse, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, inUse, retValuePtr);

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

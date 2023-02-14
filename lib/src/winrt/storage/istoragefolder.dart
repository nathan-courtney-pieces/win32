// istoragefolder.dart

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
import '../foundation/collections/ivectorview.dart';
import '../foundation/iasyncaction.dart';
import '../foundation/iasyncoperation.dart';
import '../internal/async_helpers.dart';
import '../internal/hstring_array.dart';
import 'enums.g.dart';
import 'fileproperties/basicproperties.dart';
import 'istorageitem.dart';
import 'storagefile.dart';
import 'storagefolder.dart';

/// @nodoc
const IID_IStorageFolder = '{72d1cb78-b3ef-4f75-a80b-6fd9dae2944b}';

/// {@category Interface}
/// {@category winrt}
class IStorageFolder extends IInspectable implements IStorageItem {
  // vtable begins at 6, is 10 entries long.
  IStorageFolder.fromRawPointer(super.ptr);

  factory IStorageFolder.from(IInspectable interface) =>
      IStorageFolder.fromRawPointer(interface.toInterface(IID_IStorageFolder));

  Future<StorageFile?> createFileAsyncOverloadDefaultOptions(
      String desiredName) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFile?>();
    final desiredNameHstring = convertToHString(desiredName);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr desiredName,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int desiredName, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, desiredNameHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(desiredNameHstring);

    final asyncOperation = IAsyncOperation<StorageFile?>.fromRawPointer(
        retValuePtr,
        creator: StorageFile.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFile?> createFileAsync(
      String desiredName, CreationCollisionOption options) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFile?>();
    final desiredNameHstring = convertToHString(desiredName);

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(Pointer, IntPtr desiredName,
                                Int32 options, Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, int desiredName, int options,
                        Pointer<COMObject>)>()(
            ptr.ref.lpVtbl, desiredNameHstring, options.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(desiredNameHstring);

    final asyncOperation = IAsyncOperation<StorageFile?>.fromRawPointer(
        retValuePtr,
        creator: StorageFile.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFolder?> createFolderAsyncOverloadDefaultOptions(
      String desiredName) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFolder?>();
    final desiredNameHstring = convertToHString(desiredName);

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr desiredName,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int desiredName, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, desiredNameHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(desiredNameHstring);

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromRawPointer(
        retValuePtr,
        creator: StorageFolder.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFolder?> createFolderAsync(
      String desiredName, CreationCollisionOption options) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFolder?>();
    final desiredNameHstring = convertToHString(desiredName);

    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(Pointer, IntPtr desiredName,
                                Int32 options, Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, int desiredName, int options,
                        Pointer<COMObject>)>()(
            ptr.ref.lpVtbl, desiredNameHstring, options.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(desiredNameHstring);

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromRawPointer(
        retValuePtr,
        creator: StorageFolder.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFile?> getFileAsync(String name) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFile?>();
    final nameHstring = convertToHString(name);

    final hr = ptr.ref.vtable
            .elementAt(10)
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

    final asyncOperation = IAsyncOperation<StorageFile?>.fromRawPointer(
        retValuePtr,
        creator: StorageFile.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFolder?> getFolderAsync(String name) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFolder?>();
    final nameHstring = convertToHString(name);

    final hr = ptr.ref.vtable
            .elementAt(11)
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

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromRawPointer(
        retValuePtr,
        creator: StorageFolder.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<IStorageItem?> getItemAsync(String name) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<IStorageItem?>();
    final nameHstring = convertToHString(name);

    final hr = ptr.ref.vtable
            .elementAt(12)
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

  Future<List<StorageFile>> getFilesAsyncOverloadDefaultOptionsStartAndCount() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<StorageFile>>();

    final hr = ptr.ref.vtable
            .elementAt(13)
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
        IAsyncOperation<IVectorView<StorageFile>>.fromRawPointer(
            retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr,
                creator: StorageFile.fromRawPointer,
                iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }

  Future<List<StorageFolder>>
      getFoldersAsyncOverloadDefaultOptionsStartAndCount() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<StorageFolder>>();

    final hr = ptr.ref.vtable
            .elementAt(14)
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
        IAsyncOperation<IVectorView<StorageFolder>>.fromRawPointer(retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr,
                creator: StorageFolder.fromRawPointer,
                iterableIid: '{4669befc-ae5c-52b1-8a97-5466ce61e94e}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }

  Future<List<IStorageItem>> getItemsAsyncOverloadDefaultStartAndCount() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<IStorageItem>>();

    final hr = ptr.ref.vtable
            .elementAt(15)
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
        IAsyncOperation<IVectorView<IStorageItem>>.fromRawPointer(retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr,
                creator: IStorageItem.fromRawPointer,
                iterableIid: '{bb8b8418-65d1-544b-b083-6d172f568c73}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }

  // IStorageItem methods
  late final _iStorageItem = IStorageItem.from(this);

  @override
  Future<void> renameAsyncOverloadDefaultOptions(String desiredName) =>
      _iStorageItem.renameAsyncOverloadDefaultOptions(desiredName);

  @override
  Future<void> renameAsync(String desiredName, NameCollisionOption option) =>
      _iStorageItem.renameAsync(desiredName, option);

  @override
  Future<void> deleteAsyncOverloadDefaultOptions() =>
      _iStorageItem.deleteAsyncOverloadDefaultOptions();

  @override
  Future<void> deleteAsync(StorageDeleteOption option) =>
      _iStorageItem.deleteAsync(option);

  @override
  Future<BasicProperties?> getBasicPropertiesAsync() =>
      _iStorageItem.getBasicPropertiesAsync();

  @override
  String get name => _iStorageItem.name;

  @override
  String get path => _iStorageItem.path;

  @override
  FileAttributes get attributes => _iStorageItem.attributes;

  @override
  DateTime get dateCreated => _iStorageItem.dateCreated;

  @override
  bool isOfType(StorageItemTypes type) => _iStorageItem.isOfType(type);
}

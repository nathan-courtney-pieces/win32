// istoragefolderqueryoperations.dart

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
import '../istorageitem.dart';
import '../storagefile.dart';
import '../storagefolder.dart';
import 'enums.g.dart';
import 'queryoptions.dart';
import 'storagefilequeryresult.dart';
import 'storagefolderqueryresult.dart';
import 'storageitemqueryresult.dart';

/// @nodoc
const IID_IStorageFolderQueryOperations =
    '{cb43ccc9-446b-4a4f-be97-757771be5203}';

/// {@category Interface}
/// {@category winrt}
class IStorageFolderQueryOperations extends IInspectable {
  // vtable begins at 6, is 17 entries long.
  IStorageFolderQueryOperations.fromRawPointer(super.ptr);

  factory IStorageFolderQueryOperations.from(IInspectable interface) =>
      IStorageFolderQueryOperations.fromRawPointer(
          interface.toInterface(IID_IStorageFolderQueryOperations));

  Future<IndexedState> getIndexedStateAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<IndexedState>();

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

    final asyncOperation = IAsyncOperation<IndexedState>.fromRawPointer(
        retValuePtr,
        enumCreator: IndexedState.from,
        intType: Int32);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  StorageFileQueryResult? createFileQueryOverloadDefault() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
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

    return StorageFileQueryResult.fromRawPointer(retValuePtr);
  }

  StorageFileQueryResult? createFileQuery(CommonFileQuery query) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Int32 query, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, int query, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, query.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return StorageFileQueryResult.fromRawPointer(retValuePtr);
  }

  StorageFileQueryResult? createFileQueryWithOptions(
      QueryOptions? queryOptions) {
    final retValuePtr = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer,
                                Pointer<COMObject> queryOptions,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, Pointer<COMObject> queryOptions,
                        Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            queryOptions == null
                ? nullptr
                : queryOptions.ptr.cast<Pointer<COMObject>>().value,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return StorageFileQueryResult.fromRawPointer(retValuePtr);
  }

  StorageFolderQueryResult? createFolderQueryOverloadDefault() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
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

    return StorageFolderQueryResult.fromRawPointer(retValuePtr);
  }

  StorageFolderQueryResult? createFolderQuery(CommonFolderQuery query) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Int32 query, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, int query, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, query.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return StorageFolderQueryResult.fromRawPointer(retValuePtr);
  }

  StorageFolderQueryResult? createFolderQueryWithOptions(
      QueryOptions? queryOptions) {
    final retValuePtr = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(12)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer,
                                Pointer<COMObject> queryOptions,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, Pointer<COMObject> queryOptions,
                        Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            queryOptions == null
                ? nullptr
                : queryOptions.ptr.cast<Pointer<COMObject>>().value,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return StorageFolderQueryResult.fromRawPointer(retValuePtr);
  }

  StorageItemQueryResult? createItemQuery() {
    final retValuePtr = calloc<COMObject>();

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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return StorageItemQueryResult.fromRawPointer(retValuePtr);
  }

  StorageItemQueryResult? createItemQueryWithOptions(
      QueryOptions? queryOptions) {
    final retValuePtr = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(14)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer,
                                Pointer<COMObject> queryOptions,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, Pointer<COMObject> queryOptions,
                        Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            queryOptions == null
                ? nullptr
                : queryOptions.ptr.cast<Pointer<COMObject>>().value,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return StorageItemQueryResult.fromRawPointer(retValuePtr);
  }

  Future<List<StorageFile>> getFilesAsync(
      CommonFileQuery query, int startIndex, int maxItemsToRetrieve) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<StorageFile>>();

    final hr =
        ptr.ref.vtable
                .elementAt(15)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer,
                                Int32 query,
                                Uint32 startIndex,
                                Uint32 maxItemsToRetrieve,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, int query, int startIndex,
                        int maxItemsToRetrieve, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            query.value,
            startIndex,
            maxItemsToRetrieve,
            retValuePtr);

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

  Future<List<StorageFile>> getFilesAsyncOverloadDefaultStartAndCount(
      CommonFileQuery query) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<StorageFile>>();

    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Int32 query, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, int query, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, query.value, retValuePtr);

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

  Future<List<StorageFolder>> getFoldersAsync(
      CommonFolderQuery query, int startIndex, int maxItemsToRetrieve) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<StorageFolder>>();

    final hr =
        ptr.ref.vtable
                .elementAt(17)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer,
                                Int32 query,
                                Uint32 startIndex,
                                Uint32 maxItemsToRetrieve,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, int query, int startIndex,
                        int maxItemsToRetrieve, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            query.value,
            startIndex,
            maxItemsToRetrieve,
            retValuePtr);

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

  Future<List<StorageFolder>> getFoldersAsyncOverloadDefaultStartAndCount(
      CommonFolderQuery query) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<StorageFolder>>();

    final hr = ptr.ref.vtable
            .elementAt(18)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Int32 query, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, int query, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, query.value, retValuePtr);

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

  Future<List<IStorageItem>> getItemsAsync(
      int startIndex, int maxItemsToRetrieve) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<IStorageItem>>();

    final hr = ptr.ref.vtable
            .elementAt(19)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32 startIndex,
                            Uint32 maxItemsToRetrieve, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int startIndex, int maxItemsToRetrieve,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, startIndex, maxItemsToRetrieve, retValuePtr);

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

  bool areQueryOptionsSupported(QueryOptions? queryOptions) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr
                  .ref.vtable
                  .elementAt(20)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  Pointer,
                                  Pointer<COMObject> queryOptions,
                                  Pointer<Bool>)>>>()
                  .value
                  .asFunction<
                      int Function(Pointer, Pointer<COMObject> queryOptions,
                          Pointer<Bool>)>()(
              ptr.ref.lpVtbl,
              queryOptions == null
                  ? nullptr
                  : queryOptions.ptr.cast<Pointer<COMObject>>().value,
              retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  bool isCommonFolderQuerySupported(CommonFolderQuery query) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(Pointer, Int32 query, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(Pointer, int query,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, query.value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  bool isCommonFileQuerySupported(CommonFileQuery query) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(Pointer, Int32 query, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(Pointer, int query,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, query.value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

// istorageitemproperties.dart

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
import 'fileproperties/enums.g.dart';
import 'fileproperties/storageitemcontentproperties.dart';
import 'fileproperties/storageitemthumbnail.dart';

/// @nodoc
const IID_IStorageItemProperties = '{86664478-8029-46fe-a789-1c2f3e2ffb5c}';

/// {@category Interface}
/// {@category winrt}
class IStorageItemProperties extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IStorageItemProperties.fromRawPointer(super.ptr);

  factory IStorageItemProperties.from(IInspectable interface) =>
      IStorageItemProperties.fromRawPointer(
          interface.toInterface(IID_IStorageItemProperties));

  Future<StorageItemThumbnail?>
      getThumbnailAsyncOverloadDefaultSizeDefaultOptions(ThumbnailMode mode) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageItemThumbnail?>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Int32 mode, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, int mode, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, mode.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<StorageItemThumbnail?>.fromRawPointer(retValuePtr,
            creator: StorageItemThumbnail.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageItemThumbnail?> getThumbnailAsyncOverloadDefaultOptions(
      ThumbnailMode mode, int requestedSize) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageItemThumbnail?>();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(Pointer, Int32 mode,
                                Uint32 requestedSize, Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, int mode, int requestedSize,
                        Pointer<COMObject>)>()(
            ptr.ref.lpVtbl, mode.value, requestedSize, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<StorageItemThumbnail?>.fromRawPointer(retValuePtr,
            creator: StorageItemThumbnail.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageItemThumbnail?> getThumbnailAsync(
      ThumbnailMode mode, int requestedSize, ThumbnailOptions options) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageItemThumbnail?>();

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer,
                                Int32 mode,
                                Uint32 requestedSize,
                                Uint32 options,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, int mode, int requestedSize,
                        int options, Pointer<COMObject>)>()(ptr.ref.lpVtbl,
            mode.value, requestedSize, options.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<StorageItemThumbnail?>.fromRawPointer(retValuePtr,
            creator: StorageItemThumbnail.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  String get displayName {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String get displayType {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String get folderRelativeId {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  StorageItemContentProperties? get properties {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(12)
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

    return StorageItemContentProperties.fromRawPointer(retValuePtr);
  }
}

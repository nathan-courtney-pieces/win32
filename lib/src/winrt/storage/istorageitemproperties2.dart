// istorageitemproperties2.dart

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
import 'istorageitemproperties.dart';

/// @nodoc
const IID_IStorageItemProperties2 = '{8e86a951-04b9-4bd2-929d-fef3f71621d0}';

/// {@category Interface}
/// {@category winrt}
class IStorageItemProperties2 extends IInspectable
    implements IStorageItemProperties {
  // vtable begins at 6, is 3 entries long.
  IStorageItemProperties2.fromRawPointer(super.ptr);

  factory IStorageItemProperties2.from(IInspectable interface) =>
      IStorageItemProperties2.fromRawPointer(
          interface.toInterface(IID_IStorageItemProperties2));

  Future<StorageItemThumbnail?>
      getScaledImageAsThumbnailAsyncOverloadDefaultSizeDefaultOptions(
          ThumbnailMode mode) {
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

  Future<StorageItemThumbnail?>
      getScaledImageAsThumbnailAsyncOverloadDefaultOptions(
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

  Future<StorageItemThumbnail?> getScaledImageAsThumbnailAsync(
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

  // IStorageItemProperties methods
  late final _iStorageItemProperties = IStorageItemProperties.from(this);

  @override
  Future<StorageItemThumbnail?>
      getThumbnailAsyncOverloadDefaultSizeDefaultOptions(ThumbnailMode mode) =>
          _iStorageItemProperties
              .getThumbnailAsyncOverloadDefaultSizeDefaultOptions(mode);

  @override
  Future<StorageItemThumbnail?> getThumbnailAsyncOverloadDefaultOptions(
          ThumbnailMode mode, int requestedSize) =>
      _iStorageItemProperties.getThumbnailAsyncOverloadDefaultOptions(
          mode, requestedSize);

  @override
  Future<StorageItemThumbnail?> getThumbnailAsync(
          ThumbnailMode mode, int requestedSize, ThumbnailOptions options) =>
      _iStorageItemProperties.getThumbnailAsync(mode, requestedSize, options);

  @override
  String get displayName => _iStorageItemProperties.displayName;

  @override
  String get displayType => _iStorageItemProperties.displayType;

  @override
  String get folderRelativeId => _iStorageItemProperties.folderRelativeId;

  @override
  StorageItemContentProperties? get properties =>
      _iStorageItemProperties.properties;
}

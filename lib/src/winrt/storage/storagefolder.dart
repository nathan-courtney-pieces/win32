// storagefolder.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

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
import '../internal/hstring_array.dart';
import '../system/user.dart';
import 'enums.g.dart';
import 'fileproperties/basicproperties.dart';
import 'fileproperties/enums.g.dart';
import 'fileproperties/storageitemcontentproperties.dart';
import 'fileproperties/storageitemthumbnail.dart';
import 'istoragefolder.dart';
import 'istoragefolder2.dart';
import 'istoragefolder3.dart';
import 'istoragefolderstatics.dart';
import 'istoragefolderstatics2.dart';
import 'istorageitem.dart';
import 'istorageitem2.dart';
import 'istorageitemproperties.dart';
import 'istorageitemproperties2.dart';
import 'istorageitempropertieswithprovider.dart';
import 'search/enums.g.dart';
import 'search/istoragefolderqueryoperations.dart';
import 'search/queryoptions.dart';
import 'search/storagefilequeryresult.dart';
import 'search/storagefolderqueryresult.dart';
import 'search/storageitemqueryresult.dart';
import 'storagefile.dart';
import 'storagelibrarychangetracker.dart';
import 'storageprovider.dart';

/// Manages folders and their contents and provides information about them.
///
/// {@category Class}
/// {@category winrt}
class StorageFolder extends IInspectable
    implements
        IStorageFolder,
        IStorageItem,
        IStorageFolderQueryOperations,
        IStorageItemProperties,
        IStorageItemProperties2,
        IStorageItem2,
        IStorageFolder2,
        IStorageItemPropertiesWithProvider,
        IStorageFolder3 {
  StorageFolder.fromRawPointer(super.ptr);

  static const _className = 'Windows.Storage.StorageFolder';

  // IStorageFolderStatics methods
  static Future<StorageFolder?> getFolderFromPathAsync(String path) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IStorageFolderStatics);
    final object = IStorageFolderStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.getFolderFromPathAsync(path);
    } finally {
      object.release();
    }
  }

  // IStorageFolderStatics2 methods
  static Future<StorageFolder?> getFolderFromPathForUserAsync(
      User? user, String path) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IStorageFolderStatics2);
    final object = IStorageFolderStatics2.fromRawPointer(activationFactoryPtr);

    try {
      return object.getFolderFromPathForUserAsync(user, path);
    } finally {
      object.release();
    }
  }

  // IStorageFolder methods
  late final _iStorageFolder = IStorageFolder.from(this);

  @override
  Future<StorageFile?> createFileAsyncOverloadDefaultOptions(
          String desiredName) =>
      _iStorageFolder.createFileAsyncOverloadDefaultOptions(desiredName);

  @override
  Future<StorageFile?> createFileAsync(
          String desiredName, CreationCollisionOption options) =>
      _iStorageFolder.createFileAsync(desiredName, options);

  @override
  Future<StorageFolder?> createFolderAsyncOverloadDefaultOptions(
          String desiredName) =>
      _iStorageFolder.createFolderAsyncOverloadDefaultOptions(desiredName);

  @override
  Future<StorageFolder?> createFolderAsync(
          String desiredName, CreationCollisionOption options) =>
      _iStorageFolder.createFolderAsync(desiredName, options);

  @override
  Future<StorageFile?> getFileAsync(String name) =>
      _iStorageFolder.getFileAsync(name);

  @override
  Future<StorageFolder?> getFolderAsync(String name) =>
      _iStorageFolder.getFolderAsync(name);

  @override
  Future<IStorageItem?> getItemAsync(String name) =>
      _iStorageFolder.getItemAsync(name);

  @override
  Future<List<StorageFile>>
      getFilesAsyncOverloadDefaultOptionsStartAndCount() =>
          _iStorageFolder.getFilesAsyncOverloadDefaultOptionsStartAndCount();

  @override
  Future<List<StorageFolder>>
      getFoldersAsyncOverloadDefaultOptionsStartAndCount() =>
          _iStorageFolder.getFoldersAsyncOverloadDefaultOptionsStartAndCount();

  @override
  Future<List<IStorageItem>> getItemsAsyncOverloadDefaultStartAndCount() =>
      _iStorageFolder.getItemsAsyncOverloadDefaultStartAndCount();

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

  // IStorageFolderQueryOperations methods
  late final _iStorageFolderQueryOperations =
      IStorageFolderQueryOperations.from(this);

  @override
  Future<IndexedState> getIndexedStateAsync() =>
      _iStorageFolderQueryOperations.getIndexedStateAsync();

  @override
  StorageFileQueryResult? createFileQueryOverloadDefault() =>
      _iStorageFolderQueryOperations.createFileQueryOverloadDefault();

  @override
  StorageFileQueryResult? createFileQuery(CommonFileQuery query) =>
      _iStorageFolderQueryOperations.createFileQuery(query);

  @override
  StorageFileQueryResult? createFileQueryWithOptions(
          QueryOptions? queryOptions) =>
      _iStorageFolderQueryOperations.createFileQueryWithOptions(queryOptions);

  @override
  StorageFolderQueryResult? createFolderQueryOverloadDefault() =>
      _iStorageFolderQueryOperations.createFolderQueryOverloadDefault();

  @override
  StorageFolderQueryResult? createFolderQuery(CommonFolderQuery query) =>
      _iStorageFolderQueryOperations.createFolderQuery(query);

  @override
  StorageFolderQueryResult? createFolderQueryWithOptions(
          QueryOptions? queryOptions) =>
      _iStorageFolderQueryOperations.createFolderQueryWithOptions(queryOptions);

  @override
  StorageItemQueryResult? createItemQuery() =>
      _iStorageFolderQueryOperations.createItemQuery();

  @override
  StorageItemQueryResult? createItemQueryWithOptions(
          QueryOptions? queryOptions) =>
      _iStorageFolderQueryOperations.createItemQueryWithOptions(queryOptions);

  @override
  Future<List<StorageFile>> getFilesAsync(
          CommonFileQuery query, int startIndex, int maxItemsToRetrieve) =>
      _iStorageFolderQueryOperations.getFilesAsync(
          query, startIndex, maxItemsToRetrieve);

  @override
  Future<List<StorageFile>> getFilesAsyncOverloadDefaultStartAndCount(
          CommonFileQuery query) =>
      _iStorageFolderQueryOperations
          .getFilesAsyncOverloadDefaultStartAndCount(query);

  @override
  Future<List<StorageFolder>> getFoldersAsync(
          CommonFolderQuery query, int startIndex, int maxItemsToRetrieve) =>
      _iStorageFolderQueryOperations.getFoldersAsync(
          query, startIndex, maxItemsToRetrieve);

  @override
  Future<List<StorageFolder>> getFoldersAsyncOverloadDefaultStartAndCount(
          CommonFolderQuery query) =>
      _iStorageFolderQueryOperations
          .getFoldersAsyncOverloadDefaultStartAndCount(query);

  @override
  Future<List<IStorageItem>> getItemsAsync(
          int startIndex, int maxItemsToRetrieve) =>
      _iStorageFolderQueryOperations.getItemsAsync(
          startIndex, maxItemsToRetrieve);

  @override
  bool areQueryOptionsSupported(QueryOptions? queryOptions) =>
      _iStorageFolderQueryOperations.areQueryOptionsSupported(queryOptions);

  @override
  bool isCommonFolderQuerySupported(CommonFolderQuery query) =>
      _iStorageFolderQueryOperations.isCommonFolderQuerySupported(query);

  @override
  bool isCommonFileQuerySupported(CommonFileQuery query) =>
      _iStorageFolderQueryOperations.isCommonFileQuerySupported(query);

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

  // IStorageItemProperties2 methods
  late final _iStorageItemProperties2 = IStorageItemProperties2.from(this);

  @override
  Future<StorageItemThumbnail?>
      getScaledImageAsThumbnailAsyncOverloadDefaultSizeDefaultOptions(
              ThumbnailMode mode) =>
          _iStorageItemProperties2
              .getScaledImageAsThumbnailAsyncOverloadDefaultSizeDefaultOptions(
                  mode);

  @override
  Future<StorageItemThumbnail?>
      getScaledImageAsThumbnailAsyncOverloadDefaultOptions(
              ThumbnailMode mode, int requestedSize) =>
          _iStorageItemProperties2
              .getScaledImageAsThumbnailAsyncOverloadDefaultOptions(
                  mode, requestedSize);

  @override
  Future<StorageItemThumbnail?> getScaledImageAsThumbnailAsync(
          ThumbnailMode mode, int requestedSize, ThumbnailOptions options) =>
      _iStorageItemProperties2.getScaledImageAsThumbnailAsync(
          mode, requestedSize, options);

  // IStorageItem2 methods
  late final _iStorageItem2 = IStorageItem2.from(this);

  @override
  Future<StorageFolder?> getParentAsync() => _iStorageItem2.getParentAsync();

  @override
  bool isEqual(IStorageItem? item) => _iStorageItem2.isEqual(item);

  // IStorageFolder2 methods
  late final _iStorageFolder2 = IStorageFolder2.from(this);

  @override
  Future<IStorageItem?> tryGetItemAsync(String name) =>
      _iStorageFolder2.tryGetItemAsync(name);

  // IStorageItemPropertiesWithProvider methods
  late final _iStorageItemPropertiesWithProvider =
      IStorageItemPropertiesWithProvider.from(this);

  @override
  StorageProvider? get provider => _iStorageItemPropertiesWithProvider.provider;

  // IStorageFolder3 methods
  late final _iStorageFolder3 = IStorageFolder3.from(this);

  @override
  StorageLibraryChangeTracker? tryGetChangeTracker() =>
      _iStorageFolder3.tryGetChangeTracker();
}

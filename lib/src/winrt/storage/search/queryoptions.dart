// queryoptions.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

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
import '../../foundation/collections/iiterable.dart';
import '../../foundation/collections/ivector.dart';
import '../../internal/hstring_array.dart';
import '../fileproperties/enums.g.dart';
import 'enums.g.dart';
import 'iqueryoptions.dart';
import 'iqueryoptionsfactory.dart';
import 'iqueryoptionswithproviderfilter.dart';
import 'structs.g.dart';

/// Specifies the parameters of a search query for enumerating the contents
/// of storage folders.
///
/// {@category Class}
/// {@category winrt}
class QueryOptions extends IInspectable
    implements IQueryOptions, IQueryOptionsWithProviderFilter {
  QueryOptions() : super(ActivateClass(_className));
  QueryOptions.fromRawPointer(super.ptr);

  static const _className = 'Windows.Storage.Search.QueryOptions';

  // IQueryOptionsFactory methods
  static QueryOptions createCommonFileQuery(
      CommonFileQuery query, IIterable<String> fileTypeFilter) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IQueryOptionsFactory);
    final object = IQueryOptionsFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createCommonFileQuery(query, fileTypeFilter);
    } finally {
      object.release();
    }
  }

  static QueryOptions createCommonFolderQuery(CommonFolderQuery query) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IQueryOptionsFactory);
    final object = IQueryOptionsFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createCommonFolderQuery(query);
    } finally {
      object.release();
    }
  }

  // IQueryOptions methods
  late final _iQueryOptions = IQueryOptions.from(this);

  @override
  IVector<String> get fileTypeFilter => _iQueryOptions.fileTypeFilter;

  @override
  FolderDepth get folderDepth => _iQueryOptions.folderDepth;

  @override
  set folderDepth(FolderDepth value) => _iQueryOptions.folderDepth = value;

  @override
  String get applicationSearchFilter => _iQueryOptions.applicationSearchFilter;

  @override
  set applicationSearchFilter(String value) =>
      _iQueryOptions.applicationSearchFilter = value;

  @override
  String get userSearchFilter => _iQueryOptions.userSearchFilter;

  @override
  set userSearchFilter(String value) => _iQueryOptions.userSearchFilter = value;

  @override
  String get language => _iQueryOptions.language;

  @override
  set language(String value) => _iQueryOptions.language = value;

  @override
  IndexerOption get indexerOption => _iQueryOptions.indexerOption;

  @override
  set indexerOption(IndexerOption value) =>
      _iQueryOptions.indexerOption = value;

  @override
  IVector<SortEntry> get sortOrder => _iQueryOptions.sortOrder;

  @override
  String get groupPropertyName => _iQueryOptions.groupPropertyName;

  @override
  DateStackOption get dateStackOption => _iQueryOptions.dateStackOption;

  @override
  String saveToString() => _iQueryOptions.saveToString();

  @override
  void loadFromString(String value) => _iQueryOptions.loadFromString(value);

  @override
  void setThumbnailPrefetch(
          ThumbnailMode mode, int requestedSize, ThumbnailOptions options) =>
      _iQueryOptions.setThumbnailPrefetch(mode, requestedSize, options);

  @override
  void setPropertyPrefetch(PropertyPrefetchOptions options,
          IIterable<String>? propertiesToRetrieve) =>
      _iQueryOptions.setPropertyPrefetch(options, propertiesToRetrieve);

  // IQueryOptionsWithProviderFilter methods
  late final _iQueryOptionsWithProviderFilter =
      IQueryOptionsWithProviderFilter.from(this);

  @override
  IVector<String> get storageProviderIdFilter =>
      _iQueryOptionsWithProviderFilter.storageProviderIdFilter;
}

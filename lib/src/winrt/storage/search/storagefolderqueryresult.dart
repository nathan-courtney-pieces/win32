// storagefolderqueryresult.dart

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
import '../../foundation/collections/ivectorview.dart';
import '../../foundation/iasyncoperation.dart';
import '../../internal/hstring_array.dart';
import '../storagefolder.dart';
import 'istoragefolderqueryresult.dart';
import 'istoragequeryresultbase.dart';
import 'queryoptions.dart';

/// Provides access to the results of a query that lists the folder (or file
/// groups) in the folder being queried (which is represented by a
/// StorageFolder). You can use a StorageFolderQueryResult to enumerate
/// folders or file groups in that folder.
///
/// {@category Class}
/// {@category winrt}
class StorageFolderQueryResult extends IInspectable
    implements IStorageFolderQueryResult, IStorageQueryResultBase {
  StorageFolderQueryResult.fromRawPointer(super.ptr);

  // IStorageFolderQueryResult methods
  late final _iStorageFolderQueryResult = IStorageFolderQueryResult.from(this);

  @override
  Future<List<StorageFolder>> getFoldersAsync(
          int startIndex, int maxNumberOfItems) =>
      _iStorageFolderQueryResult.getFoldersAsync(startIndex, maxNumberOfItems);

  @override
  Future<List<StorageFolder>> getFoldersAsyncDefaultStartAndCount() =>
      _iStorageFolderQueryResult.getFoldersAsyncDefaultStartAndCount();

  // IStorageQueryResultBase methods
  late final _iStorageQueryResultBase = IStorageQueryResultBase.from(this);

  @override
  Future<int> getItemCountAsync() =>
      _iStorageQueryResultBase.getItemCountAsync();

  @override
  StorageFolder? get folder => _iStorageQueryResultBase.folder;

  @override
  int add_ContentsChanged(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iStorageQueryResultBase.add_ContentsChanged(handler);

  @override
  void remove_ContentsChanged(int eventCookie) =>
      _iStorageQueryResultBase.remove_ContentsChanged(eventCookie);

  @override
  int add_OptionsChanged(
          Pointer<NativeFunction<TypedEventHandler>> changedHandler) =>
      _iStorageQueryResultBase.add_OptionsChanged(changedHandler);

  @override
  void remove_OptionsChanged(int eventCookie) =>
      _iStorageQueryResultBase.remove_OptionsChanged(eventCookie);

  @override
  Future<int> findStartIndexAsync(Pointer<COMObject> value) =>
      _iStorageQueryResultBase.findStartIndexAsync(value);

  @override
  QueryOptions? getCurrentQueryOptions() =>
      _iStorageQueryResultBase.getCurrentQueryOptions();

  @override
  void applyNewQueryOptions(QueryOptions? newQueryOptions) =>
      _iStorageQueryResultBase.applyNewQueryOptions(newQueryOptions);
}

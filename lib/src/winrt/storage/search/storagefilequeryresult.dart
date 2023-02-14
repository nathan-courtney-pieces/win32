// storagefilequeryresult.dart

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
import '../../data/text/structs.g.dart';
import '../../foundation/collections/imap.dart';
import '../../foundation/collections/ivectorview.dart';
import '../../foundation/iasyncoperation.dart';
import '../../internal/hstring_array.dart';
import '../storagefile.dart';
import '../storagefolder.dart';
import 'istoragefilequeryresult.dart';
import 'istoragefilequeryresult2.dart';
import 'istoragequeryresultbase.dart';
import 'queryoptions.dart';

/// Provides access to the results of a query of the files in the location
/// that is represented by a StorageFolder object. You can use
/// StorageFileQueryResult to enumerate the files in that StorageFolder
/// location.
///
/// {@category Class}
/// {@category winrt}
class StorageFileQueryResult extends IInspectable
    implements
        IStorageFileQueryResult,
        IStorageQueryResultBase,
        IStorageFileQueryResult2 {
  StorageFileQueryResult.fromRawPointer(super.ptr);

  // IStorageFileQueryResult methods
  late final _iStorageFileQueryResult = IStorageFileQueryResult.from(this);

  @override
  Future<List<StorageFile>> getFilesAsync(
          int startIndex, int maxNumberOfItems) =>
      _iStorageFileQueryResult.getFilesAsync(startIndex, maxNumberOfItems);

  @override
  Future<List<StorageFile>> getFilesAsyncDefaultStartAndCount() =>
      _iStorageFileQueryResult.getFilesAsyncDefaultStartAndCount();

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

  // IStorageFileQueryResult2 methods
  late final _iStorageFileQueryResult2 = IStorageFileQueryResult2.from(this);

  @override
  IMap<String, IVectorView<TextSegment>?> getMatchingPropertiesWithRanges(
          StorageFile? file) =>
      _iStorageFileQueryResult2.getMatchingPropertiesWithRanges(file);
}

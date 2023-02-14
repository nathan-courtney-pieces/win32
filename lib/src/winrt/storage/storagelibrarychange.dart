// storagelibrarychange.dart

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
import '../foundation/iasyncoperation.dart';
import '../internal/hstring_array.dart';
import 'enums.g.dart';
import 'istorageitem.dart';
import 'istoragelibrarychange.dart';

/// Represents a change to an item in a storage library such as the
/// documents, music, or video library.
///
/// {@category Class}
/// {@category winrt}
class StorageLibraryChange extends IInspectable
    implements IStorageLibraryChange {
  StorageLibraryChange.fromRawPointer(super.ptr);

  // IStorageLibraryChange methods
  late final _iStorageLibraryChange = IStorageLibraryChange.from(this);

  @override
  StorageLibraryChangeType get changeType => _iStorageLibraryChange.changeType;

  @override
  String get path => _iStorageLibraryChange.path;

  @override
  String get previousPath => _iStorageLibraryChange.previousPath;

  @override
  bool isOfType(StorageItemTypes type) => _iStorageLibraryChange.isOfType(type);

  @override
  Future<IStorageItem?> getStorageItemAsync() =>
      _iStorageLibraryChange.getStorageItemAsync();
}

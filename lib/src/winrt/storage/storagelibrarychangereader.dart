// storagelibrarychangereader.dart

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
import 'istoragelibrarychangereader.dart';
import 'istoragelibrarychangereader2.dart';
import 'storagelibrarychange.dart';

/// Enables the calling app to read through the changes to items in a
/// storage library.
///
/// {@category Class}
/// {@category winrt}
class StorageLibraryChangeReader extends IInspectable
    implements IStorageLibraryChangeReader, IStorageLibraryChangeReader2 {
  StorageLibraryChangeReader.fromRawPointer(super.ptr);

  // IStorageLibraryChangeReader methods
  late final _iStorageLibraryChangeReader =
      IStorageLibraryChangeReader.from(this);

  @override
  Future<List<StorageLibraryChange>> readBatchAsync() =>
      _iStorageLibraryChangeReader.readBatchAsync();

  @override
  Future<void> acceptChangesAsync() =>
      _iStorageLibraryChangeReader.acceptChangesAsync();

  // IStorageLibraryChangeReader2 methods
  late final _iStorageLibraryChangeReader2 =
      IStorageLibraryChangeReader2.from(this);

  @override
  int getLastChangeId() => _iStorageLibraryChangeReader2.getLastChangeId();
}

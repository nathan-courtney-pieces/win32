// storagelibrarychangetracker.dart

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
import '../internal/hstring_array.dart';
import 'istoragelibrarychangetracker.dart';
import 'istoragelibrarychangetracker2.dart';
import 'storagelibrarychangereader.dart';
import 'storagelibrarychangetrackeroptions.dart';

/// Provides APIs that you can use to manage change tracking for any library
/// (such as documents, music, or videos) or folder.
///
/// {@category Class}
/// {@category winrt}
class StorageLibraryChangeTracker extends IInspectable
    implements IStorageLibraryChangeTracker, IStorageLibraryChangeTracker2 {
  StorageLibraryChangeTracker.fromRawPointer(super.ptr);

  // IStorageLibraryChangeTracker methods
  late final _iStorageLibraryChangeTracker =
      IStorageLibraryChangeTracker.from(this);

  @override
  StorageLibraryChangeReader? getChangeReader() =>
      _iStorageLibraryChangeTracker.getChangeReader();

  @override
  void enable() => _iStorageLibraryChangeTracker.enable();

  @override
  void reset() => _iStorageLibraryChangeTracker.reset();

  // IStorageLibraryChangeTracker2 methods
  late final _iStorageLibraryChangeTracker2 =
      IStorageLibraryChangeTracker2.from(this);

  @override
  void enableWithOptions(StorageLibraryChangeTrackerOptions? options) =>
      _iStorageLibraryChangeTracker2.enableWithOptions(options);

  @override
  void disable() => _iStorageLibraryChangeTracker2.disable();
}

// storagelibrarychangetrackeroptions.dart

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
import 'istoragelibrarychangetrackeroptions.dart';

/// Allows callers to call EnableWithOptions on the change tracker to choose
/// to track all changes including last change id, or just the last change
/// id.
///
/// {@category Class}
/// {@category winrt}
class StorageLibraryChangeTrackerOptions extends IInspectable
    implements IStorageLibraryChangeTrackerOptions {
  StorageLibraryChangeTrackerOptions() : super(ActivateClass(_className));
  StorageLibraryChangeTrackerOptions.fromRawPointer(super.ptr);

  static const _className =
      'Windows.Storage.StorageLibraryChangeTrackerOptions';

  // IStorageLibraryChangeTrackerOptions methods
  late final _iStorageLibraryChangeTrackerOptions =
      IStorageLibraryChangeTrackerOptions.from(this);

  @override
  bool get trackChangeDetails =>
      _iStorageLibraryChangeTrackerOptions.trackChangeDetails;

  @override
  set trackChangeDetails(bool value) =>
      _iStorageLibraryChangeTrackerOptions.trackChangeDetails = value;
}

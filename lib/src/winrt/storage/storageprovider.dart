// storageprovider.dart

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
import 'istorageprovider.dart';
import 'istorageprovider2.dart';

/// Contains info about the service that stores files and folders. Files and
/// folders may be stored either by the local file system or by a remote
/// service like Microsoft OneDrive.
///
/// {@category Class}
/// {@category winrt}
class StorageProvider extends IInspectable
    implements IStorageProvider, IStorageProvider2 {
  StorageProvider.fromRawPointer(super.ptr);

  // IStorageProvider methods
  late final _iStorageProvider = IStorageProvider.from(this);

  @override
  String get id => _iStorageProvider.id;

  @override
  String get displayName => _iStorageProvider.displayName;

  // IStorageProvider2 methods
  late final _iStorageProvider2 = IStorageProvider2.from(this);

  @override
  Future<bool> isPropertySupportedForPartialFileAsync(
          String propertyCanonicalName) =>
      _iStorageProvider2
          .isPropertySupportedForPartialFileAsync(propertyCanonicalName);
}

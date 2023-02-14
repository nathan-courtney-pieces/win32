// packageid.dart

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
import '../system/enums.g.dart';
import 'ipackageid.dart';
import 'ipackageidwithmetadata.dart';
import 'structs.g.dart';

/// Provides package identification info, such as name, version, and
/// publisher.
///
/// {@category Class}
/// {@category winrt}
class PackageId extends IInspectable
    implements IPackageId, IPackageIdWithMetadata {
  PackageId.fromRawPointer(super.ptr);

  // IPackageId methods
  late final _iPackageId = IPackageId.from(this);

  @override
  String get name => _iPackageId.name;

  @override
  PackageVersion get version => _iPackageId.version;

  @override
  ProcessorArchitecture get architecture => _iPackageId.architecture;

  @override
  String get resourceId => _iPackageId.resourceId;

  @override
  String get publisher => _iPackageId.publisher;

  @override
  String get publisherId => _iPackageId.publisherId;

  @override
  String get fullName => _iPackageId.fullName;

  @override
  String get familyName => _iPackageId.familyName;

  // IPackageIdWithMetadata methods
  late final _iPackageIdWithMetadata = IPackageIdWithMetadata.from(this);

  @override
  String get productId => _iPackageIdWithMetadata.productId;

  @override
  String get author => _iPackageIdWithMetadata.author;
}

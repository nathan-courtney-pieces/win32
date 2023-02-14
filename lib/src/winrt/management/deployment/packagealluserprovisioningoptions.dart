// packagealluserprovisioningoptions.dart

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
import '../../foundation/collections/ivector.dart';
import '../../internal/hstring_array.dart';
import 'ipackagealluserprovisioningoptions.dart';

/// Provides options for calls to ProvisionPackageForAllUsersAsync,
/// including specifying optional packages to install.
///
/// {@category Class}
/// {@category winrt}
class PackageAllUserProvisioningOptions extends IInspectable
    implements IPackageAllUserProvisioningOptions {
  PackageAllUserProvisioningOptions() : super(ActivateClass(_className));
  PackageAllUserProvisioningOptions.fromRawPointer(super.ptr);

  static const _className =
      'Windows.Management.Deployment.PackageAllUserProvisioningOptions';

  // IPackageAllUserProvisioningOptions methods
  late final _iPackageAllUserProvisioningOptions =
      IPackageAllUserProvisioningOptions.from(this);

  @override
  IVector<String> get optionalPackageFamilyNames =>
      _iPackageAllUserProvisioningOptions.optionalPackageFamilyNames;

  @override
  IVector<String> get projectionOrderPackageFamilyNames =>
      _iPackageAllUserProvisioningOptions.projectionOrderPackageFamilyNames;
}

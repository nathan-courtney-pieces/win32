// packagevolume.dart

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
import '../../applicationmodel/package.dart';
import '../../foundation/collections/ivector.dart';
import '../../foundation/iasyncoperation.dart';
import '../../internal/hstring_array.dart';
import 'enums.g.dart';
import 'ipackagevolume.dart';
import 'ipackagevolume2.dart';

/// Represents a Package storage volume.
///
/// {@category Class}
/// {@category winrt}
class PackageVolume extends IInspectable
    implements IPackageVolume, IPackageVolume2 {
  PackageVolume.fromRawPointer(super.ptr);

  // IPackageVolume methods
  late final _iPackageVolume = IPackageVolume.from(this);

  @override
  bool get isOffline => _iPackageVolume.isOffline;

  @override
  bool get isSystemVolume => _iPackageVolume.isSystemVolume;

  @override
  String get mountPoint => _iPackageVolume.mountPoint;

  @override
  String get name => _iPackageVolume.name;

  @override
  String get packageStorePath => _iPackageVolume.packageStorePath;

  @override
  bool get supportsHardLinks => _iPackageVolume.supportsHardLinks;

  @override
  IVector<Package> findPackages() => _iPackageVolume.findPackages();

  @override
  IVector<Package> findPackagesByNamePublisher(
          String packageName, String packagePublisher) =>
      _iPackageVolume.findPackagesByNamePublisher(
          packageName, packagePublisher);

  @override
  IVector<Package> findPackagesByPackageFamilyName(String packageFamilyName) =>
      _iPackageVolume.findPackagesByPackageFamilyName(packageFamilyName);

  @override
  IVector<Package> findPackagesWithPackageTypes(PackageTypes packageTypes) =>
      _iPackageVolume.findPackagesWithPackageTypes(packageTypes);

  @override
  IVector<Package> findPackagesByNamePublisherWithPackagesTypes(
          PackageTypes packageTypes,
          String packageName,
          String packagePublisher) =>
      _iPackageVolume.findPackagesByNamePublisherWithPackagesTypes(
          packageTypes, packageName, packagePublisher);

  @override
  IVector<Package> findPackagesByPackageFamilyNameWithPackageTypes(
          PackageTypes packageTypes, String packageFamilyName) =>
      _iPackageVolume.findPackagesByPackageFamilyNameWithPackageTypes(
          packageTypes, packageFamilyName);

  @override
  IVector<Package> findPackageByPackageFullName(String packageFullName) =>
      _iPackageVolume.findPackageByPackageFullName(packageFullName);

  @override
  IVector<Package> findPackagesByUserSecurityId(String userSecurityId) =>
      _iPackageVolume.findPackagesByUserSecurityId(userSecurityId);

  @override
  IVector<Package> findPackagesByUserSecurityIdNamePublisher(
          String userSecurityId, String packageName, String packagePublisher) =>
      _iPackageVolume.findPackagesByUserSecurityIdNamePublisher(
          userSecurityId, packageName, packagePublisher);

  @override
  IVector<Package> findPackagesByUserSecurityIdPackageFamilyName(
          String userSecurityId, String packageFamilyName) =>
      _iPackageVolume.findPackagesByUserSecurityIdPackageFamilyName(
          userSecurityId, packageFamilyName);

  @override
  IVector<Package> findPackagesByUserSecurityIdWithPackageTypes(
          String userSecurityId, PackageTypes packageTypes) =>
      _iPackageVolume.findPackagesByUserSecurityIdWithPackageTypes(
          userSecurityId, packageTypes);

  @override
  IVector<Package> findPackagesByUserSecurityIdNamePublisherWithPackageTypes(
          String userSecurityId,
          PackageTypes packageTypes,
          String packageName,
          String packagePublisher) =>
      _iPackageVolume.findPackagesByUserSecurityIdNamePublisherWithPackageTypes(
          userSecurityId, packageTypes, packageName, packagePublisher);

  @override
  IVector<Package>
      findPackagesByUserSecurityIdPackageFamilyNameWithPackagesTypes(
              String userSecurityId,
              PackageTypes packageTypes,
              String packageFamilyName) =>
          _iPackageVolume
              .findPackagesByUserSecurityIdPackageFamilyNameWithPackagesTypes(
                  userSecurityId, packageTypes, packageFamilyName);

  @override
  IVector<Package> findPackageByUserSecurityIdPackageFullName(
          String userSecurityId, String packageFullName) =>
      _iPackageVolume.findPackageByUserSecurityIdPackageFullName(
          userSecurityId, packageFullName);

  // IPackageVolume2 methods
  late final _iPackageVolume2 = IPackageVolume2.from(this);

  @override
  bool get isFullTrustPackageSupported =>
      _iPackageVolume2.isFullTrustPackageSupported;

  @override
  bool get isAppxInstallSupported => _iPackageVolume2.isAppxInstallSupported;

  @override
  Future<int> getAvailableSpaceAsync() =>
      _iPackageVolume2.getAvailableSpaceAsync();
}

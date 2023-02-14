// packagemanager.dart

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
import '../../foundation/collections/iiterable.dart';
import '../../foundation/collections/ivector.dart';
import '../../foundation/collections/ivectorview.dart';
import '../../foundation/iasyncoperation.dart';
import '../../foundation/iasyncoperationwithprogress.dart';
import '../../foundation/uri.dart' as winrt_uri;
import '../../internal/hstring_array.dart';
import 'addpackageoptions.dart';
import 'deploymentresult.dart';
import 'enums.g.dart';
import 'ipackagemanager.dart';
import 'ipackagemanager10.dart';
import 'ipackagemanager2.dart';
import 'ipackagemanager3.dart';
import 'ipackagemanager4.dart';
import 'ipackagemanager5.dart';
import 'ipackagemanager6.dart';
import 'ipackagemanager7.dart';
import 'ipackagemanager8.dart';
import 'ipackagemanager9.dart';
import 'packagealluserprovisioningoptions.dart';
import 'packagemanagerdebugsettings.dart';
import 'packageuserinformation.dart';
import 'packagevolume.dart';
import 'registerpackageoptions.dart';
import 'stagepackageoptions.dart';
import 'structs.g.dart';

/// Manages the software available to a user.
///
/// {@category Class}
/// {@category winrt}
class PackageManager extends IInspectable
    implements
        IPackageManager,
        IPackageManager2,
        IPackageManager3,
        IPackageManager4,
        IPackageManager5,
        IPackageManager6,
        IPackageManager7,
        IPackageManager8,
        IPackageManager9,
        IPackageManager10 {
  PackageManager() : super(ActivateClass(_className));
  PackageManager.fromRawPointer(super.ptr);

  static const _className = 'Windows.Management.Deployment.PackageManager';

  // IPackageManager methods
  late final _iPackageManager = IPackageManager.from(this);

  @override
  Pointer<COMObject> addPackageAsync(
          Uri? packageUri,
          IIterable<Uri>? dependencyPackageUris,
          DeploymentOptions deploymentOptions) =>
      _iPackageManager.addPackageAsync(
          packageUri, dependencyPackageUris, deploymentOptions);

  @override
  Pointer<COMObject> updatePackageAsync(
          Uri? packageUri,
          IIterable<Uri>? dependencyPackageUris,
          DeploymentOptions deploymentOptions) =>
      _iPackageManager.updatePackageAsync(
          packageUri, dependencyPackageUris, deploymentOptions);

  @override
  Pointer<COMObject> removePackageAsync(String packageFullName) =>
      _iPackageManager.removePackageAsync(packageFullName);

  @override
  Pointer<COMObject> stagePackageAsync(
          Uri? packageUri, IIterable<Uri>? dependencyPackageUris) =>
      _iPackageManager.stagePackageAsync(packageUri, dependencyPackageUris);

  @override
  Pointer<COMObject> registerPackageAsync(
          Uri? manifestUri,
          IIterable<Uri>? dependencyPackageUris,
          DeploymentOptions deploymentOptions) =>
      _iPackageManager.registerPackageAsync(
          manifestUri, dependencyPackageUris, deploymentOptions);

  @override
  IIterable<Package>? findPackages() => _iPackageManager.findPackages();

  @override
  IIterable<Package>? findPackagesByUserSecurityId(String userSecurityId) =>
      _iPackageManager.findPackagesByUserSecurityId(userSecurityId);

  @override
  IIterable<Package>? findPackagesByNamePublisher(
          String packageName, String packagePublisher) =>
      _iPackageManager.findPackagesByNamePublisher(
          packageName, packagePublisher);

  @override
  IIterable<Package>? findPackagesByUserSecurityIdNamePublisher(
          String userSecurityId, String packageName, String packagePublisher) =>
      _iPackageManager.findPackagesByUserSecurityIdNamePublisher(
          userSecurityId, packageName, packagePublisher);

  @override
  IIterable<PackageUserInformation>? findUsers(String packageFullName) =>
      _iPackageManager.findUsers(packageFullName);

  @override
  void setPackageState(String packageFullName, PackageState packageState) =>
      _iPackageManager.setPackageState(packageFullName, packageState);

  @override
  Package? findPackageByPackageFullName(String packageFullName) =>
      _iPackageManager.findPackageByPackageFullName(packageFullName);

  @override
  Pointer<COMObject> cleanupPackageForUserAsync(
          String packageName, String userSecurityId) =>
      _iPackageManager.cleanupPackageForUserAsync(packageName, userSecurityId);

  @override
  IIterable<Package>? findPackagesByPackageFamilyName(
          String packageFamilyName) =>
      _iPackageManager.findPackagesByPackageFamilyName(packageFamilyName);

  @override
  IIterable<Package>? findPackagesByUserSecurityIdPackageFamilyName(
          String userSecurityId, String packageFamilyName) =>
      _iPackageManager.findPackagesByUserSecurityIdPackageFamilyName(
          userSecurityId, packageFamilyName);

  @override
  Package? findPackageByUserSecurityIdPackageFullName(
          String userSecurityId, String packageFullName) =>
      _iPackageManager.findPackageByUserSecurityIdPackageFullName(
          userSecurityId, packageFullName);

  // IPackageManager2 methods
  late final _iPackageManager2 = IPackageManager2.from(this);

  @override
  Pointer<COMObject> removePackageWithOptionsAsync(
          String packageFullName, RemovalOptions removalOptions) =>
      _iPackageManager2.removePackageWithOptionsAsync(
          packageFullName, removalOptions);

  @override
  Pointer<COMObject> stagePackageWithOptionsAsync(
          Uri? packageUri,
          IIterable<Uri>? dependencyPackageUris,
          DeploymentOptions deploymentOptions) =>
      _iPackageManager2.stagePackageWithOptionsAsync(
          packageUri, dependencyPackageUris, deploymentOptions);

  @override
  Pointer<COMObject> registerPackageByFullNameAsync(
          String mainPackageFullName,
          IIterable<String>? dependencyPackageFullNames,
          DeploymentOptions deploymentOptions) =>
      _iPackageManager2.registerPackageByFullNameAsync(
          mainPackageFullName, dependencyPackageFullNames, deploymentOptions);

  @override
  IIterable<Package>? findPackagesWithPackageTypes(PackageTypes packageTypes) =>
      _iPackageManager2.findPackagesWithPackageTypes(packageTypes);

  @override
  IIterable<Package>? findPackagesByUserSecurityIdWithPackageTypes(
          String userSecurityId, PackageTypes packageTypes) =>
      _iPackageManager2.findPackagesByUserSecurityIdWithPackageTypes(
          userSecurityId, packageTypes);

  @override
  IIterable<Package>? findPackagesByNamePublisherWithPackageTypes(
          String packageName,
          String packagePublisher,
          PackageTypes packageTypes) =>
      _iPackageManager2.findPackagesByNamePublisherWithPackageTypes(
          packageName, packagePublisher, packageTypes);

  @override
  IIterable<Package>? findPackagesByUserSecurityIdNamePublisherWithPackageTypes(
          String userSecurityId,
          String packageName,
          String packagePublisher,
          PackageTypes packageTypes) =>
      _iPackageManager2
          .findPackagesByUserSecurityIdNamePublisherWithPackageTypes(
              userSecurityId, packageName, packagePublisher, packageTypes);

  @override
  IIterable<Package>? findPackagesByPackageFamilyNameWithPackageTypes(
          String packageFamilyName, PackageTypes packageTypes) =>
      _iPackageManager2.findPackagesByPackageFamilyNameWithPackageTypes(
          packageFamilyName, packageTypes);

  @override
  IIterable<Package>?
      findPackagesByUserSecurityIdPackageFamilyNameWithPackageTypes(
              String userSecurityId,
              String packageFamilyName,
              PackageTypes packageTypes) =>
          _iPackageManager2
              .findPackagesByUserSecurityIdPackageFamilyNameWithPackageTypes(
                  userSecurityId, packageFamilyName, packageTypes);

  @override
  Pointer<COMObject> stageUserDataAsync(String packageFullName) =>
      _iPackageManager2.stageUserDataAsync(packageFullName);

  // IPackageManager3 methods
  late final _iPackageManager3 = IPackageManager3.from(this);

  @override
  Future<PackageVolume?> addPackageVolumeAsync(String packageStorePath) =>
      _iPackageManager3.addPackageVolumeAsync(packageStorePath);

  @override
  Pointer<COMObject> addPackageToVolumeAsync(
          Uri? packageUri,
          IIterable<Uri>? dependencyPackageUris,
          DeploymentOptions deploymentOptions,
          PackageVolume? targetVolume) =>
      _iPackageManager3.addPackageToVolumeAsync(
          packageUri, dependencyPackageUris, deploymentOptions, targetVolume);

  @override
  void clearPackageStatus(String packageFullName, PackageStatus status) =>
      _iPackageManager3.clearPackageStatus(packageFullName, status);

  @override
  Pointer<COMObject> registerPackageWithAppDataVolumeAsync(
          Uri? manifestUri,
          IIterable<Uri>? dependencyPackageUris,
          DeploymentOptions deploymentOptions,
          PackageVolume? appDataVolume) =>
      _iPackageManager3.registerPackageWithAppDataVolumeAsync(
          manifestUri, dependencyPackageUris, deploymentOptions, appDataVolume);

  @override
  PackageVolume? findPackageVolumeByName(String volumeName) =>
      _iPackageManager3.findPackageVolumeByName(volumeName);

  @override
  IIterable<PackageVolume>? findPackageVolumes() =>
      _iPackageManager3.findPackageVolumes();

  @override
  PackageVolume? getDefaultPackageVolume() =>
      _iPackageManager3.getDefaultPackageVolume();

  @override
  Pointer<COMObject> movePackageToVolumeAsync(String packageFullName,
          DeploymentOptions deploymentOptions, PackageVolume? targetVolume) =>
      _iPackageManager3.movePackageToVolumeAsync(
          packageFullName, deploymentOptions, targetVolume);

  @override
  Pointer<COMObject> removePackageVolumeAsync(PackageVolume? volume) =>
      _iPackageManager3.removePackageVolumeAsync(volume);

  @override
  void setDefaultPackageVolume(PackageVolume? volume) =>
      _iPackageManager3.setDefaultPackageVolume(volume);

  @override
  void setPackageStatus(String packageFullName, PackageStatus status) =>
      _iPackageManager3.setPackageStatus(packageFullName, status);

  @override
  Pointer<COMObject> setPackageVolumeOfflineAsync(
          PackageVolume? packageVolume) =>
      _iPackageManager3.setPackageVolumeOfflineAsync(packageVolume);

  @override
  Pointer<COMObject> setPackageVolumeOnlineAsync(
          PackageVolume? packageVolume) =>
      _iPackageManager3.setPackageVolumeOnlineAsync(packageVolume);

  @override
  Pointer<COMObject> stagePackageToVolumeAsync(
          Uri? packageUri,
          IIterable<Uri>? dependencyPackageUris,
          DeploymentOptions deploymentOptions,
          PackageVolume? targetVolume) =>
      _iPackageManager3.stagePackageToVolumeAsync(
          packageUri, dependencyPackageUris, deploymentOptions, targetVolume);

  @override
  Pointer<COMObject> stageUserDataWithOptionsAsync(
          String packageFullName, DeploymentOptions deploymentOptions) =>
      _iPackageManager3.stageUserDataWithOptionsAsync(
          packageFullName, deploymentOptions);

  // IPackageManager4 methods
  late final _iPackageManager4 = IPackageManager4.from(this);

  @override
  Future<List<PackageVolume>> getPackageVolumesAsync() =>
      _iPackageManager4.getPackageVolumesAsync();

  // IPackageManager5 methods
  late final _iPackageManager5 = IPackageManager5.from(this);

  @override
  Pointer<COMObject> addPackageToVolumeAndOptionalPackagesAsync(
          Uri? packageUri,
          IIterable<Uri>? dependencyPackageUris,
          DeploymentOptions deploymentOptions,
          PackageVolume? targetVolume,
          IIterable<String>? optionalPackageFamilyNames,
          IIterable<Uri>? externalPackageUris) =>
      _iPackageManager5.addPackageToVolumeAndOptionalPackagesAsync(
          packageUri,
          dependencyPackageUris,
          deploymentOptions,
          targetVolume,
          optionalPackageFamilyNames,
          externalPackageUris);

  @override
  Pointer<COMObject> stagePackageToVolumeAndOptionalPackagesAsync(
          Uri? packageUri,
          IIterable<Uri>? dependencyPackageUris,
          DeploymentOptions deploymentOptions,
          PackageVolume? targetVolume,
          IIterable<String>? optionalPackageFamilyNames,
          IIterable<Uri>? externalPackageUris) =>
      _iPackageManager5.stagePackageToVolumeAndOptionalPackagesAsync(
          packageUri,
          dependencyPackageUris,
          deploymentOptions,
          targetVolume,
          optionalPackageFamilyNames,
          externalPackageUris);

  @override
  Pointer<COMObject> registerPackageByFamilyNameAndOptionalPackagesAsync(
          String mainPackageFamilyName,
          IIterable<String>? dependencyPackageFamilyNames,
          DeploymentOptions deploymentOptions,
          PackageVolume? appDataVolume,
          IIterable<String>? optionalPackageFamilyNames) =>
      _iPackageManager5.registerPackageByFamilyNameAndOptionalPackagesAsync(
          mainPackageFamilyName,
          dependencyPackageFamilyNames,
          deploymentOptions,
          appDataVolume,
          optionalPackageFamilyNames);

  @override
  PackageManagerDebugSettings? get debugSettings =>
      _iPackageManager5.debugSettings;

  // IPackageManager6 methods
  late final _iPackageManager6 = IPackageManager6.from(this);

  @override
  Pointer<COMObject> provisionPackageForAllUsersAsync(
          String packageFamilyName) =>
      _iPackageManager6.provisionPackageForAllUsersAsync(packageFamilyName);

  @override
  Pointer<COMObject> addPackageByAppInstallerFileAsync(
          Uri? appInstallerFileUri,
          AddPackageByAppInstallerOptions options,
          PackageVolume? targetVolume) =>
      _iPackageManager6.addPackageByAppInstallerFileAsync(
          appInstallerFileUri, options, targetVolume);

  @override
  Pointer<COMObject> requestAddPackageByAppInstallerFileAsync(
          Uri? appInstallerFileUri,
          AddPackageByAppInstallerOptions options,
          PackageVolume? targetVolume) =>
      _iPackageManager6.requestAddPackageByAppInstallerFileAsync(
          appInstallerFileUri, options, targetVolume);

  @override
  Pointer<COMObject> addPackageToVolumeAndRelatedSetAsync(
          Uri? packageUri,
          IIterable<Uri>? dependencyPackageUris,
          DeploymentOptions options,
          PackageVolume? targetVolume,
          IIterable<String>? optionalPackageFamilyNames,
          IIterable<Uri>? packageUrisToInstall,
          IIterable<Uri>? relatedPackageUris) =>
      _iPackageManager6.addPackageToVolumeAndRelatedSetAsync(
          packageUri,
          dependencyPackageUris,
          options,
          targetVolume,
          optionalPackageFamilyNames,
          packageUrisToInstall,
          relatedPackageUris);

  @override
  Pointer<COMObject> stagePackageToVolumeAndRelatedSetAsync(
          Uri? packageUri,
          IIterable<Uri>? dependencyPackageUris,
          DeploymentOptions options,
          PackageVolume? targetVolume,
          IIterable<String>? optionalPackageFamilyNames,
          IIterable<Uri>? packageUrisToInstall,
          IIterable<Uri>? relatedPackageUris) =>
      _iPackageManager6.stagePackageToVolumeAndRelatedSetAsync(
          packageUri,
          dependencyPackageUris,
          options,
          targetVolume,
          optionalPackageFamilyNames,
          packageUrisToInstall,
          relatedPackageUris);

  @override
  Pointer<COMObject> requestAddPackageAsync(
          Uri? packageUri,
          IIterable<Uri>? dependencyPackageUris,
          DeploymentOptions deploymentOptions,
          PackageVolume? targetVolume,
          IIterable<String>? optionalPackageFamilyNames,
          IIterable<Uri>? relatedPackageUris) =>
      _iPackageManager6.requestAddPackageAsync(
          packageUri,
          dependencyPackageUris,
          deploymentOptions,
          targetVolume,
          optionalPackageFamilyNames,
          relatedPackageUris);

  // IPackageManager7 methods
  late final _iPackageManager7 = IPackageManager7.from(this);

  @override
  Pointer<COMObject> requestAddPackageAndRelatedSetAsync(
          Uri? packageUri,
          IIterable<Uri>? dependencyPackageUris,
          DeploymentOptions deploymentOptions,
          PackageVolume? targetVolume,
          IIterable<String>? optionalPackageFamilyNames,
          IIterable<Uri>? relatedPackageUris,
          IIterable<Uri>? packageUrisToInstall) =>
      _iPackageManager7.requestAddPackageAndRelatedSetAsync(
          packageUri,
          dependencyPackageUris,
          deploymentOptions,
          targetVolume,
          optionalPackageFamilyNames,
          relatedPackageUris,
          packageUrisToInstall);

  // IPackageManager8 methods
  late final _iPackageManager8 = IPackageManager8.from(this);

  @override
  Pointer<COMObject> deprovisionPackageForAllUsersAsync(
          String packageFamilyName) =>
      _iPackageManager8.deprovisionPackageForAllUsersAsync(packageFamilyName);

  // IPackageManager9 methods
  late final _iPackageManager9 = IPackageManager9.from(this);

  @override
  IVector<Package> findProvisionedPackages() =>
      _iPackageManager9.findProvisionedPackages();

  @override
  Pointer<COMObject> addPackageByUriAsync(
          Uri? packageUri, AddPackageOptions? options) =>
      _iPackageManager9.addPackageByUriAsync(packageUri, options);

  @override
  Pointer<COMObject> stagePackageByUriAsync(
          Uri? packageUri, StagePackageOptions? options) =>
      _iPackageManager9.stagePackageByUriAsync(packageUri, options);

  @override
  Pointer<COMObject> registerPackageByUriAsync(
          Uri? manifestUri, RegisterPackageOptions? options) =>
      _iPackageManager9.registerPackageByUriAsync(manifestUri, options);

  @override
  Pointer<COMObject> registerPackagesByFullNameAsync(
          IIterable<String>? packageFullNames,
          RegisterPackageOptions? options) =>
      _iPackageManager9.registerPackagesByFullNameAsync(
          packageFullNames, options);

  @override
  void setPackageStubPreference(
          String packageFamilyName, PackageStubPreference useStub) =>
      _iPackageManager9.setPackageStubPreference(packageFamilyName, useStub);

  @override
  PackageStubPreference getPackageStubPreference(String packageFamilyName) =>
      _iPackageManager9.getPackageStubPreference(packageFamilyName);

  // IPackageManager10 methods
  late final _iPackageManager10 = IPackageManager10.from(this);

  @override
  Pointer<COMObject> provisionPackageForAllUsersWithOptionsAsync(
          String mainPackageFamilyName,
          PackageAllUserProvisioningOptions? options) =>
      _iPackageManager10.provisionPackageForAllUsersWithOptionsAsync(
          mainPackageFamilyName, options);
}

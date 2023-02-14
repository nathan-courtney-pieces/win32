// package.dart

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
import '../foundation/collections/iiterable.dart';
import '../foundation/collections/ivector.dart';
import '../foundation/collections/ivectorview.dart';
import '../foundation/iasyncoperation.dart';
import '../foundation/structs.g.dart';
import '../foundation/uri.dart' as winrt_uri;
import '../internal/hstring_array.dart';
import '../storage/storagefolder.dart';
import '../storage/streams/randomaccessstreamreference.dart';
import 'appinstallerinfo.dart';
import 'core/applistentry.dart';
import 'enums.g.dart';
import 'findrelatedpackagesoptions.dart';
import 'ipackage.dart';
import 'ipackage2.dart';
import 'ipackage3.dart';
import 'ipackage4.dart';
import 'ipackage5.dart';
import 'ipackage6.dart';
import 'ipackage7.dart';
import 'ipackage8.dart';
import 'ipackage9.dart';
import 'ipackagestatics.dart';
import 'ipackagewithmetadata.dart';
import 'packagecontentgroup.dart';
import 'packageid.dart';
import 'packagestatus.dart';
import 'packageupdateavailabilityresult.dart';

/// Provides information about a package.
///
/// {@category Class}
/// {@category winrt}
class Package extends IInspectable
    implements
        IPackage,
        IPackage2,
        IPackage3,
        IPackageWithMetadata,
        IPackage4,
        IPackage5,
        IPackage6,
        IPackage7,
        IPackage8,
        IPackage9 {
  Package.fromRawPointer(super.ptr);

  static const _className = 'Windows.ApplicationModel.Package';

  // IPackageStatics methods
  static Package? get current {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IPackageStatics);
    final object = IPackageStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.current;
    } finally {
      object.release();
    }
  }

  // IPackage methods
  late final _iPackage = IPackage.from(this);

  @override
  PackageId? get id => _iPackage.id;

  @override
  StorageFolder? get installedLocation => _iPackage.installedLocation;

  @override
  bool get isFramework => _iPackage.isFramework;

  @override
  List<Package> get dependencies => _iPackage.dependencies;

  // IPackage2 methods
  late final _iPackage2 = IPackage2.from(this);

  @override
  String get displayName => _iPackage2.displayName;

  @override
  String get publisherDisplayName => _iPackage2.publisherDisplayName;

  @override
  String get description => _iPackage2.description;

  @override
  Uri? get logo => _iPackage2.logo;

  @override
  bool get isResourcePackage => _iPackage2.isResourcePackage;

  @override
  bool get isBundle => _iPackage2.isBundle;

  @override
  bool get isDevelopmentMode => _iPackage2.isDevelopmentMode;

  // IPackage3 methods
  late final _iPackage3 = IPackage3.from(this);

  @override
  PackageStatus? get status => _iPackage3.status;

  @override
  DateTime get installedDate => _iPackage3.installedDate;

  @override
  Future<List<AppListEntry>> getAppListEntriesAsync() =>
      _iPackage3.getAppListEntriesAsync();

  // IPackageWithMetadata methods
  late final _iPackageWithMetadata = IPackageWithMetadata.from(this);

  @override
  DateTime get installDate => _iPackageWithMetadata.installDate;

  @override
  String getThumbnailToken() => _iPackageWithMetadata.getThumbnailToken();

  @override
  void launch(String parameters) => _iPackageWithMetadata.launch(parameters);

  // IPackage4 methods
  late final _iPackage4 = IPackage4.from(this);

  @override
  PackageSignatureKind get signatureKind => _iPackage4.signatureKind;

  @override
  bool get isOptional => _iPackage4.isOptional;

  @override
  Future<bool> verifyContentIntegrityAsync() =>
      _iPackage4.verifyContentIntegrityAsync();

  // IPackage5 methods
  late final _iPackage5 = IPackage5.from(this);

  @override
  Future<IVector<PackageContentGroup>> getContentGroupsAsync() =>
      _iPackage5.getContentGroupsAsync();

  @override
  Future<PackageContentGroup?> getContentGroupAsync(String name) =>
      _iPackage5.getContentGroupAsync(name);

  @override
  Future<IVector<PackageContentGroup>> stageContentGroupsAsync(
          IIterable<String>? names) =>
      _iPackage5.stageContentGroupsAsync(names);

  @override
  Future<IVector<PackageContentGroup>> stageContentGroupsWithPriorityAsync(
          IIterable<String>? names, bool moveToHeadOfQueue) =>
      _iPackage5.stageContentGroupsWithPriorityAsync(names, moveToHeadOfQueue);

  @override
  Future<bool> setInUseAsync(bool inUse) => _iPackage5.setInUseAsync(inUse);

  // IPackage6 methods
  late final _iPackage6 = IPackage6.from(this);

  @override
  AppInstallerInfo? getAppInstallerInfo() => _iPackage6.getAppInstallerInfo();

  @override
  Future<PackageUpdateAvailabilityResult?> checkUpdateAvailabilityAsync() =>
      _iPackage6.checkUpdateAvailabilityAsync();

  // IPackage7 methods
  late final _iPackage7 = IPackage7.from(this);

  @override
  StorageFolder? get mutableLocation => _iPackage7.mutableLocation;

  @override
  StorageFolder? get effectiveLocation => _iPackage7.effectiveLocation;

  // IPackage8 methods
  late final _iPackage8 = IPackage8.from(this);

  @override
  StorageFolder? get effectiveExternalLocation =>
      _iPackage8.effectiveExternalLocation;

  @override
  StorageFolder? get machineExternalLocation =>
      _iPackage8.machineExternalLocation;

  @override
  StorageFolder? get userExternalLocation => _iPackage8.userExternalLocation;

  @override
  String get installedPath => _iPackage8.installedPath;

  @override
  String get mutablePath => _iPackage8.mutablePath;

  @override
  String get effectivePath => _iPackage8.effectivePath;

  @override
  String get effectiveExternalPath => _iPackage8.effectiveExternalPath;

  @override
  String get machineExternalPath => _iPackage8.machineExternalPath;

  @override
  String get userExternalPath => _iPackage8.userExternalPath;

  @override
  RandomAccessStreamReference? getLogoAsRandomAccessStreamReference(
          Size size) =>
      _iPackage8.getLogoAsRandomAccessStreamReference(size);

  @override
  List<AppListEntry> getAppListEntries() => _iPackage8.getAppListEntries();

  @override
  bool get isStub => _iPackage8.isStub;

  // IPackage9 methods
  late final _iPackage9 = IPackage9.from(this);

  @override
  IVector<Package> findRelatedPackages(FindRelatedPackagesOptions? options) =>
      _iPackage9.findRelatedPackages(options);

  @override
  String get sourceUriSchemeName => _iPackage9.sourceUriSchemeName;
}

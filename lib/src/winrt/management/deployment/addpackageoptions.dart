// addpackageoptions.dart

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
import '../../foundation/collections/imap.dart';
import '../../foundation/collections/ivector.dart';
import '../../foundation/uri.dart' as winrt_uri;
import '../../internal/hstring_array.dart';
import 'enums.g.dart';
import 'iaddpackageoptions.dart';
import 'iaddpackageoptions2.dart';
import 'packagevolume.dart';

/// Specifies the deployment options that you can configure when you use the
/// AddPackageByUriAsync method to add a package.
///
/// {@category Class}
/// {@category winrt}
class AddPackageOptions extends IInspectable
    implements IAddPackageOptions, IAddPackageOptions2 {
  AddPackageOptions() : super(ActivateClass(_className));
  AddPackageOptions.fromRawPointer(super.ptr);

  static const _className = 'Windows.Management.Deployment.AddPackageOptions';

  // IAddPackageOptions methods
  late final _iAddPackageOptions = IAddPackageOptions.from(this);

  @override
  IVector<Uri> get dependencyPackageUris =>
      _iAddPackageOptions.dependencyPackageUris;

  @override
  PackageVolume? get targetVolume => _iAddPackageOptions.targetVolume;

  @override
  set targetVolume(PackageVolume? value) =>
      _iAddPackageOptions.targetVolume = value;

  @override
  IVector<String> get optionalPackageFamilyNames =>
      _iAddPackageOptions.optionalPackageFamilyNames;

  @override
  IVector<Uri> get optionalPackageUris =>
      _iAddPackageOptions.optionalPackageUris;

  @override
  IVector<Uri> get relatedPackageUris => _iAddPackageOptions.relatedPackageUris;

  @override
  Uri? get externalLocationUri => _iAddPackageOptions.externalLocationUri;

  @override
  set externalLocationUri(Uri? value) =>
      _iAddPackageOptions.externalLocationUri = value;

  @override
  StubPackageOption get stubPackageOption =>
      _iAddPackageOptions.stubPackageOption;

  @override
  set stubPackageOption(StubPackageOption value) =>
      _iAddPackageOptions.stubPackageOption = value;

  @override
  bool get developerMode => _iAddPackageOptions.developerMode;

  @override
  set developerMode(bool value) => _iAddPackageOptions.developerMode = value;

  @override
  bool get forceAppShutdown => _iAddPackageOptions.forceAppShutdown;

  @override
  set forceAppShutdown(bool value) =>
      _iAddPackageOptions.forceAppShutdown = value;

  @override
  bool get forceTargetAppShutdown => _iAddPackageOptions.forceTargetAppShutdown;

  @override
  set forceTargetAppShutdown(bool value) =>
      _iAddPackageOptions.forceTargetAppShutdown = value;

  @override
  bool get forceUpdateFromAnyVersion =>
      _iAddPackageOptions.forceUpdateFromAnyVersion;

  @override
  set forceUpdateFromAnyVersion(bool value) =>
      _iAddPackageOptions.forceUpdateFromAnyVersion = value;

  @override
  bool get installAllResources => _iAddPackageOptions.installAllResources;

  @override
  set installAllResources(bool value) =>
      _iAddPackageOptions.installAllResources = value;

  @override
  bool get requiredContentGroupOnly =>
      _iAddPackageOptions.requiredContentGroupOnly;

  @override
  set requiredContentGroupOnly(bool value) =>
      _iAddPackageOptions.requiredContentGroupOnly = value;

  @override
  bool get retainFilesOnFailure => _iAddPackageOptions.retainFilesOnFailure;

  @override
  set retainFilesOnFailure(bool value) =>
      _iAddPackageOptions.retainFilesOnFailure = value;

  @override
  bool get stageInPlace => _iAddPackageOptions.stageInPlace;

  @override
  set stageInPlace(bool value) => _iAddPackageOptions.stageInPlace = value;

  @override
  bool get allowUnsigned => _iAddPackageOptions.allowUnsigned;

  @override
  set allowUnsigned(bool value) => _iAddPackageOptions.allowUnsigned = value;

  @override
  bool get deferRegistrationWhenPackagesAreInUse =>
      _iAddPackageOptions.deferRegistrationWhenPackagesAreInUse;

  @override
  set deferRegistrationWhenPackagesAreInUse(bool value) =>
      _iAddPackageOptions.deferRegistrationWhenPackagesAreInUse = value;

  // IAddPackageOptions2 methods
  late final _iAddPackageOptions2 = IAddPackageOptions2.from(this);

  @override
  IMap<Uri, String> get expectedDigests => _iAddPackageOptions2.expectedDigests;

  @override
  bool get limitToExistingPackages =>
      _iAddPackageOptions2.limitToExistingPackages;

  @override
  set limitToExistingPackages(bool value) =>
      _iAddPackageOptions2.limitToExistingPackages = value;
}

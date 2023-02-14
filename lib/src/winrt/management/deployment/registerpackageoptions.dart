// registerpackageoptions.dart

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
import 'iregisterpackageoptions.dart';
import 'iregisterpackageoptions2.dart';
import 'packagevolume.dart';

/// Specifies the deployment options that you can configure when you use the
/// RegisterPackageByUriAsync method to register a Package.
///
/// {@category Class}
/// {@category winrt}
class RegisterPackageOptions extends IInspectable
    implements IRegisterPackageOptions, IRegisterPackageOptions2 {
  RegisterPackageOptions() : super(ActivateClass(_className));
  RegisterPackageOptions.fromRawPointer(super.ptr);

  static const _className =
      'Windows.Management.Deployment.RegisterPackageOptions';

  // IRegisterPackageOptions methods
  late final _iRegisterPackageOptions = IRegisterPackageOptions.from(this);

  // @override
  // IVector<Uri> get dependencyPackageUris =>
  //     _iRegisterPackageOptions.dependencyPackageUris;

  @override
  PackageVolume? get appDataVolume => _iRegisterPackageOptions.appDataVolume;

  @override
  set appDataVolume(PackageVolume? value) =>
      _iRegisterPackageOptions.appDataVolume = value;

  @override
  IVector<String> get optionalPackageFamilyNames =>
      _iRegisterPackageOptions.optionalPackageFamilyNames;

  @override
  Uri? get externalLocationUri => _iRegisterPackageOptions.externalLocationUri;

  // @override
  // set externalLocationUri(Uri? value) =>
  //     _iRegisterPackageOptions.externalLocationUri = value;

  @override
  bool get developerMode => _iRegisterPackageOptions.developerMode;

  @override
  set developerMode(bool value) =>
      _iRegisterPackageOptions.developerMode = value;

  @override
  bool get forceAppShutdown => _iRegisterPackageOptions.forceAppShutdown;

  @override
  set forceAppShutdown(bool value) =>
      _iRegisterPackageOptions.forceAppShutdown = value;

  @override
  bool get forceTargetAppShutdown =>
      _iRegisterPackageOptions.forceTargetAppShutdown;

  @override
  set forceTargetAppShutdown(bool value) =>
      _iRegisterPackageOptions.forceTargetAppShutdown = value;

  @override
  bool get forceUpdateFromAnyVersion =>
      _iRegisterPackageOptions.forceUpdateFromAnyVersion;

  @override
  set forceUpdateFromAnyVersion(bool value) =>
      _iRegisterPackageOptions.forceUpdateFromAnyVersion = value;

  @override
  bool get installAllResources => _iRegisterPackageOptions.installAllResources;

  @override
  set installAllResources(bool value) =>
      _iRegisterPackageOptions.installAllResources = value;

  @override
  bool get stageInPlace => _iRegisterPackageOptions.stageInPlace;

  @override
  set stageInPlace(bool value) => _iRegisterPackageOptions.stageInPlace = value;

  @override
  bool get allowUnsigned => _iRegisterPackageOptions.allowUnsigned;

  @override
  set allowUnsigned(bool value) =>
      _iRegisterPackageOptions.allowUnsigned = value;

  @override
  bool get deferRegistrationWhenPackagesAreInUse =>
      _iRegisterPackageOptions.deferRegistrationWhenPackagesAreInUse;

  @override
  set deferRegistrationWhenPackagesAreInUse(bool value) =>
      _iRegisterPackageOptions.deferRegistrationWhenPackagesAreInUse = value;

  // IRegisterPackageOptions2 methods
  late final _iRegisterPackageOptions2 = IRegisterPackageOptions2.from(this);

  @override
  IMap<Uri, String> get expectedDigests =>
      _iRegisterPackageOptions2.expectedDigests;
}

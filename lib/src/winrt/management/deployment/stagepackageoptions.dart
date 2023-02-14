// stagepackageoptions.dart

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
import 'istagepackageoptions.dart';
import 'istagepackageoptions2.dart';
import 'packagevolume.dart';

/// Specifies the deployment options that you can configure when you use the
/// StagePackageByUriAsync method to stage a package.
///
/// {@category Class}
/// {@category winrt}
class StagePackageOptions extends IInspectable
    implements IStagePackageOptions, IStagePackageOptions2 {
  StagePackageOptions() : super(ActivateClass(_className));
  StagePackageOptions.fromRawPointer(super.ptr);

  static const _className = 'Windows.Management.Deployment.StagePackageOptions';

  // IStagePackageOptions methods
  late final _iStagePackageOptions = IStagePackageOptions.from(this);

  @override
  IVector<Uri> get dependencyPackageUris =>
      _iStagePackageOptions.dependencyPackageUris;

  @override
  PackageVolume? get targetVolume => _iStagePackageOptions.targetVolume;

  @override
  set targetVolume(PackageVolume? value) =>
      _iStagePackageOptions.targetVolume = value;

  @override
  IVector<String> get optionalPackageFamilyNames =>
      _iStagePackageOptions.optionalPackageFamilyNames;

  @override
  IVector<Uri> get optionalPackageUris =>
      _iStagePackageOptions.optionalPackageUris;

  @override
  IVector<Uri> get relatedPackageUris =>
      _iStagePackageOptions.relatedPackageUris;

  @override
  Uri? get externalLocationUri => _iStagePackageOptions.externalLocationUri;

  @override
  set externalLocationUri(Uri? value) =>
      _iStagePackageOptions.externalLocationUri = value;

  @override
  StubPackageOption get stubPackageOption =>
      _iStagePackageOptions.stubPackageOption;

  @override
  set stubPackageOption(StubPackageOption value) =>
      _iStagePackageOptions.stubPackageOption = value;

  @override
  bool get developerMode => _iStagePackageOptions.developerMode;

  @override
  set developerMode(bool value) => _iStagePackageOptions.developerMode = value;

  @override
  bool get forceUpdateFromAnyVersion =>
      _iStagePackageOptions.forceUpdateFromAnyVersion;

  @override
  set forceUpdateFromAnyVersion(bool value) =>
      _iStagePackageOptions.forceUpdateFromAnyVersion = value;

  @override
  bool get installAllResources => _iStagePackageOptions.installAllResources;

  @override
  set installAllResources(bool value) =>
      _iStagePackageOptions.installAllResources = value;

  @override
  bool get requiredContentGroupOnly =>
      _iStagePackageOptions.requiredContentGroupOnly;

  @override
  set requiredContentGroupOnly(bool value) =>
      _iStagePackageOptions.requiredContentGroupOnly = value;

  @override
  bool get stageInPlace => _iStagePackageOptions.stageInPlace;

  @override
  set stageInPlace(bool value) => _iStagePackageOptions.stageInPlace = value;

  @override
  bool get allowUnsigned => _iStagePackageOptions.allowUnsigned;

  @override
  set allowUnsigned(bool value) => _iStagePackageOptions.allowUnsigned = value;

  // IStagePackageOptions2 methods
  late final _iStagePackageOptions2 = IStagePackageOptions2.from(this);

  @override
  IMap<Uri, String> get expectedDigests =>
      _iStagePackageOptions2.expectedDigests;
}

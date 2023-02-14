// autoupdatesettingsoptions.dart

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
import '../../applicationmodel/appinstallerinfo.dart';
import '../../applicationmodel/structs.g.dart';
import '../../foundation/collections/ivector.dart';
import '../../foundation/uri.dart' as winrt_uri;
import '../../internal/hstring_array.dart';
import 'iautoupdatesettingsoptions.dart';
import 'iautoupdatesettingsoptionsstatics.dart';

/// Represents the automatic update settings for a package.
///
/// {@category Class}
/// {@category winrt}
class AutoUpdateSettingsOptions extends IInspectable
    implements IAutoUpdateSettingsOptions {
  AutoUpdateSettingsOptions() : super(ActivateClass(_className));
  AutoUpdateSettingsOptions.fromRawPointer(super.ptr);

  static const _className =
      'Windows.Management.Deployment.AutoUpdateSettingsOptions';

  // IAutoUpdateSettingsOptionsStatics methods
  static AutoUpdateSettingsOptions? createFromAppInstallerInfo(
      AppInstallerInfo? appInstallerInfo) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IAutoUpdateSettingsOptionsStatics);
    final object =
        IAutoUpdateSettingsOptionsStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.createFromAppInstallerInfo(appInstallerInfo);
    } finally {
      object.release();
    }
  }

  // IAutoUpdateSettingsOptions methods
  late final _iAutoUpdateSettingsOptions =
      IAutoUpdateSettingsOptions.from(this);

  @override
  PackageVersion get version => _iAutoUpdateSettingsOptions.version;

  @override
  set version(PackageVersion value) =>
      _iAutoUpdateSettingsOptions.version = value;

  @override
  Uri? get appInstallerUri => _iAutoUpdateSettingsOptions.appInstallerUri;

  @override
  set appInstallerUri(Uri? value) =>
      _iAutoUpdateSettingsOptions.appInstallerUri = value;

  @override
  bool get onLaunch => _iAutoUpdateSettingsOptions.onLaunch;

  @override
  set onLaunch(bool value) => _iAutoUpdateSettingsOptions.onLaunch = value;

  @override
  int get hoursBetweenUpdateChecks =>
      _iAutoUpdateSettingsOptions.hoursBetweenUpdateChecks;

  @override
  set hoursBetweenUpdateChecks(int value) =>
      _iAutoUpdateSettingsOptions.hoursBetweenUpdateChecks = value;

  @override
  bool get showPrompt => _iAutoUpdateSettingsOptions.showPrompt;

  @override
  set showPrompt(bool value) => _iAutoUpdateSettingsOptions.showPrompt = value;

  @override
  bool get updateBlocksActivation =>
      _iAutoUpdateSettingsOptions.updateBlocksActivation;

  @override
  set updateBlocksActivation(bool value) =>
      _iAutoUpdateSettingsOptions.updateBlocksActivation = value;

  @override
  bool get automaticBackgroundTask =>
      _iAutoUpdateSettingsOptions.automaticBackgroundTask;

  @override
  set automaticBackgroundTask(bool value) =>
      _iAutoUpdateSettingsOptions.automaticBackgroundTask = value;

  @override
  bool get forceUpdateFromAnyVersion =>
      _iAutoUpdateSettingsOptions.forceUpdateFromAnyVersion;

  @override
  set forceUpdateFromAnyVersion(bool value) =>
      _iAutoUpdateSettingsOptions.forceUpdateFromAnyVersion = value;

  @override
  bool get isAutoRepairEnabled =>
      _iAutoUpdateSettingsOptions.isAutoRepairEnabled;

  @override
  set isAutoRepairEnabled(bool value) =>
      _iAutoUpdateSettingsOptions.isAutoRepairEnabled = value;

  @override
  IVector<Uri> get updateUris => _iAutoUpdateSettingsOptions.updateUris;

  @override
  IVector<Uri> get repairUris => _iAutoUpdateSettingsOptions.repairUris;

  @override
  IVector<Uri> get dependencyPackageUris =>
      _iAutoUpdateSettingsOptions.dependencyPackageUris;

  @override
  IVector<Uri> get optionalPackageUris =>
      _iAutoUpdateSettingsOptions.optionalPackageUris;
}

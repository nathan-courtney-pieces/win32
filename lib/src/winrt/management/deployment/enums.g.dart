// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import '../../foundation/winrt_enum.dart';

/// A subset of DeploymentOptions that are valid for App Installer.
///
/// {@category Enum}
class AddPackageByAppInstallerOptions extends WinRTEnum {
  const AddPackageByAppInstallerOptions(super.value, {super.name});

  factory AddPackageByAppInstallerOptions.from(int value) =>
      AddPackageByAppInstallerOptions.values.firstWhere((e) => e.value == value,
          orElse: () => AddPackageByAppInstallerOptions(value));

  static const none = AddPackageByAppInstallerOptions(0, name: 'none');
  static const installAllResources =
      AddPackageByAppInstallerOptions(32, name: 'installAllResources');
  static const forceTargetAppShutdown =
      AddPackageByAppInstallerOptions(64, name: 'forceTargetAppShutdown');
  static const requiredContentGroupOnly =
      AddPackageByAppInstallerOptions(256, name: 'requiredContentGroupOnly');
  static const limitToExistingPackages =
      AddPackageByAppInstallerOptions(512, name: 'limitToExistingPackages');

  static const List<AddPackageByAppInstallerOptions> values = [
    none,
    installAllResources,
    forceTargetAppShutdown,
    requiredContentGroupOnly,
    limitToExistingPackages
  ];

  AddPackageByAppInstallerOptions operator &(
          AddPackageByAppInstallerOptions other) =>
      AddPackageByAppInstallerOptions(value & other.value);

  AddPackageByAppInstallerOptions operator |(
          AddPackageByAppInstallerOptions other) =>
      AddPackageByAppInstallerOptions(value | other.value);

  /// Determines whether one or more bit fields are set in the current enum
  /// value.
  ///
  /// ```dart
  /// final fileAttributes = FileAttributes.readOnly | FileAttributes.archive;
  /// fileAttributes.hasFlag(FileAttributes.readOnly)); // `true`
  /// fileAttributes.hasFlag(FileAttributes.temporary)); // `false`
  /// fileAttributes.hasFlag(
  ///     FileAttributes.readOnly | FileAttributes.archive)); // `true`
  /// ```
  bool hasFlag(AddPackageByAppInstallerOptions flag) {
    if (value != 0 && flag.value == 0) return false;
    return value & flag.value == flag.value;
  }
}

/// Specifies the package deployment options.
///
/// {@category Enum}
class DeploymentOptions extends WinRTEnum {
  const DeploymentOptions(super.value, {super.name});

  factory DeploymentOptions.from(int value) =>
      DeploymentOptions.values.firstWhere((e) => e.value == value,
          orElse: () => DeploymentOptions(value));

  static const none = DeploymentOptions(0, name: 'none');
  static const forceApplicationShutdown =
      DeploymentOptions(1, name: 'forceApplicationShutdown');
  static const developmentMode = DeploymentOptions(2, name: 'developmentMode');
  static const installAllResources =
      DeploymentOptions(32, name: 'installAllResources');
  static const forceTargetApplicationShutdown =
      DeploymentOptions(64, name: 'forceTargetApplicationShutdown');
  static const requiredContentGroupOnly =
      DeploymentOptions(256, name: 'requiredContentGroupOnly');
  static const forceUpdateFromAnyVersion =
      DeploymentOptions(262144, name: 'forceUpdateFromAnyVersion');
  static const retainFilesOnFailure =
      DeploymentOptions(2097152, name: 'retainFilesOnFailure');
  static const stageInPlace = DeploymentOptions(4194304, name: 'stageInPlace');

  static const List<DeploymentOptions> values = [
    none,
    forceApplicationShutdown,
    developmentMode,
    installAllResources,
    forceTargetApplicationShutdown,
    requiredContentGroupOnly,
    forceUpdateFromAnyVersion,
    retainFilesOnFailure,
    stageInPlace
  ];

  DeploymentOptions operator &(DeploymentOptions other) =>
      DeploymentOptions(value & other.value);

  DeploymentOptions operator |(DeploymentOptions other) =>
      DeploymentOptions(value | other.value);

  /// Determines whether one or more bit fields are set in the current enum
  /// value.
  ///
  /// ```dart
  /// final fileAttributes = FileAttributes.readOnly | FileAttributes.archive;
  /// fileAttributes.hasFlag(FileAttributes.readOnly)); // `true`
  /// fileAttributes.hasFlag(FileAttributes.temporary)); // `false`
  /// fileAttributes.hasFlag(
  ///     FileAttributes.readOnly | FileAttributes.archive)); // `true`
  /// ```
  bool hasFlag(DeploymentOptions flag) {
    if (value != 0 && flag.value == 0) return false;
    return value & flag.value == flag.value;
  }
}

/// Represents the install state of the Package.
///
/// {@category Enum}
enum PackageInstallState implements WinRTEnum {
  notInstalled(0),
  staged(1),
  installed(2),
  paused(6);

  @override
  final int value;

  const PackageInstallState(this.value);

  factory PackageInstallState.from(int value) =>
      PackageInstallState.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Represents the state of the Package.
///
/// {@category Enum}
enum PackageState implements WinRTEnum {
  normal(0),
  licenseInvalid(1),
  modified(2),
  tampered(3);

  @override
  final int value;

  const PackageState(this.value);

  factory PackageState.from(int value) =>
      PackageState.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Provides info about the status of a Package.
///
/// {@category Enum}
class PackageStatus extends WinRTEnum {
  const PackageStatus(super.value, {super.name});

  factory PackageStatus.from(int value) => PackageStatus.values
      .firstWhere((e) => e.value == value, orElse: () => PackageStatus(value));

  static const oK = PackageStatus(0, name: 'oK');
  static const licenseIssue = PackageStatus(1, name: 'licenseIssue');
  static const modified = PackageStatus(2, name: 'modified');
  static const tampered = PackageStatus(4, name: 'tampered');
  static const disabled = PackageStatus(8, name: 'disabled');

  static const List<PackageStatus> values = [
    oK,
    licenseIssue,
    modified,
    tampered,
    disabled
  ];

  PackageStatus operator &(PackageStatus other) =>
      PackageStatus(value & other.value);

  PackageStatus operator |(PackageStatus other) =>
      PackageStatus(value | other.value);

  /// Determines whether one or more bit fields are set in the current enum
  /// value.
  ///
  /// ```dart
  /// final fileAttributes = FileAttributes.readOnly | FileAttributes.archive;
  /// fileAttributes.hasFlag(FileAttributes.readOnly)); // `true`
  /// fileAttributes.hasFlag(FileAttributes.temporary)); // `false`
  /// fileAttributes.hasFlag(
  ///     FileAttributes.readOnly | FileAttributes.archive)); // `true`
  /// ```
  bool hasFlag(PackageStatus flag) {
    if (value != 0 && flag.value == 0) return false;
    return value & flag.value == flag.value;
  }
}

/// Represents whether an app Package currently prefers to run as a full app
/// or a stub app.
///
/// {@category Enum}
enum PackageStubPreference implements WinRTEnum {
  full(0),
  stub(1);

  @override
  final int value;

  const PackageStubPreference(this.value);

  factory PackageStubPreference.from(int value) =>
      PackageStubPreference.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Defines the types of Package to be included in the result set of a
/// query.
///
/// {@category Enum}
class PackageTypes extends WinRTEnum {
  const PackageTypes(super.value, {super.name});

  factory PackageTypes.from(int value) => PackageTypes.values
      .firstWhere((e) => e.value == value, orElse: () => PackageTypes(value));

  static const none = PackageTypes(0, name: 'none');
  static const main = PackageTypes(1, name: 'main');
  static const framework = PackageTypes(2, name: 'framework');
  static const resource = PackageTypes(4, name: 'resource');
  static const bundle = PackageTypes(8, name: 'bundle');
  static const xap = PackageTypes(16, name: 'xap');
  static const optional = PackageTypes(32, name: 'optional');
  static const all = PackageTypes(4294967295, name: 'all');

  static const List<PackageTypes> values = [
    none,
    main,
    framework,
    resource,
    bundle,
    xap,
    optional,
    all
  ];

  PackageTypes operator &(PackageTypes other) =>
      PackageTypes(value & other.value);

  PackageTypes operator |(PackageTypes other) =>
      PackageTypes(value | other.value);

  /// Determines whether one or more bit fields are set in the current enum
  /// value.
  ///
  /// ```dart
  /// final fileAttributes = FileAttributes.readOnly | FileAttributes.archive;
  /// fileAttributes.hasFlag(FileAttributes.readOnly)); // `true`
  /// fileAttributes.hasFlag(FileAttributes.temporary)); // `false`
  /// fileAttributes.hasFlag(
  ///     FileAttributes.readOnly | FileAttributes.archive)); // `true`
  /// ```
  bool hasFlag(PackageTypes flag) {
    if (value != 0 && flag.value == 0) return false;
    return value & flag.value == flag.value;
  }
}

/// Values that modify the removal of a package.
///
/// {@category Enum}
class RemovalOptions extends WinRTEnum {
  const RemovalOptions(super.value, {super.name});

  factory RemovalOptions.from(int value) => RemovalOptions.values
      .firstWhere((e) => e.value == value, orElse: () => RemovalOptions(value));

  static const none = RemovalOptions(0, name: 'none');
  static const preserveRoamableApplicationData =
      RemovalOptions(128, name: 'preserveRoamableApplicationData');
  static const preserveApplicationData =
      RemovalOptions(4096, name: 'preserveApplicationData');
  static const removeForAllUsers =
      RemovalOptions(524288, name: 'removeForAllUsers');

  static const List<RemovalOptions> values = [
    none,
    preserveRoamableApplicationData,
    preserveApplicationData,
    removeForAllUsers
  ];

  RemovalOptions operator &(RemovalOptions other) =>
      RemovalOptions(value & other.value);

  RemovalOptions operator |(RemovalOptions other) =>
      RemovalOptions(value | other.value);

  /// Determines whether one or more bit fields are set in the current enum
  /// value.
  ///
  /// ```dart
  /// final fileAttributes = FileAttributes.readOnly | FileAttributes.archive;
  /// fileAttributes.hasFlag(FileAttributes.readOnly)); // `true`
  /// fileAttributes.hasFlag(FileAttributes.temporary)); // `false`
  /// fileAttributes.hasFlag(
  ///     FileAttributes.readOnly | FileAttributes.archive)); // `true`
  /// ```
  bool hasFlag(RemovalOptions flag) {
    if (value != 0 && flag.value == 0) return false;
    return value & flag.value == flag.value;
  }
}

/// Defines the stub behavior for an app package that is being added or
/// staged.
///
/// {@category Enum}
enum StubPackageOption implements WinRTEnum {
  default_(0),
  installFull(1),
  installStub(2),
  usePreference(3);

  @override
  final int value;

  const StubPackageOption(this.value);

  factory StubPackageOption.from(int value) =>
      StubPackageOption.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

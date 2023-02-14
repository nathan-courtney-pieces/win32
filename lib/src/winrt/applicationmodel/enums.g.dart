// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import '../foundation/winrt_enum.dart';

/// Specifies the context in which an app runs.
///
/// {@category Enum}
enum AppExecutionContext implements WinRTEnum {
  unknown(0),
  host(1),
  guest(2);

  @override
  final int value;

  const AppExecutionContext(this.value);

  factory AppExecutionContext.from(int value) =>
      AppExecutionContext.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Specifies the whether the source of the update policy for an app.
///
/// {@category Enum}
enum AppInstallerPolicySource implements WinRTEnum {
  default_(0),
  system(1);

  @override
  final int value;

  const AppInstallerPolicySource(this.value);

  factory AppInstallerPolicySource.from(int value) =>
      AppInstallerPolicySource.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Describes the staging state of the package content group.
///
/// {@category Enum}
enum PackageContentGroupState implements WinRTEnum {
  notStaged(0),
  queued(1),
  staging(2),
  staged(3);

  @override
  final int value;

  const PackageContentGroupState(this.value);

  factory PackageContentGroupState.from(int value) =>
      PackageContentGroupState.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Defines the relationship between packages to be retrieved.
///
/// {@category Enum}
enum PackageRelationship implements WinRTEnum {
  dependencies(0),
  dependents(1),
  all(2);

  @override
  final int value;

  const PackageRelationship(this.value);

  factory PackageRelationship.from(int value) =>
      PackageRelationship.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Provides information about the package's signature and the kind of
/// certificate used to create it.
///
/// {@category Enum}
enum PackageSignatureKind implements WinRTEnum {
  none(0),
  developer(1),
  enterprise(2),
  store(3),
  system(4);

  @override
  final int value;

  const PackageSignatureKind(this.value);

  factory PackageSignatureKind.from(int value) =>
      PackageSignatureKind.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// An enum that indicates if an application has an update, and if the
/// update is required.
///
/// {@category Enum}
enum PackageUpdateAvailability implements WinRTEnum {
  unknown(0),
  noUpdates(1),
  available(2),
  required(3),
  error(4);

  @override
  final int value;

  const PackageUpdateAvailability(this.value);

  factory PackageUpdateAvailability.from(int value) =>
      PackageUpdateAvailability.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

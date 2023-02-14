// findrelatedpackagesoptions.dart

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
import '../internal/hstring_array.dart';
import 'enums.g.dart';
import 'ifindrelatedpackagesoptions.dart';
import 'ifindrelatedpackagesoptionsfactory.dart';

/// Provides filtering when searching for packages.
///
/// {@category Class}
/// {@category winrt}
class FindRelatedPackagesOptions extends IInspectable
    implements IFindRelatedPackagesOptions {
  FindRelatedPackagesOptions.fromRawPointer(super.ptr);

  static const _className =
      'Windows.ApplicationModel.FindRelatedPackagesOptions';

  // IFindRelatedPackagesOptionsFactory methods
  static FindRelatedPackagesOptions createInstance(
      PackageRelationship Relationship) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IFindRelatedPackagesOptionsFactory);
    final object =
        IFindRelatedPackagesOptionsFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createInstance(Relationship);
    } finally {
      object.release();
    }
  }

  // IFindRelatedPackagesOptions methods
  late final _iFindRelatedPackagesOptions =
      IFindRelatedPackagesOptions.from(this);

  @override
  PackageRelationship get relationship =>
      _iFindRelatedPackagesOptions.relationship;

  @override
  set relationship(PackageRelationship value) =>
      _iFindRelatedPackagesOptions.relationship = value;

  @override
  bool get includeFrameworks => _iFindRelatedPackagesOptions.includeFrameworks;

  @override
  set includeFrameworks(bool value) =>
      _iFindRelatedPackagesOptions.includeFrameworks = value;

  @override
  bool get includeHostRuntimes =>
      _iFindRelatedPackagesOptions.includeHostRuntimes;

  @override
  set includeHostRuntimes(bool value) =>
      _iFindRelatedPackagesOptions.includeHostRuntimes = value;

  @override
  bool get includeOptionals => _iFindRelatedPackagesOptions.includeOptionals;

  @override
  set includeOptionals(bool value) =>
      _iFindRelatedPackagesOptions.includeOptionals = value;

  @override
  bool get includeResources => _iFindRelatedPackagesOptions.includeResources;

  @override
  set includeResources(bool value) =>
      _iFindRelatedPackagesOptions.includeResources = value;
}

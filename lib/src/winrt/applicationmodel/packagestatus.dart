// packagestatus.dart

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
import 'ipackagestatus.dart';
import 'ipackagestatus2.dart';

/// Provides the status of the package.
///
/// {@category Class}
/// {@category winrt}
class PackageStatus extends IInspectable
    implements IPackageStatus, IPackageStatus2 {
  PackageStatus.fromRawPointer(super.ptr);

  // IPackageStatus methods
  late final _iPackageStatus = IPackageStatus.from(this);

  @override
  bool verifyIsOK() => _iPackageStatus.verifyIsOK();

  @override
  bool get notAvailable => _iPackageStatus.notAvailable;

  @override
  bool get packageOffline => _iPackageStatus.packageOffline;

  @override
  bool get dataOffline => _iPackageStatus.dataOffline;

  @override
  bool get disabled => _iPackageStatus.disabled;

  @override
  bool get needsRemediation => _iPackageStatus.needsRemediation;

  @override
  bool get licenseIssue => _iPackageStatus.licenseIssue;

  @override
  bool get modified => _iPackageStatus.modified;

  @override
  bool get tampered => _iPackageStatus.tampered;

  @override
  bool get dependencyIssue => _iPackageStatus.dependencyIssue;

  @override
  bool get servicing => _iPackageStatus.servicing;

  @override
  bool get deploymentInProgress => _iPackageStatus.deploymentInProgress;

  // IPackageStatus2 methods
  late final _iPackageStatus2 = IPackageStatus2.from(this);

  @override
  bool get isPartiallyStaged => _iPackageStatus2.isPartiallyStaged;
}

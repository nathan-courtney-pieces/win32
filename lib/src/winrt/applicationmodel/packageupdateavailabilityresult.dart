// packageupdateavailabilityresult.dart

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
import 'ipackageupdateavailabilityresult.dart';

/// Describes whether the main app package listed in the .appinstaller file
/// requires updates.
///
/// {@category Class}
/// {@category winrt}
class PackageUpdateAvailabilityResult extends IInspectable
    implements IPackageUpdateAvailabilityResult {
  PackageUpdateAvailabilityResult.fromRawPointer(super.ptr);

  // IPackageUpdateAvailabilityResult methods
  late final _iPackageUpdateAvailabilityResult =
      IPackageUpdateAvailabilityResult.from(this);

  @override
  PackageUpdateAvailability get availability =>
      _iPackageUpdateAvailabilityResult.availability;

  @override
  int get extendedError => _iPackageUpdateAvailabilityResult.extendedError;
}

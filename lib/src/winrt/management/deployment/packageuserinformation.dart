// packageuserinformation.dart

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
import '../../internal/hstring_array.dart';
import 'enums.g.dart';
import 'ipackageuserinformation.dart';

/// Provides information about the users of an installed Package.
///
/// {@category Class}
/// {@category winrt}
class PackageUserInformation extends IInspectable
    implements IPackageUserInformation {
  PackageUserInformation.fromRawPointer(super.ptr);

  // IPackageUserInformation methods
  late final _iPackageUserInformation = IPackageUserInformation.from(this);

  @override
  String get userSecurityId => _iPackageUserInformation.userSecurityId;

  @override
  PackageInstallState get installState => _iPackageUserInformation.installState;
}

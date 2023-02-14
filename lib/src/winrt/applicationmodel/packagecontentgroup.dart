// packagecontentgroup.dart

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
import 'ipackagecontentgroup.dart';
import 'ipackagecontentgroupstatics.dart';
import 'package.dart';

/// Provides information about a package content group.
///
/// {@category Class}
/// {@category winrt}
class PackageContentGroup extends IInspectable implements IPackageContentGroup {
  PackageContentGroup.fromRawPointer(super.ptr);

  static const _className = 'Windows.ApplicationModel.PackageContentGroup';

  // IPackageContentGroupStatics methods
  static String get requiredGroupName {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IPackageContentGroupStatics);
    final object =
        IPackageContentGroupStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.requiredGroupName;
    } finally {
      object.release();
    }
  }

  // IPackageContentGroup methods
  late final _iPackageContentGroup = IPackageContentGroup.from(this);

  @override
  Package? get package => _iPackageContentGroup.package;

  @override
  String get name => _iPackageContentGroup.name;

  @override
  PackageContentGroupState get state => _iPackageContentGroup.state;

  @override
  bool get isRequired => _iPackageContentGroup.isRequired;
}

// appinfo.dart

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
import '../system/user.dart';
import 'appdisplayinfo.dart';
import 'enums.g.dart';
import 'iappinfo.dart';
import 'iappinfo2.dart';
import 'iappinfo3.dart';
import 'iappinfo4.dart';
import 'iappinfostatics.dart';
import 'package.dart';

/// Provides information about an application such as its name, logo,
/// package information, ID.
///
/// {@category Class}
/// {@category winrt}
class AppInfo extends IInspectable
    implements IAppInfo, IAppInfo2, IAppInfo3, IAppInfo4 {
  AppInfo.fromRawPointer(super.ptr);

  static const _className = 'Windows.ApplicationModel.AppInfo';

  // IAppInfoStatics methods
  static AppInfo? get current {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IAppInfoStatics);
    final object = IAppInfoStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.current;
    } finally {
      object.release();
    }
  }

  static AppInfo? getFromAppUserModelId(String appUserModelId) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IAppInfoStatics);
    final object = IAppInfoStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.getFromAppUserModelId(appUserModelId);
    } finally {
      object.release();
    }
  }

  static AppInfo? getFromAppUserModelIdForUser(
      User? user, String appUserModelId) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IAppInfoStatics);
    final object = IAppInfoStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.getFromAppUserModelIdForUser(user, appUserModelId);
    } finally {
      object.release();
    }
  }

  // IAppInfo methods
  late final _iAppInfo = IAppInfo.from(this);

  @override
  String get id => _iAppInfo.id;

  @override
  String get appUserModelId => _iAppInfo.appUserModelId;

  @override
  AppDisplayInfo? get displayInfo => _iAppInfo.displayInfo;

  @override
  String get packageFamilyName => _iAppInfo.packageFamilyName;

  // IAppInfo2 methods
  late final _iAppInfo2 = IAppInfo2.from(this);

  @override
  Package? get package => _iAppInfo2.package;

  // IAppInfo3 methods
  late final _iAppInfo3 = IAppInfo3.from(this);

  @override
  AppExecutionContext get executionContext => _iAppInfo3.executionContext;

  // IAppInfo4 methods
  late final _iAppInfo4 = IAppInfo4.from(this);

  @override
  Pointer<IntPtr> get supportedFileExtensions =>
      _iAppInfo4.supportedFileExtensions;
}

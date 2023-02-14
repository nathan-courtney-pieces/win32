// applistentry.dart

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
import '../../foundation/iasyncoperation.dart';
import '../../internal/hstring_array.dart';
import '../../system/user.dart';
import '../appdisplayinfo.dart';
import '../appinfo.dart';
import 'iapplistentry.dart';
import 'iapplistentry2.dart';
import 'iapplistentry3.dart';
import 'iapplistentry4.dart';

/// Provides an app's display info such as its display name and description,
/// and a method to launch the app.
///
/// {@category Class}
/// {@category winrt}
class AppListEntry extends IInspectable
    implements IAppListEntry, IAppListEntry2, IAppListEntry3, IAppListEntry4 {
  AppListEntry.fromRawPointer(super.ptr);

  // IAppListEntry methods
  late final _iAppListEntry = IAppListEntry.from(this);

  @override
  AppDisplayInfo? get displayInfo => _iAppListEntry.displayInfo;

  @override
  Future<bool> launchAsync() => _iAppListEntry.launchAsync();

  // IAppListEntry2 methods
  late final _iAppListEntry2 = IAppListEntry2.from(this);

  @override
  String get appUserModelId => _iAppListEntry2.appUserModelId;

  // IAppListEntry3 methods
  late final _iAppListEntry3 = IAppListEntry3.from(this);

  @override
  Future<bool> launchForUserAsync(User? user) =>
      _iAppListEntry3.launchForUserAsync(user);

  // IAppListEntry4 methods
  late final _iAppListEntry4 = IAppListEntry4.from(this);

  @override
  AppInfo? get appInfo => _iAppListEntry4.appInfo;
}

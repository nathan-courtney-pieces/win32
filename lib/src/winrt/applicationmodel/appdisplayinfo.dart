// appdisplayinfo.dart

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
import '../foundation/structs.g.dart';
import '../internal/hstring_array.dart';
import '../storage/streams/randomaccessstreamreference.dart';
import 'iappdisplayinfo.dart';

/// Provides an application's name, description, and logo.
///
/// {@category Class}
/// {@category winrt}
class AppDisplayInfo extends IInspectable implements IAppDisplayInfo {
  AppDisplayInfo.fromRawPointer(super.ptr);

  // IAppDisplayInfo methods
  late final _iAppDisplayInfo = IAppDisplayInfo.from(this);

  @override
  String get displayName => _iAppDisplayInfo.displayName;

  @override
  String get description => _iAppDisplayInfo.description;

  @override
  RandomAccessStreamReference? getLogo(Size size) =>
      _iAppDisplayInfo.getLogo(size);
}

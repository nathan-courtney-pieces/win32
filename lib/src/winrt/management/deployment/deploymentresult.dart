// deploymentresult.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../com/iinspectable.dart';
import '../../../combase.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../types.dart';
import '../../../utils.dart';
import '../../../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';
import '../../../winrt_callbacks.dart';
import '../../../winrt_helpers.dart';
import '../../internal/hstring_array.dart';
import 'ideploymentresult.dart';
import 'ideploymentresult2.dart';

/// Provides the result of a deployment request.
///
/// {@category Class}
/// {@category winrt}
class DeploymentResult extends IInspectable
    implements IDeploymentResult, IDeploymentResult2 {
  DeploymentResult.fromRawPointer(super.ptr);

  // IDeploymentResult methods
  late final _iDeploymentResult = IDeploymentResult.from(this);

  @override
  String get errorText => _iDeploymentResult.errorText;

  @override
  Guid get activityId => _iDeploymentResult.activityId;

  @override
  int get extendedErrorCode => _iDeploymentResult.extendedErrorCode;

  // IDeploymentResult2 methods
  late final _iDeploymentResult2 = IDeploymentResult2.from(this);

  @override
  bool get isRegistered => _iDeploymentResult2.isRegistered;
}

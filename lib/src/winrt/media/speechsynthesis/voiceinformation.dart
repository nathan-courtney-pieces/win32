// voiceinformation.dart

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
import 'ivoiceinformation.dart';

/// Provides info about an installed speech synthesis engine (voice).
///
/// {@category Class}
/// {@category winrt}
class VoiceInformation extends IInspectable implements IVoiceInformation {
  VoiceInformation.fromRawPointer(super.ptr);

  // IVoiceInformation methods
  late final _iVoiceInformation = IVoiceInformation.from(this);

  @override
  String get displayName => _iVoiceInformation.displayName;

  @override
  String get id => _iVoiceInformation.id;

  @override
  String get language => _iVoiceInformation.language;

  @override
  String get description => _iVoiceInformation.description;

  @override
  VoiceGender get gender => _iVoiceInformation.gender;
}

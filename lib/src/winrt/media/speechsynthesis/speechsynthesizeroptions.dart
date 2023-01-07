// speechsynthesizeroptions.dart

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
import 'ispeechsynthesizeroptions.dart';
import 'ispeechsynthesizeroptions2.dart';
import 'ispeechsynthesizeroptions3.dart';

/// Provides access to various speech synthesizer options.
///
/// {@category Class}
/// {@category winrt}
class SpeechSynthesizerOptions extends IInspectable
    implements
        ISpeechSynthesizerOptions,
        ISpeechSynthesizerOptions2,
        ISpeechSynthesizerOptions3 {
  SpeechSynthesizerOptions.fromRawPointer(super.ptr);

  // ISpeechSynthesizerOptions methods
  late final _iSpeechSynthesizerOptions = ISpeechSynthesizerOptions.from(this);

  @override
  bool get includeWordBoundaryMetadata =>
      _iSpeechSynthesizerOptions.includeWordBoundaryMetadata;

  @override
  set includeWordBoundaryMetadata(bool value) =>
      _iSpeechSynthesizerOptions.includeWordBoundaryMetadata = value;

  @override
  bool get includeSentenceBoundaryMetadata =>
      _iSpeechSynthesizerOptions.includeSentenceBoundaryMetadata;

  @override
  set includeSentenceBoundaryMetadata(bool value) =>
      _iSpeechSynthesizerOptions.includeSentenceBoundaryMetadata = value;

  // ISpeechSynthesizerOptions2 methods
  late final _iSpeechSynthesizerOptions2 =
      ISpeechSynthesizerOptions2.from(this);

  @override
  double get audioVolume => _iSpeechSynthesizerOptions2.audioVolume;

  @override
  set audioVolume(double value) =>
      _iSpeechSynthesizerOptions2.audioVolume = value;

  @override
  double get speakingRate => _iSpeechSynthesizerOptions2.speakingRate;

  @override
  set speakingRate(double value) =>
      _iSpeechSynthesizerOptions2.speakingRate = value;

  @override
  double get audioPitch => _iSpeechSynthesizerOptions2.audioPitch;

  @override
  set audioPitch(double value) =>
      _iSpeechSynthesizerOptions2.audioPitch = value;

  // ISpeechSynthesizerOptions3 methods
  late final _iSpeechSynthesizerOptions3 =
      ISpeechSynthesizerOptions3.from(this);

  @override
  SpeechAppendedSilence get appendedSilence =>
      _iSpeechSynthesizerOptions3.appendedSilence;

  @override
  set appendedSilence(SpeechAppendedSilence value) =>
      _iSpeechSynthesizerOptions3.appendedSilence = value;

  @override
  SpeechPunctuationSilence get punctuationSilence =>
      _iSpeechSynthesizerOptions3.punctuationSilence;

  @override
  set punctuationSilence(SpeechPunctuationSilence value) =>
      _iSpeechSynthesizerOptions3.punctuationSilence = value;
}

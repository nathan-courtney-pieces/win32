// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import '../../foundation/winrt_enum.dart';

/// Specifies the amount of silence added to the end of the speech synthesis
/// utterance (before another utterance begins).
///
/// {@category Enum}
enum SpeechAppendedSilence implements WinRTEnum {
  default_(0),
  min(1);

  @override
  final int value;

  const SpeechAppendedSilence(this.value);

  factory SpeechAppendedSilence.from(int value) =>
      SpeechAppendedSilence.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Specifies the amount of silence added after punctuation in the speech
/// synthesis utterance (before another utterance begins).
///
/// {@category Enum}
enum SpeechPunctuationSilence implements WinRTEnum {
  default_(0),
  min(1);

  @override
  final int value;

  const SpeechPunctuationSilence(this.value);

  factory SpeechPunctuationSilence.from(int value) =>
      SpeechPunctuationSilence.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Specifies the gender preferences available for speech synthesis (if
/// supported by the specified speech synthesis engine).
///
/// {@category Enum}
enum VoiceGender implements WinRTEnum {
  male(0),
  female(1);

  @override
  final int value;

  const VoiceGender(this.value);

  factory VoiceGender.from(int value) =>
      VoiceGender.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

// speechsynthesizer.dart

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
import '../../foundation/collections/ivectorview.dart';
import '../../foundation/iasyncoperation.dart';
import '../../foundation/iclosable.dart';
import '../../internal/hstring_array.dart';
import 'iinstalledvoicesstatic.dart';
import 'iinstalledvoicesstatic2.dart';
import 'ispeechsynthesizer.dart';
import 'ispeechsynthesizer2.dart';
import 'speechsynthesisstream.dart';
import 'speechsynthesizeroptions.dart';
import 'voiceinformation.dart';

/// Provides access to the functionality of an installed speech synthesis
/// engine (voice) for Text-to-speech (TTS) services.
///
/// {@category Class}
/// {@category winrt}
class SpeechSynthesizer extends IInspectable
    implements ISpeechSynthesizer, IClosable, ISpeechSynthesizer2 {
  SpeechSynthesizer() : super(ActivateClass(_className));
  SpeechSynthesizer.fromRawPointer(super.ptr);

  static const _className = 'Windows.Media.SpeechSynthesis.SpeechSynthesizer';

  // IInstalledVoicesStatic methods
  static List<VoiceInformation> get allVoices {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IInstalledVoicesStatic);
    final object = IInstalledVoicesStatic.fromRawPointer(activationFactoryPtr);

    try {
      return object.allVoices;
    } finally {
      object.release();
    }
  }

  static VoiceInformation? get defaultVoice {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IInstalledVoicesStatic);
    final object = IInstalledVoicesStatic.fromRawPointer(activationFactoryPtr);

    try {
      return object.defaultVoice;
    } finally {
      object.release();
    }
  }

  // IInstalledVoicesStatic2 methods
  static Future<bool> trySetDefaultVoiceAsync(VoiceInformation? voice) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IInstalledVoicesStatic2);
    final object = IInstalledVoicesStatic2.fromRawPointer(activationFactoryPtr);

    try {
      return object.trySetDefaultVoiceAsync(voice);
    } finally {
      object.release();
    }
  }

  // ISpeechSynthesizer methods
  late final _iSpeechSynthesizer = ISpeechSynthesizer.from(this);

  @override
  Future<SpeechSynthesisStream?> synthesizeTextToStreamAsync(String text) =>
      _iSpeechSynthesizer.synthesizeTextToStreamAsync(text);

  @override
  Future<SpeechSynthesisStream?> synthesizeSsmlToStreamAsync(String Ssml) =>
      _iSpeechSynthesizer.synthesizeSsmlToStreamAsync(Ssml);

  @override
  set voice(VoiceInformation? value) => _iSpeechSynthesizer.voice = value;

  @override
  VoiceInformation? get voice => _iSpeechSynthesizer.voice;

  // IClosable methods
  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();

  // ISpeechSynthesizer2 methods
  late final _iSpeechSynthesizer2 = ISpeechSynthesizer2.from(this);

  @override
  SpeechSynthesizerOptions? get options => _iSpeechSynthesizer2.options;
}

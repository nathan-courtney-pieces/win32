import 'dart:ffi';

import 'package:audioplayers/audioplayers.dart';
import 'package:ffi/ffi.dart';
import 'package:flutter/material.dart';
import 'package:win32/winrt.dart';

const textToSpeak =
    'Dart is a portable, high-performance language from Google.';

void main() {
  runApp(const SpeechApp());
}

class SpeechApp extends StatelessWidget {
  const SpeechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void speak() async {
    final synthesizer = SpeechSynthesizer();
    final synthesisStream =
        await synthesizer.synthesizeTextToStreamAsync(textToSpeak);
    final player = AudioPlayer();
    final buffer = Buffer.create(synthesisStream!.size);
    synthesisStream.readAsync(
        buffer, synthesisStream.size, InputStreamOptions.none);
    final dataReader = DataReader.fromBuffer(buffer)!;
    final wav = calloc<BYTE>(synthesisStream.size);
    dataReader.readBytes(synthesisStream.size, wav);
    final source = BytesSource(wav.asTypedList(synthesisStream.size));
    player.play(source);
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text('Click'),
      onPressed: () async {
        speak();
      },
    );
  }
}

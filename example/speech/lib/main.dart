import 'package:audioplayers/audioplayers.dart';
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

// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Example of using Windows speech client.

import 'package:win32/winrt.dart';

const textToSpeak =
    'Dart is a portable, high-performance language from Google.';

void main() async {
  final synthesizer = SpeechSynthesizer();
  final synthesisStream =
      await synthesizer.synthesizeTextToStreamAsync(textToSpeak);
  print(synthesisStream?.contentType);
}

// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import '../foundation/winrt_enum.dart';

/// Specifies the processor architecture supported by an app.
///
/// {@category Enum}
enum ProcessorArchitecture implements WinRTEnum {
  x86(0),
  arm(5),
  x64(9),
  neutral(11),
  arm64(12),
  x86OnArm64(14),
  unknown(65535);

  @override
  final int value;

  const ProcessorArchitecture(this.value);

  factory ProcessorArchitecture.from(int value) =>
      ProcessorArchitecture.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

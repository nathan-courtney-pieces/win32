// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import '../../foundation/winrt_enum.dart';

/// Specifies the kinds of metadata that can be automatically displayed for
/// a MediaPlaybackItem. Set the type of data you want to be automatically
/// loaded by assigning one of these values to the
/// AutoLoadedDisplayProperties properties.
///
/// {@category Enum}
enum AutoLoadedDisplayPropertyKind implements WinRTEnum {
  none(0),
  musicOrVideo(1),
  music(2),
  video(3);

  @override
  final int value;

  const AutoLoadedDisplayPropertyKind(this.value);

  factory AutoLoadedDisplayPropertyKind.from(int value) =>
      AutoLoadedDisplayPropertyKind.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

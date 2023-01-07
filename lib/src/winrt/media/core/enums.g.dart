// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import '../../foundation/winrt_enum.dart';

/// Specifies the type of a media track.
///
/// {@category Enum}
enum MediaTrackKind implements WinRTEnum {
  audio(0),
  video(1),
  timedMetadata(2);

  @override
  final int value;

  const MediaTrackKind(this.value);

  factory MediaTrackKind.from(int value) =>
      MediaTrackKind.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Specifies the types of metadata that may be present in a
/// TimedMetadataTrack.
///
/// {@category Enum}
enum TimedMetadataKind implements WinRTEnum {
  caption(0),
  chapter(1),
  custom(2),
  data(3),
  description(4),
  subtitle(5),
  imageSubtitle(6),
  speech(7);

  @override
  final int value;

  const TimedMetadataKind(this.value);

  factory TimedMetadataKind.from(int value) =>
      TimedMetadataKind.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

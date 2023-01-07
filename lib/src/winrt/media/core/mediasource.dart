// mediasource.dart

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
import '../../foundation/collections/valueset.dart';
import '../../foundation/iasyncaction.dart';
import '../../foundation/iclosable.dart';
import '../../foundation/ireference.dart';
import '../../foundation/uri.dart' as winrt_uri;
import '../../internal/hstring_array.dart';
import '../../storage/istoragefile.dart';
import '../../storage/streams/irandomaccessstream.dart';
import '../playback/imediaplaybacksource.dart';
import 'enums.g.dart';
import 'timedmetadatatrack.dart';

/// Represents a media source. Provides a common way to reference media from
/// different sources and exposes a common model for accessing media data
/// regardless of the underlying media format.
///
/// {@category Class}
/// {@category winrt}
class MediaSource extends IInspectable
    implements IClosable, IMediaPlaybackSource {
  MediaSource.fromRawPointer(super.ptr);

  // IClosable methods
  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}

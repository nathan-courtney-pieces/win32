// mediaitemdisplayproperties.dart

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
import 'imediaitemdisplayproperties.dart';

/// Defines a set of metadata for a MediaPlaybackItem that is displayed in
/// the System Media Transport Controls while the item is playing.
///
/// {@category Class}
/// {@category winrt}
class MediaItemDisplayProperties extends IInspectable
    implements IMediaItemDisplayProperties {
  MediaItemDisplayProperties.fromRawPointer(super.ptr);

  // IMediaItemDisplayProperties methods
  late final _iMediaItemDisplayProperties =
      IMediaItemDisplayProperties.from(this);

  @override
  void clearAll() => _iMediaItemDisplayProperties.clearAll();
}

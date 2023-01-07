// mediaplaybackaudiotracklist.dart

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
import '../../foundation/collections/iiterable.dart';
import '../../foundation/collections/iiterator.dart';
import '../../foundation/collections/ivectorview.dart';
import '../../internal/hstring_array.dart';
import '../core/isingleselectmediatracklist.dart';

/// Represents a read-only list of AudioTrack objects, of which a single
/// track can be selected at one time.
///
/// {@category Class}
/// {@category winrt}
class MediaPlaybackAudioTrackList extends IInspectable
    implements ISingleSelectMediaTrackList {
  MediaPlaybackAudioTrackList.fromRawPointer(super.ptr);

  // ISingleSelectMediaTrackList methods
  late final _iSingleSelectMediaTrackList =
      ISingleSelectMediaTrackList.from(this);

  @override
  int add_SelectedIndexChanged(
          Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iSingleSelectMediaTrackList.add_SelectedIndexChanged(handler);

  @override
  void remove_SelectedIndexChanged(int token) =>
      _iSingleSelectMediaTrackList.remove_SelectedIndexChanged(token);

  @override
  set selectedIndex(int value) =>
      _iSingleSelectMediaTrackList.selectedIndex = value;

  @override
  int get selectedIndex => _iSingleSelectMediaTrackList.selectedIndex;
}

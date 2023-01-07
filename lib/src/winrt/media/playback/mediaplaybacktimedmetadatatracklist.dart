// mediaplaybacktimedmetadatatracklist.dart

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
import '../core/timedmetadatatrack.dart';
import 'enums.g.dart';
import 'imediaplaybacktimedmetadatatracklist.dart';

/// Represents a read-only list of TimedMetadataTrack objects.
///
/// {@category Class}
/// {@category winrt}
class MediaPlaybackTimedMetadataTrackList extends IInspectable
    implements
        IVectorView<TimedMetadataTrack>,
        IIterable<TimedMetadataTrack>,
        IMediaPlaybackTimedMetadataTrackList {
  MediaPlaybackTimedMetadataTrackList.fromRawPointer(super.ptr);

  // IVectorView<TimedMetadataTrack> methods
  late final _iVectorView = IVectorView<TimedMetadataTrack>.fromRawPointer(
      toInterface('{0313ae7a-2803-5d45-b5a1-a0fc5cd55e7c}'),
      creator: TimedMetadataTrack.fromRawPointer,
      iterableIid: '{150a4454-03bb-5dd1-8153-6a600e851f71}');

  @override
  TimedMetadataTrack getAt(int index) => _iVectorView.getAt(index);

  @override
  int get size => _iVectorView.size;

  @override
  bool indexOf(TimedMetadataTrack value, Pointer<Uint32> index) =>
      _iVectorView.indexOf(value, index);

  @override
  int getMany(int startIndex, int valueSize, Pointer<NativeType> value) =>
      _iVectorView.getMany(startIndex, valueSize, value);

  @override
  IIterator<TimedMetadataTrack> first() => _iVectorView.first();

  @override
  List<TimedMetadataTrack> toList() => _iVectorView.toList();

  // IMediaPlaybackTimedMetadataTrackList methods
  late final _iMediaPlaybackTimedMetadataTrackList =
      IMediaPlaybackTimedMetadataTrackList.from(this);

  @override
  int add_PresentationModeChanged(
          Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iMediaPlaybackTimedMetadataTrackList
          .add_PresentationModeChanged(handler);

  @override
  void remove_PresentationModeChanged(int token) =>
      _iMediaPlaybackTimedMetadataTrackList
          .remove_PresentationModeChanged(token);
}

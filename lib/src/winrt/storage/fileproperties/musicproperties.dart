// musicproperties.dart

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
import '../../foundation/collections/ikeyvaluepair.dart';
import '../../foundation/collections/imap.dart';
import '../../foundation/collections/ivector.dart';
import '../../foundation/iasyncaction.dart';
import '../../foundation/iasyncoperation.dart';
import '../../internal/hstring_array.dart';
import 'imusicproperties.dart';
import 'istorageitemextraproperties.dart';

/// Provides access to the music-related properties of an item (like a file
/// or folder).
///
/// {@category Class}
/// {@category winrt}
class MusicProperties extends IInspectable
    implements IMusicProperties, IStorageItemExtraProperties {
  MusicProperties.fromRawPointer(super.ptr);

  // IMusicProperties methods
  late final _iMusicProperties = IMusicProperties.from(this);

  @override
  String get album => _iMusicProperties.album;

  @override
  set album(String value) => _iMusicProperties.album = value;

  @override
  String get artist => _iMusicProperties.artist;

  @override
  set artist(String value) => _iMusicProperties.artist = value;

  @override
  IVector<String> get genre => _iMusicProperties.genre;

  @override
  int get trackNumber => _iMusicProperties.trackNumber;

  @override
  set trackNumber(int value) => _iMusicProperties.trackNumber = value;

  @override
  String get title => _iMusicProperties.title;

  @override
  set title(String value) => _iMusicProperties.title = value;

  @override
  int get rating => _iMusicProperties.rating;

  @override
  set rating(int value) => _iMusicProperties.rating = value;

  @override
  Duration get duration => _iMusicProperties.duration;

  @override
  int get bitrate => _iMusicProperties.bitrate;

  @override
  String get albumArtist => _iMusicProperties.albumArtist;

  @override
  set albumArtist(String value) => _iMusicProperties.albumArtist = value;

  @override
  IVector<String> get composers => _iMusicProperties.composers;

  @override
  IVector<String> get conductors => _iMusicProperties.conductors;

  @override
  String get subtitle => _iMusicProperties.subtitle;

  @override
  set subtitle(String value) => _iMusicProperties.subtitle = value;

  @override
  IVector<String> get producers => _iMusicProperties.producers;

  @override
  String get publisher => _iMusicProperties.publisher;

  @override
  set publisher(String value) => _iMusicProperties.publisher = value;

  @override
  IVector<String> get writers => _iMusicProperties.writers;

  @override
  int get year => _iMusicProperties.year;

  @override
  set year(int value) => _iMusicProperties.year = value;

  // IStorageItemExtraProperties methods
  late final _iStorageItemExtraProperties =
      IStorageItemExtraProperties.from(this);

  @override
  Future<IMap<String, Object?>> retrievePropertiesAsync(
          IIterable<String>? propertiesToRetrieve) =>
      _iStorageItemExtraProperties
          .retrievePropertiesAsync(propertiesToRetrieve);

  @override
  Future<void> savePropertiesAsync(
          IIterable<IKeyValuePair<String, Object?>>? propertiesToSave) =>
      _iStorageItemExtraProperties.savePropertiesAsync(propertiesToSave);

  @override
  Future<void> savePropertiesAsyncOverloadDefault() =>
      _iStorageItemExtraProperties.savePropertiesAsyncOverloadDefault();
}

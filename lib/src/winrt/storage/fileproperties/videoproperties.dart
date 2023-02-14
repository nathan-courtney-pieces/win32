// videoproperties.dart

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
import '../../foundation/ireference.dart';
import '../../internal/hstring_array.dart';
import 'enums.g.dart';
import 'istorageitemextraproperties.dart';
import 'ivideoproperties.dart';

/// Provides access to the video-related properties of an item (like a file
/// or folder).
///
/// {@category Class}
/// {@category winrt}
class VideoProperties extends IInspectable
    implements IVideoProperties, IStorageItemExtraProperties {
  VideoProperties.fromRawPointer(super.ptr);

  // IVideoProperties methods
  late final _iVideoProperties = IVideoProperties.from(this);

  @override
  int get rating => _iVideoProperties.rating;

  @override
  set rating(int value) => _iVideoProperties.rating = value;

  @override
  IVector<String> get keywords => _iVideoProperties.keywords;

  @override
  int get width => _iVideoProperties.width;

  @override
  int get height => _iVideoProperties.height;

  @override
  Duration get duration => _iVideoProperties.duration;

  @override
  double? get latitude => _iVideoProperties.latitude;

  @override
  double? get longitude => _iVideoProperties.longitude;

  @override
  String get title => _iVideoProperties.title;

  @override
  set title(String value) => _iVideoProperties.title = value;

  @override
  String get subtitle => _iVideoProperties.subtitle;

  @override
  set subtitle(String value) => _iVideoProperties.subtitle = value;

  @override
  IVector<String> get producers => _iVideoProperties.producers;

  @override
  String get publisher => _iVideoProperties.publisher;

  @override
  set publisher(String value) => _iVideoProperties.publisher = value;

  @override
  IVector<String> get writers => _iVideoProperties.writers;

  @override
  int get year => _iVideoProperties.year;

  @override
  set year(int value) => _iVideoProperties.year = value;

  @override
  int get bitrate => _iVideoProperties.bitrate;

  @override
  IVector<String> get directors => _iVideoProperties.directors;

  @override
  VideoOrientation get orientation => _iVideoProperties.orientation;

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

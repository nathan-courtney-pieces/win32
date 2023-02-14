// imageproperties.dart

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
import '../../foundation/collections/ivectorview.dart';
import '../../foundation/iasyncaction.dart';
import '../../foundation/iasyncoperation.dart';
import '../../foundation/ireference.dart';
import '../../internal/hstring_array.dart';
import 'enums.g.dart';
import 'iimageproperties.dart';
import 'istorageitemextraproperties.dart';

/// Provides access to the image-related properties of an item (like a file
/// or folder).
///
/// {@category Class}
/// {@category winrt}
class ImageProperties extends IInspectable
    implements IImageProperties, IStorageItemExtraProperties {
  ImageProperties.fromRawPointer(super.ptr);

  // IImageProperties methods
  late final _iImageProperties = IImageProperties.from(this);

  @override
  int get rating => _iImageProperties.rating;

  @override
  set rating(int value) => _iImageProperties.rating = value;

  @override
  IVector<String> get keywords => _iImageProperties.keywords;

  @override
  DateTime get dateTaken => _iImageProperties.dateTaken;

  @override
  set dateTaken(DateTime value) => _iImageProperties.dateTaken = value;

  @override
  int get width => _iImageProperties.width;

  @override
  int get height => _iImageProperties.height;

  @override
  String get title => _iImageProperties.title;

  @override
  set title(String value) => _iImageProperties.title = value;

  @override
  double? get latitude => _iImageProperties.latitude;

  @override
  double? get longitude => _iImageProperties.longitude;

  @override
  String get cameraManufacturer => _iImageProperties.cameraManufacturer;

  @override
  set cameraManufacturer(String value) =>
      _iImageProperties.cameraManufacturer = value;

  @override
  String get cameraModel => _iImageProperties.cameraModel;

  @override
  set cameraModel(String value) => _iImageProperties.cameraModel = value;

  @override
  PhotoOrientation get orientation => _iImageProperties.orientation;

  @override
  List<String> get peopleNames => _iImageProperties.peopleNames;

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

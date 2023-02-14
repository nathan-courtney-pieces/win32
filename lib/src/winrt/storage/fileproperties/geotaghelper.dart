// geotaghelper.dart

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
import '../../devices/geolocation/geolocator.dart';
import '../../devices/geolocation/geopoint.dart';
import '../../foundation/iasyncaction.dart';
import '../../foundation/iasyncoperation.dart';
import '../../internal/hstring_array.dart';
import '../istoragefile.dart';
import 'igeotaghelperstatics.dart';

/// Provides methods for setting and retrieving geographic metadata for a
/// file.
///
/// {@category Class}
/// {@category winrt}
class GeotagHelper extends IInspectable {
  GeotagHelper.fromRawPointer(super.ptr);

  static const _className = 'Windows.Storage.FileProperties.GeotagHelper';

  // IGeotagHelperStatics methods
  static Future<Geopoint?> getGeotagAsync(IStorageFile? file) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IGeotagHelperStatics);
    final object = IGeotagHelperStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.getGeotagAsync(file);
    } finally {
      object.release();
    }
  }

  static Future<void> setGeotagFromGeolocatorAsync(
      IStorageFile? file, Geolocator? geolocator) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IGeotagHelperStatics);
    final object = IGeotagHelperStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.setGeotagFromGeolocatorAsync(file, geolocator);
    } finally {
      object.release();
    }
  }

  static Future<void> setGeotagAsync(IStorageFile? file, Geopoint? geopoint) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IGeotagHelperStatics);
    final object = IGeotagHelperStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.setGeotagAsync(file, geopoint);
    } finally {
      object.release();
    }
  }
}

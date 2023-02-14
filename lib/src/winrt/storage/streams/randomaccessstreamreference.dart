// randomaccessstreamreference.dart

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
import '../../foundation/iasyncoperation.dart';
import '../../foundation/uri.dart' as winrt_uri;
import '../../internal/hstring_array.dart';
import '../istoragefile.dart';
import 'irandomaccessstream.dart';
import 'irandomaccessstreamreference.dart';
import 'irandomaccessstreamreferencestatics.dart';
import 'irandomaccessstreamwithcontenttype.dart';

/// Provides random aaccess of data in input and output streams for a file.
///
/// {@category Class}
/// {@category winrt}
class RandomAccessStreamReference extends IInspectable
    implements IRandomAccessStreamReference {
  RandomAccessStreamReference.fromRawPointer(super.ptr);

  static const _className =
      'Windows.Storage.Streams.RandomAccessStreamReference';

  // IRandomAccessStreamReferenceStatics methods
  static RandomAccessStreamReference? createFromFile(IStorageFile? file) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IRandomAccessStreamReferenceStatics);
    final object = IRandomAccessStreamReferenceStatics.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.createFromFile(file);
    } finally {
      object.release();
    }
  }

  static RandomAccessStreamReference? createFromUri(Uri? uri) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IRandomAccessStreamReferenceStatics);
    final object = IRandomAccessStreamReferenceStatics.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.createFromUri(uri);
    } finally {
      object.release();
    }
  }

  static RandomAccessStreamReference? createFromStream(
      IRandomAccessStream? stream) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IRandomAccessStreamReferenceStatics);
    final object = IRandomAccessStreamReferenceStatics.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.createFromStream(stream);
    } finally {
      object.release();
    }
  }

  // IRandomAccessStreamReference methods
  late final _iRandomAccessStreamReference =
      IRandomAccessStreamReference.from(this);

  @override
  Future<IRandomAccessStreamWithContentType?> openReadAsync() =>
      _iRandomAccessStreamReference.openReadAsync();
}

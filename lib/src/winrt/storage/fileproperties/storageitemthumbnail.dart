// storageitemthumbnail.dart

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
import '../../foundation/iasyncoperationwithprogress.dart';
import '../../foundation/iclosable.dart';
import '../../internal/hstring_array.dart';
import '../streams/enums.g.dart';
import '../streams/ibuffer.dart';
import '../streams/icontenttypeprovider.dart';
import '../streams/iinputstream.dart';
import '../streams/ioutputstream.dart';
import '../streams/irandomaccessstream.dart';
import '../streams/irandomaccessstreamwithcontenttype.dart';
import 'enums.g.dart';
import 'ithumbnailproperties.dart';

/// Represents the thumbnail image associated with a system resource (like a
/// file or folder).
///
/// {@category Class}
/// {@category winrt}
class StorageItemThumbnail extends IInspectable
    implements
        IRandomAccessStreamWithContentType,
        IContentTypeProvider,
        IRandomAccessStream,
        IOutputStream,
        IClosable,
        IInputStream,
        IThumbnailProperties {
  StorageItemThumbnail.fromRawPointer(super.ptr);

  // IContentTypeProvider methods
  late final _iContentTypeProvider = IContentTypeProvider.from(this);

  @override
  String get contentType => _iContentTypeProvider.contentType;

  // IRandomAccessStream methods
  late final _iRandomAccessStream = IRandomAccessStream.from(this);

  @override
  int get size => _iRandomAccessStream.size;

  @override
  set size(int value) => _iRandomAccessStream.size = value;

  @override
  IInputStream? getInputStreamAt(int position) =>
      _iRandomAccessStream.getInputStreamAt(position);

  @override
  IOutputStream? getOutputStreamAt(int position) =>
      _iRandomAccessStream.getOutputStreamAt(position);

  @override
  int get position => _iRandomAccessStream.position;

  @override
  void seek(int position) => _iRandomAccessStream.seek(position);

  @override
  IRandomAccessStream? cloneStream() => _iRandomAccessStream.cloneStream();

  @override
  bool get canRead => _iRandomAccessStream.canRead;

  @override
  bool get canWrite => _iRandomAccessStream.canWrite;

  // IOutputStream methods
  late final _iOutputStream = IOutputStream.from(this);

  @override
  Pointer<COMObject> writeAsync(IBuffer? buffer) =>
      _iOutputStream.writeAsync(buffer);

  @override
  Future<bool> flushAsync() => _iOutputStream.flushAsync();

  // IClosable methods
  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();

  // IInputStream methods
  late final _iInputStream = IInputStream.from(this);

  @override
  Pointer<COMObject> readAsync(
          IBuffer? buffer, int count, InputStreamOptions options) =>
      _iInputStream.readAsync(buffer, count, options);

  // IThumbnailProperties methods
  late final _iThumbnailProperties = IThumbnailProperties.from(this);

  @override
  int get originalWidth => _iThumbnailProperties.originalWidth;

  @override
  int get originalHeight => _iThumbnailProperties.originalHeight;

  @override
  bool get returnedSmallerCachedSize =>
      _iThumbnailProperties.returnedSmallerCachedSize;

  @override
  ThumbnailType get type => _iThumbnailProperties.type;
}

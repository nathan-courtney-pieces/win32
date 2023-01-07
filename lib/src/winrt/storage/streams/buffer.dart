// buffer.dart

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
import 'ibuffer.dart';
import 'ibufferfactory.dart';
import 'ibufferstatics.dart';

/// Represents a referenced array of bytes used by byte stream read and
/// write interfaces. Buffer is the class implementation of this interface.
///
/// {@category Class}
/// {@category winrt}
class Buffer extends IInspectable implements IBuffer {
  Buffer.fromRawPointer(super.ptr);

  static const _className = 'Windows.Storage.Streams.Buffer';

  // IBufferFactory methods
  static Buffer create(int capacity) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IBufferFactory);
    final object = IBufferFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.create(capacity);
    } finally {
      object.release();
    }
  }

  // IBuffer methods
  late final _iBuffer = IBuffer.from(this);

  @override
  int get capacity => _iBuffer.capacity;

  @override
  int get length => _iBuffer.length;

  @override
  set length(int value) => _iBuffer.length = value;
}

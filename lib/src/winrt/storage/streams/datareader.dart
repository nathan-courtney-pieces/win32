// datareader.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../com/iinspectable.dart';
import '../../../combase.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../types.dart';
import '../../../utils.dart';
import '../../../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';
import '../../../winrt_callbacks.dart';
import '../../../winrt_helpers.dart';
import '../../foundation/iclosable.dart';
import '../../internal/hstring_array.dart';
import 'enums.g.dart';
import 'ibuffer.dart';
import 'idatareader.dart';
import 'idatareaderfactory.dart';
import 'idatareaderstatics.dart';
import 'iinputstream.dart';

/// Reads data from an input stream.
///
/// {@category Class}
/// {@category winrt}
class DataReader extends IInspectable implements IDataReader, IClosable {
  DataReader.fromRawPointer(super.ptr);

  static const _className = 'Windows.Storage.Streams.DataReader';

  // IDataReaderFactory methods
  static DataReader createDataReader(IInputStream inputStream) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IDataReaderFactory);
    final object = IDataReaderFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createDataReader(inputStream);
    } finally {
      object.release();
    }
  }

  // IDataReaderStatics methods
  static DataReader? fromBuffer(IBuffer? buffer) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IDataReaderStatics);
    final object = IDataReaderStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.fromBuffer(buffer);
    } finally {
      object.release();
    }
  }

  // IDataReader methods
  late final _iDataReader = IDataReader.from(this);

  @override
  int get unconsumedBufferLength => _iDataReader.unconsumedBufferLength;

  @override
  set inputStreamOptions(InputStreamOptions value) =>
      _iDataReader.inputStreamOptions = value;

  @override
  int readByte() => _iDataReader.readByte();

  @override
  void readBytes(int valueSize, Pointer<Uint8> value) =>
      _iDataReader.readBytes(valueSize, value);

  @override
  IBuffer? readBuffer(int length) => _iDataReader.readBuffer(length);

  @override
  bool readBoolean() => _iDataReader.readBoolean();

  @override
  Guid readGuid() => _iDataReader.readGuid();

  @override
  int readInt16() => _iDataReader.readInt16();

  @override
  int readInt32() => _iDataReader.readInt32();

  @override
  int readInt64() => _iDataReader.readInt64();

  @override
  int readUInt16() => _iDataReader.readUInt16();

  @override
  int readUInt32() => _iDataReader.readUInt32();

  @override
  int readUInt64() => _iDataReader.readUInt64();

  @override
  double readSingle() => _iDataReader.readSingle();

  @override
  double readDouble() => _iDataReader.readDouble();

  @override
  String readString(int codeUnitCount) =>
      _iDataReader.readString(codeUnitCount);

  @override
  DateTime readDateTime() => _iDataReader.readDateTime();

  @override
  Duration readTimeSpan() => _iDataReader.readTimeSpan();

  @override
  IBuffer? detachBuffer() => _iDataReader.detachBuffer();

  @override
  IInputStream? detachStream() => _iDataReader.detachStream();

  // IClosable methods
  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}

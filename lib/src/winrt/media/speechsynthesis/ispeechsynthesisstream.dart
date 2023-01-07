// ispeechsynthesisstream.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
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
import '../../foundation/collections/ivectorview.dart';
import '../../foundation/iasyncoperation.dart';
import '../../foundation/iclosable.dart';
import '../../internal/async_helpers.dart';
import '../../internal/hstring_array.dart';
import '../../storage/streams/enums.g.dart';
import '../../storage/streams/ibuffer.dart';
import '../../storage/streams/icontenttypeprovider.dart';
import '../../storage/streams/iinputstream.dart';
import '../../storage/streams/ioutputstream.dart';
import '../../storage/streams/irandomaccessstream.dart';
import '../../storage/streams/irandomaccessstreamwithcontenttype.dart';
import '../imediamarker.dart';

/// @nodoc
const IID_ISpeechSynthesisStream = '{83e46e93-244c-4622-ba0b-6229c4d0d65d}';

/// {@category Interface}
/// {@category winrt}
class ISpeechSynthesisStream extends IInspectable
    implements
        IRandomAccessStreamWithContentType,
        IRandomAccessStream,
        IClosable,
        IInputStream,
        IOutputStream,
        IContentTypeProvider {
  // vtable begins at 6, is 1 entries long.
  ISpeechSynthesisStream.fromRawPointer(super.ptr);

  factory ISpeechSynthesisStream.from(IInspectable interface) =>
      ISpeechSynthesisStream.fromRawPointer(
          interface.toInterface(IID_ISpeechSynthesisStream));

  List<IMediaMarker> get markers {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final vectorView = IVectorView<IMediaMarker>.fromRawPointer(retValuePtr,
        iterableIid: '{a1c0a397-0364-5e4c-9dca-7cd7011bd114}',
        creator: IMediaMarker.fromRawPointer);
    final list = vectorView.toList();
    vectorView.release();

    return list;
  }

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

  // IOutputStream methods
  late final _iOutputStream = IOutputStream.from(this);

  @override
  Pointer<COMObject> writeAsync(IBuffer? buffer) =>
      _iOutputStream.writeAsync(buffer);

  @override
  Future<bool> flushAsync() => _iOutputStream.flushAsync();

  // IContentTypeProvider methods
  late final _iContentTypeProvider = IContentTypeProvider.from(this);

  @override
  String get contentType => _iContentTypeProvider.contentType;
}

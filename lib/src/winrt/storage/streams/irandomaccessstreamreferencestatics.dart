// irandomaccessstreamreferencestatics.dart

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
import '../../foundation/uri.dart' as winrt_uri;
import '../../internal/hstring_array.dart';
import '../istoragefile.dart';
import 'irandomaccessstream.dart';
import 'randomaccessstreamreference.dart';

/// @nodoc
const IID_IRandomAccessStreamReferenceStatics =
    '{857309dc-3fbf-4e7d-986f-ef3b1a07a964}';

/// {@category Interface}
/// {@category winrt}
class IRandomAccessStreamReferenceStatics extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IRandomAccessStreamReferenceStatics.fromRawPointer(super.ptr);

  factory IRandomAccessStreamReferenceStatics.from(IInspectable interface) =>
      IRandomAccessStreamReferenceStatics.fromRawPointer(
          interface.toInterface(IID_IRandomAccessStreamReferenceStatics));

  RandomAccessStreamReference? createFromFile(IStorageFile? file) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> file,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, Pointer<COMObject> file, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        file == null ? nullptr : file.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return RandomAccessStreamReference.fromRawPointer(retValuePtr);
  }

  RandomAccessStreamReference? createFromUri(Uri? uri) {
    final retValuePtr = calloc<COMObject>();
    final uriUri = winrt_uri.Uri.createUri(uri.toString());

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> uri,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, Pointer<COMObject> uri, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        uri == null ? nullptr : uriUri.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    uriUri.release();

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return RandomAccessStreamReference.fromRawPointer(retValuePtr);
  }

  RandomAccessStreamReference? createFromStream(IRandomAccessStream? stream) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> stream,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, Pointer<COMObject> stream, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        stream == null ? nullptr : stream.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return RandomAccessStreamReference.fromRawPointer(retValuePtr);
  }
}

// igeotaghelperstatics.dart

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
import '../../devices/geolocation/geolocator.dart';
import '../../devices/geolocation/geopoint.dart';
import '../../foundation/iasyncaction.dart';
import '../../foundation/iasyncoperation.dart';
import '../../internal/async_helpers.dart';
import '../../internal/hstring_array.dart';
import '../istoragefile.dart';

/// @nodoc
const IID_IGeotagHelperStatics = '{41493244-2524-4655-86a6-ed16f5fc716b}';

/// {@category Interface}
/// {@category winrt}
class IGeotagHelperStatics extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IGeotagHelperStatics.fromRawPointer(super.ptr);

  factory IGeotagHelperStatics.from(IInspectable interface) =>
      IGeotagHelperStatics.fromRawPointer(
          interface.toInterface(IID_IGeotagHelperStatics));

  Future<Geopoint?> getGeotagAsync(IStorageFile? file) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<Geopoint?>();

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

    final asyncOperation = IAsyncOperation<Geopoint?>.fromRawPointer(
        retValuePtr,
        creator: Geopoint.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<void> setGeotagFromGeolocatorAsync(
      IStorageFile? file, Geolocator? geolocator) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer,
                                Pointer<COMObject> file,
                                Pointer<COMObject> geolocator,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, Pointer<COMObject> file,
                        Pointer<COMObject> geolocator, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            file == null ? nullptr : file.ptr.cast<Pointer<COMObject>>().value,
            geolocator == null
                ? nullptr
                : geolocator.ptr.cast<Pointer<COMObject>>().value,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }

  Future<void> setGeotagAsync(IStorageFile? file, Geopoint? geopoint) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer,
                                Pointer<COMObject> file,
                                Pointer<COMObject> geopoint,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, Pointer<COMObject> file,
                        Pointer<COMObject> geopoint, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            file == null ? nullptr : file.ptr.cast<Pointer<COMObject>>().value,
            geopoint == null
                ? nullptr
                : geopoint.ptr.cast<Pointer<COMObject>>().value,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }
}

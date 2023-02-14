// iqueryoptions.dart

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
import '../../foundation/collections/ivector.dart';
import '../../internal/hstring_array.dart';
import '../fileproperties/enums.g.dart';
import 'enums.g.dart';
import 'structs.g.dart';

/// @nodoc
const IID_IQueryOptions = '{1e5e46ee-0f45-4838-a8e9-d0479d446c30}';

/// {@category Interface}
/// {@category winrt}
class IQueryOptions extends IInspectable {
  // vtable begins at 6, is 18 entries long.
  IQueryOptions.fromRawPointer(super.ptr);

  factory IQueryOptions.from(IInspectable interface) =>
      IQueryOptions.fromRawPointer(interface.toInterface(IID_IQueryOptions));

  IVector<String> get fileTypeFilter {
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

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}');
  }

  FolderDepth get folderDepth {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return FolderDepth.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  set folderDepth(FolderDepth value) {
    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Int32)>>>()
        .value
        .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, value.value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  String get applicationSearchFilter {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  set applicationSearchFilter(String value) {
    final hstr = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(10)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, IntPtr)>>>()
          .value
          .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, hstr);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hstr);
    }
  }

  String get userSearchFilter {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  set userSearchFilter(String value) {
    final hstr = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(12)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, IntPtr)>>>()
          .value
          .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, hstr);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hstr);
    }
  }

  String get language {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  set language(String value) {
    final hstr = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(14)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, IntPtr)>>>()
          .value
          .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, hstr);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hstr);
    }
  }

  IndexerOption get indexerOption {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return IndexerOption.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  set indexerOption(IndexerOption value) {
    final hr = ptr.ref.vtable
        .elementAt(16)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Int32)>>>()
        .value
        .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, value.value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  IVector<SortEntry> get sortOrder {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(17)
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

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{35aff6f9-ef75-5280-bb84-a2bf8317cf35}');
  }

  String get groupPropertyName {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  DateStackOption get dateStackOption {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return DateStackOption.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  String saveToString() {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  void loadFromString(String value) {
    final valueHstring = convertToHString(value);

    final hr = ptr.ref.vtable
        .elementAt(21)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, IntPtr value)>>>()
        .value
        .asFunction<
            int Function(Pointer, int value)>()(ptr.ref.lpVtbl, valueHstring);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(valueHstring);
  }

  void setThumbnailPrefetch(
      ThumbnailMode mode, int requestedSize, ThumbnailOptions options) {
    final hr =
        ptr.ref.vtable
                .elementAt(22)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(Pointer, Int32 mode,
                                Uint32 requestedSize, Uint32 options)>>>()
                .value
                .asFunction<
                    int Function(
                        Pointer, int mode, int requestedSize, int options)>()(
            ptr.ref.lpVtbl, mode.value, requestedSize, options.value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void setPropertyPrefetch(PropertyPrefetchOptions options,
      IIterable<String>? propertiesToRetrieve) {
    final hr = ptr.ref.vtable
            .elementAt(23)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32 options,
                            Pointer<COMObject> propertiesToRetrieve)>>>()
            .value
            .asFunction<
                int Function(Pointer, int options,
                    Pointer<COMObject> propertiesToRetrieve)>()(
        ptr.ref.lpVtbl,
        options.value,
        propertiesToRetrieve == null
            ? nullptr
            : propertiesToRetrieve.ptr.cast<Pointer<COMObject>>().value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

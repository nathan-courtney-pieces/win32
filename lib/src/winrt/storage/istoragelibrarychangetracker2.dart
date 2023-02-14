// istoragelibrarychangetracker2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../com/iinspectable.dart';
import '../../combase.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../types.dart';
import '../../utils.dart';
import '../../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';
import '../../winrt_callbacks.dart';
import '../../winrt_helpers.dart';
import '../internal/hstring_array.dart';
import 'storagelibrarychangetrackeroptions.dart';

/// @nodoc
const IID_IStorageLibraryChangeTracker2 =
    '{cd051c3b-0f9f-42f9-8fb3-158d82e13821}';

/// {@category Interface}
/// {@category winrt}
class IStorageLibraryChangeTracker2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IStorageLibraryChangeTracker2.fromRawPointer(super.ptr);

  factory IStorageLibraryChangeTracker2.from(IInspectable interface) =>
      IStorageLibraryChangeTracker2.fromRawPointer(
          interface.toInterface(IID_IStorageLibraryChangeTracker2));

  void enableWithOptions(StorageLibraryChangeTrackerOptions? options) {
    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer, Pointer<COMObject> options)>>>()
                .value
                .asFunction<
                    int Function(Pointer, Pointer<COMObject> options)>()(
            ptr.ref.lpVtbl,
            options == null
                ? nullptr
                : options.ptr.cast<Pointer<COMObject>>().value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void disable() {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer)>>>()
        .value
        .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

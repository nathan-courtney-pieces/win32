// ipackage9.dart

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
import '../foundation/collections/ivector.dart';
import '../internal/hstring_array.dart';
import 'findrelatedpackagesoptions.dart';
import 'package.dart';

/// @nodoc
const IID_IPackage9 = '{d5ab224f-d7e1-49ec-90ce-720cdbd02e9c}';

/// {@category Interface}
/// {@category winrt}
class IPackage9 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IPackage9.fromRawPointer(super.ptr);

  factory IPackage9.from(IInspectable interface) =>
      IPackage9.fromRawPointer(interface.toInterface(IID_IPackage9));

  IVector<Package> findRelatedPackages(FindRelatedPackagesOptions? options) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> options,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, Pointer<COMObject> options, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        options == null
            ? nullptr
            : options.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        creator: Package.fromRawPointer);
  }

  String get sourceUriSchemeName {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
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
}

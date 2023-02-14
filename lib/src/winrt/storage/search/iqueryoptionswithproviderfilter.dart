// iqueryoptionswithproviderfilter.dart

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
import '../../foundation/collections/ivector.dart';
import '../../internal/hstring_array.dart';

/// @nodoc
const IID_IQueryOptionsWithProviderFilter =
    '{5b9d1026-15c4-44dd-b89a-47a59b7d7c4f}';

/// {@category Interface}
/// {@category winrt}
class IQueryOptionsWithProviderFilter extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IQueryOptionsWithProviderFilter.fromRawPointer(super.ptr);

  factory IQueryOptionsWithProviderFilter.from(IInspectable interface) =>
      IQueryOptionsWithProviderFilter.fromRawPointer(
          interface.toInterface(IID_IQueryOptionsWithProviderFilter));

  IVector<String> get storageProviderIdFilter {
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
}

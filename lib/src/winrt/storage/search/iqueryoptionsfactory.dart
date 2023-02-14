// iqueryoptionsfactory.dart

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
import '../../internal/hstring_array.dart';
import 'enums.g.dart';
import 'queryoptions.dart';

/// @nodoc
const IID_IQueryOptionsFactory = '{032e1f8c-a9c1-4e71-8011-0dee9d4811a3}';

/// {@category Interface}
/// {@category winrt}
class IQueryOptionsFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IQueryOptionsFactory.fromRawPointer(super.ptr);

  factory IQueryOptionsFactory.from(IInspectable interface) =>
      IQueryOptionsFactory.fromRawPointer(
          interface.toInterface(IID_IQueryOptionsFactory));

  QueryOptions createCommonFileQuery(
      CommonFileQuery query, IIterable<String> fileTypeFilter) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Int32 query,
                            Pointer<COMObject> fileTypeFilter,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int query,
                    Pointer<COMObject> fileTypeFilter, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        query.value,
        fileTypeFilter.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return QueryOptions.fromRawPointer(retValuePtr);
  }

  QueryOptions createCommonFolderQuery(CommonFolderQuery query) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Int32 query, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, int query, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, query.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return QueryOptions.fromRawPointer(retValuePtr);
  }
}

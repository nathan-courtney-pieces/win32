// ifindrelatedpackagesoptionsfactory.dart

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
import 'enums.g.dart';
import 'findrelatedpackagesoptions.dart';

/// @nodoc
const IID_IFindRelatedPackagesOptionsFactory =
    '{d7d17254-a4fd-55c4-98cf-f2710b7d8be2}';

/// {@category Interface}
/// {@category winrt}
class IFindRelatedPackagesOptionsFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IFindRelatedPackagesOptionsFactory.fromRawPointer(super.ptr);

  factory IFindRelatedPackagesOptionsFactory.from(IInspectable interface) =>
      IFindRelatedPackagesOptionsFactory.fromRawPointer(
          interface.toInterface(IID_IFindRelatedPackagesOptionsFactory));

  FindRelatedPackagesOptions createInstance(PackageRelationship Relationship) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Int32 Relationship,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int Relationship, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, Relationship.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return FindRelatedPackagesOptions.fromRawPointer(retValuePtr);
  }
}

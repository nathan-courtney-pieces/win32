// istagepackageoptions2.dart

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
import '../../foundation/collections/imap.dart';
import '../../foundation/uri.dart' as winrt_uri;
import '../../internal/hstring_array.dart';

/// @nodoc
const IID_IStagePackageOptions2 = '{990c4ccc-6226-4192-ba92-79875fce0d9c}';

/// {@category Interface}
/// {@category winrt}
class IStagePackageOptions2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IStagePackageOptions2.fromRawPointer(super.ptr);

  factory IStagePackageOptions2.from(IInspectable interface) =>
      IStagePackageOptions2.fromRawPointer(
          interface.toInterface(IID_IStagePackageOptions2));

  IMap<Uri, String> get expectedDigests {
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

    return IMap.fromRawPointer(retValuePtr,
        iterableIid: '{52129c53-b03d-59b3-a27e-b0385643e9fe}');
  }
}

// ibufferfactory.dart

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
import '../../internal/hstring_array.dart';
import 'buffer.dart';

/// @nodoc
const IID_IBufferFactory = '{71af914d-c10f-484b-bc50-14bc623b3a27}';

/// Represents a referenced array of bytes used by byte stream read and
/// write interfaces. Buffer is the class implementation of this interface.
///
/// {@category Interface}
/// {@category winrt}
class IBufferFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IBufferFactory.fromRawPointer(super.ptr);

  factory IBufferFactory.from(IInspectable interface) =>
      IBufferFactory.fromRawPointer(interface.toInterface(IID_IBufferFactory));

  Buffer create(int capacity) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Uint32 capacity, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int capacity, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, capacity, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return Buffer.fromRawPointer(retValuePtr);
  }
}

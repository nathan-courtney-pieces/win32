// imediaitemdisplayproperties.dart

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

/// @nodoc
const IID_IMediaItemDisplayProperties =
    '{1e3c1b48-7097-4384-a217-c1291dfa8c16}';

/// {@category Interface}
/// {@category winrt}
class IMediaItemDisplayProperties extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IMediaItemDisplayProperties.fromRawPointer(super.ptr);

  factory IMediaItemDisplayProperties.from(IInspectable interface) =>
      IMediaItemDisplayProperties.fromRawPointer(
          interface.toInterface(IID_IMediaItemDisplayProperties));

  void clearAll() {
    final hr = ptr.ref.vtable
        .elementAt(12)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer)>>>()
        .value
        .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

// ibufferstatics.dart

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
import 'ibuffer.dart';

/// @nodoc
const IID_IBufferStatics = '{e901e65b-d716-475a-a90a-af7229b1e741}';

/// Represents a referenced array of bytes used by byte stream read and
/// write interfaces. Buffer is the class implementation of this interface.
///
/// {@category Interface}
/// {@category winrt}
class IBufferStatics extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IBufferStatics.fromRawPointer(super.ptr);

  factory IBufferStatics.from(IInspectable interface) =>
      IBufferStatics.fromRawPointer(interface.toInterface(IID_IBufferStatics));
}

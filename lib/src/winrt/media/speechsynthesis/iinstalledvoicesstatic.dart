// iinstalledvoicesstatic.dart

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
import '../../foundation/collections/ivectorview.dart';
import '../../internal/hstring_array.dart';
import 'voiceinformation.dart';

/// @nodoc
const IID_IInstalledVoicesStatic = '{7d526ecc-7533-4c3f-85be-888c2baeebdc}';

/// {@category Interface}
/// {@category winrt}
class IInstalledVoicesStatic extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IInstalledVoicesStatic.fromRawPointer(super.ptr);

  factory IInstalledVoicesStatic.from(IInspectable interface) =>
      IInstalledVoicesStatic.fromRawPointer(
          interface.toInterface(IID_IInstalledVoicesStatic));

  List<VoiceInformation> get allVoices {
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

    final vectorView = IVectorView<VoiceInformation>.fromRawPointer(retValuePtr,
        iterableIid: '{3c33bb52-bd98-5c8c-adee-ee8da0628efc}',
        creator: VoiceInformation.fromRawPointer);
    final list = vectorView.toList();
    vectorView.release();

    return list;
  }

  VoiceInformation? get defaultVoice {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return VoiceInformation.fromRawPointer(retValuePtr);
  }
}

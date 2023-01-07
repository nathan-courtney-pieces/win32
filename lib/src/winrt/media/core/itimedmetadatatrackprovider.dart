// itimedmetadatatrackprovider.dart

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
import 'timedmetadatatrack.dart';

/// @nodoc
const IID_ITimedMetadataTrackProvider =
    '{3b7f2024-f74e-4ade-93c5-219da05b6856}';

/// {@category Interface}
/// {@category winrt}
class ITimedMetadataTrackProvider extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ITimedMetadataTrackProvider.fromRawPointer(super.ptr);

  factory ITimedMetadataTrackProvider.from(IInspectable interface) =>
      ITimedMetadataTrackProvider.fromRawPointer(
          interface.toInterface(IID_ITimedMetadataTrackProvider));

  List<TimedMetadataTrack> get timedMetadataTracks {
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

    final vectorView = IVectorView<TimedMetadataTrack>.fromRawPointer(
        retValuePtr,
        iterableIid: '{150a4454-03bb-5dd1-8153-6a600e851f71}',
        creator: TimedMetadataTrack.fromRawPointer);
    final list = vectorView.toList();
    vectorView.release();

    return list;
  }
}

// imediaplaybackitemstatics.dart

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
import '../core/mediasource.dart';
import 'mediaplaybackitem.dart';

/// @nodoc
const IID_IMediaPlaybackItemStatics = '{4b1be7f4-4345-403c-8a67-f5de91df4c86}';

/// {@category Interface}
/// {@category winrt}
class IMediaPlaybackItemStatics extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IMediaPlaybackItemStatics.fromRawPointer(super.ptr);

  factory IMediaPlaybackItemStatics.from(IInspectable interface) =>
      IMediaPlaybackItemStatics.fromRawPointer(
          interface.toInterface(IID_IMediaPlaybackItemStatics));

  MediaPlaybackItem? findFromMediaSource(MediaSource? source) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> source,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, Pointer<COMObject> source, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        source == null ? nullptr : source.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return MediaPlaybackItem.fromRawPointer(retValuePtr);
  }
}

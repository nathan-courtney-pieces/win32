// imediaplaybackitemfactory2.dart

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
import 'imediaplaybackitemfactory.dart';
import 'mediaplaybackitem.dart';

/// @nodoc
const IID_IMediaPlaybackItemFactory2 = '{d77cdf3a-b947-4972-b35d-adfb931a71e6}';

/// {@category Interface}
/// {@category winrt}
class IMediaPlaybackItemFactory2 extends IInspectable
    implements IMediaPlaybackItemFactory {
  // vtable begins at 6, is 2 entries long.
  IMediaPlaybackItemFactory2.fromRawPointer(super.ptr);

  factory IMediaPlaybackItemFactory2.from(IInspectable interface) =>
      IMediaPlaybackItemFactory2.fromRawPointer(
          interface.toInterface(IID_IMediaPlaybackItemFactory2));

  MediaPlaybackItem createWithStartTime(
      MediaSource source, Duration startTime) {
    final retValuePtr = calloc<COMObject>();

    final startTimeDuration = startTime.inMicroseconds * 10;

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> source,
                            Uint64 startTime, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> source, int startTime,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        source.ptr.cast<Pointer<COMObject>>().value,
        startTimeDuration,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return MediaPlaybackItem.fromRawPointer(retValuePtr);
  }

  MediaPlaybackItem createWithStartTimeAndDurationLimit(
      MediaSource source, Duration startTime, Duration durationLimit) {
    final retValuePtr = calloc<COMObject>();

    final startTimeDuration = startTime.inMicroseconds * 10;
    final durationLimitDuration = durationLimit.inMicroseconds * 10;

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<COMObject> source,
                            Uint64 startTime,
                            Uint64 durationLimit,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> source, int startTime,
                    int durationLimit, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        source.ptr.cast<Pointer<COMObject>>().value,
        startTimeDuration,
        durationLimitDuration,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return MediaPlaybackItem.fromRawPointer(retValuePtr);
  }

  // IMediaPlaybackItemFactory methods
  late final _iMediaPlaybackItemFactory = IMediaPlaybackItemFactory.from(this);

  @override
  MediaPlaybackItem create(MediaSource source) =>
      _iMediaPlaybackItemFactory.create(source);
}

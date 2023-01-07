// itimedmetadatatrackfactory.dart

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
import 'enums.g.dart';
import 'timedmetadatatrack.dart';

/// @nodoc
const IID_ITimedMetadataTrackFactory = '{8dd57611-97b3-4e1f-852c-0f482c81ad26}';

/// {@category Interface}
/// {@category winrt}
class ITimedMetadataTrackFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ITimedMetadataTrackFactory.fromRawPointer(super.ptr);

  factory ITimedMetadataTrackFactory.from(IInspectable interface) =>
      ITimedMetadataTrackFactory.fromRawPointer(
          interface.toInterface(IID_ITimedMetadataTrackFactory));

  TimedMetadataTrack create(
      String id, String language, TimedMetadataKind kind) {
    final retValuePtr = calloc<COMObject>();
    final idHstring = convertToHString(id);
    final languageHstring = convertToHString(language);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr id, IntPtr language,
                            Int32 kind, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int id, int language, int kind,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, idHstring, languageHstring, kind.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(idHstring);
    WindowsDeleteString(languageHstring);

    return TimedMetadataTrack.fromRawPointer(retValuePtr);
  }
}

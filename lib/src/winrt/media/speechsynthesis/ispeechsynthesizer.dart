// ispeechsynthesizer.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
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
import '../../foundation/iasyncoperation.dart';
import '../../internal/async_helpers.dart';
import '../../internal/hstring_array.dart';
import 'speechsynthesisstream.dart';
import 'voiceinformation.dart';

/// @nodoc
const IID_ISpeechSynthesizer = '{ce9f7c76-97f4-4ced-ad68-d51c458e45c6}';

/// {@category Interface}
/// {@category winrt}
class ISpeechSynthesizer extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  ISpeechSynthesizer.fromRawPointer(super.ptr);

  factory ISpeechSynthesizer.from(IInspectable interface) =>
      ISpeechSynthesizer.fromRawPointer(
          interface.toInterface(IID_ISpeechSynthesizer));

  Future<SpeechSynthesisStream?> synthesizeTextToStreamAsync(String text) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<SpeechSynthesisStream?>();
    final textHstring = convertToHString(text);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, IntPtr text, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, int text, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, textHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(textHstring);

    final asyncOperation =
        IAsyncOperation<SpeechSynthesisStream?>.fromRawPointer(retValuePtr,
            creator: SpeechSynthesisStream.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<SpeechSynthesisStream?> synthesizeSsmlToStreamAsync(String Ssml) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<SpeechSynthesisStream?>();
    final SsmlHstring = convertToHString(Ssml);

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, IntPtr Ssml, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, int Ssml, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, SsmlHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(SsmlHstring);

    final asyncOperation =
        IAsyncOperation<SpeechSynthesisStream?>.fromRawPointer(retValuePtr,
            creator: SpeechSynthesisStream.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  set voice(VoiceInformation? value) {
    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        value == null ? nullptr : value.ptr.cast<Pointer<COMObject>>().value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  VoiceInformation? get voice {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
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

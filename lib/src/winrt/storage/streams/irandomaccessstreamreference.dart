// irandomaccessstreamreference.dart

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
import 'irandomaccessstreamwithcontenttype.dart';

/// @nodoc
const IID_IRandomAccessStreamReference =
    '{33ee3134-1dd6-4e3a-8067-d1c162e8642b}';

/// {@category Interface}
/// {@category winrt}
class IRandomAccessStreamReference extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IRandomAccessStreamReference.fromRawPointer(super.ptr);

  factory IRandomAccessStreamReference.from(IInspectable interface) =>
      IRandomAccessStreamReference.fromRawPointer(
          interface.toInterface(IID_IRandomAccessStreamReference));

  Future<IRandomAccessStreamWithContentType?> openReadAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<IRandomAccessStreamWithContentType?>();

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

    final asyncOperation =
        IAsyncOperation<IRandomAccessStreamWithContentType?>.fromRawPointer(
            retValuePtr,
            creator: IRandomAccessStreamWithContentType.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }
}

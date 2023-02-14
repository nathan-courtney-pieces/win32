// iasyncactionwithprogress.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../com/iinspectable.dart';
import '../../combase.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../types.dart';
import '../../utils.dart';
import '../../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';
import '../../winrt_callbacks.dart';
import '../../winrt_helpers.dart';
import '../internal/hstring_array.dart';
import 'enums.g.dart';
import 'iasyncinfo.dart';

/// @nodoc
const IID_IAsyncActionWithProgress = '{1f6db258-e803-48a1-9546-eb7353398884}';

/// Represents an asynchronous action that can report progress updates to
/// callers. This is the return type for all Windows Runtime asynchronous
/// methods that don't have a result object, but do report progress to
/// callback listeners.
///
/// {@category Interface}
/// {@category winrt}
class IAsyncActionWithProgress extends IInspectable implements IAsyncInfo {
  // vtable begins at 6, is 5 entries long.
  IAsyncActionWithProgress.fromRawPointer(super.ptr);

  factory IAsyncActionWithProgress.from(IInspectable interface) =>
      IAsyncActionWithProgress.fromRawPointer(
          interface.toInterface(IID_IAsyncActionWithProgress));

  set progress(Pointer<NativeFunction<AsyncActionProgressHandler>> value) {
    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer,
                                Pointer<
                                    NativeFunction<
                                        AsyncActionProgressHandler>>)>>>()
                .value
                .asFunction<
                    int Function(Pointer,
                        Pointer<NativeFunction<AsyncActionProgressHandler>>)>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<NativeFunction<AsyncActionProgressHandler>> get progress {
    final retValuePtr =
        calloc<Pointer<NativeFunction<AsyncActionProgressHandler>>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer,
                              Pointer<
                                  Pointer<
                                      NativeFunction<
                                          AsyncActionProgressHandler>>>)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<
                          Pointer<
                              NativeFunction<AsyncActionProgressHandler>>>)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set completed(
      Pointer<NativeFunction<AsyncActionWithProgressCompletedHandler>> value) {
    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<
                                NativeFunction<
                                    AsyncActionWithProgressCompletedHandler>>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    Pointer<
                        NativeFunction<
                            AsyncActionWithProgressCompletedHandler>>)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<NativeFunction<AsyncActionWithProgressCompletedHandler>>
      get completed {
    final retValuePtr = calloc<
        Pointer<NativeFunction<AsyncActionWithProgressCompletedHandler>>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer,
                              Pointer<
                                  Pointer<
                                      NativeFunction<
                                          AsyncActionWithProgressCompletedHandler>>>)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<
                          Pointer<
                              NativeFunction<
                                  AsyncActionWithProgressCompletedHandler>>>)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  void getResults() {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer)>>>()
        .value
        .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  // IAsyncInfo methods
  late final _iAsyncInfo = IAsyncInfo.from(this);

  @override
  int get id => _iAsyncInfo.id;

  @override
  AsyncStatus get status => _iAsyncInfo.status;

  @override
  int get errorCode => _iAsyncInfo.errorCode;

  @override
  void cancel() => _iAsyncInfo.cancel();

  @override
  void close() => _iAsyncInfo.close();
}

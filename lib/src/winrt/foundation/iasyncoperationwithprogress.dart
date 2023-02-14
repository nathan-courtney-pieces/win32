// iasyncoperationwithprogress.dart

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
const IID_IAsyncOperationWithProgress = '{b5d036d7-e297-498f-ba60-0289e76e23dd}';

/// Represents an asynchronous operation that can report progress updates to
/// callers. This is the return type for many Windows Runtime asynchronous
/// methods that have results and also report progress.
///
/// {@category Interface}
/// {@category winrt}
class IAsyncOperationWithProgress extends IInspectable implements IAsyncInfo {
  // vtable begins at 6, is 5 entries long.
  IAsyncOperationWithProgress.fromRawPointer(super.ptr);

  factory IAsyncOperationWithProgress.from(IInspectable interface) =>
      IAsyncOperationWithProgress.fromRawPointer(interface.toInterface(IID_IAsyncOperationWithProgress));

  // set progress(Pointer<NativeFunction<AsyncOperationProgressHandler>> value) {
  //   final hr =
  //       ptr.ref.vtable
  //               .elementAt(6)
  //               .cast<
  //                   Pointer<
  //                       NativeFunction<
  //                           HRESULT Function(
  //                               Pointer,
  //                               Pointer<
  //                                   NativeFunction<
  //                                       AsyncOperationProgressHandler>>)>>>()
  //               .value
  //               .asFunction<
  //                   int Function(
  //                       Pointer,
  //                       Pointer<
  //                           NativeFunction<AsyncOperationProgressHandler>>)>()(
  //           ptr.ref.lpVtbl, value);
  //
  //   if (FAILED(hr)) throw WindowsException(hr);
  // }

  // Pointer<NativeFunction<AsyncOperationProgressHandler>> get progress {
  //   final retValuePtr =
  //       calloc<Pointer<NativeFunction<AsyncOperationProgressHandler>>>();
  //
  //   try {
  //     final hr = ptr.ref.vtable
  //             .elementAt(7)
  //             .cast<
  //                 Pointer<
  //                     NativeFunction<
  //                         HRESULT Function(
  //                             Pointer,
  //                             Pointer<
  //                                 Pointer<
  //                                     NativeFunction<
  //                                         AsyncOperationProgressHandler>>>)>>>()
  //             .value
  //             .asFunction<
  //                 int Function(
  //                     Pointer,
  //                     Pointer<
  //                         Pointer<
  //                             NativeFunction<
  //                                 AsyncOperationProgressHandler>>>)>()(
  //         ptr.ref.lpVtbl, retValuePtr);
  //
  //     if (FAILED(hr)) throw WindowsException(hr);
  //
  //     final retValue = retValuePtr.value;
  //     return retValue;
  //   } finally {
  //     free(retValuePtr);
  //   }
  // }

  // set completed(
  //     Pointer<NativeFunction<AsyncOperationWithProgressCompletedHandler>>
  //         value) {
  //   final hr = ptr.ref.vtable
  //           .elementAt(8)
  //           .cast<
  //               Pointer<
  //                   NativeFunction<
  //                       HRESULT Function(
  //                           Pointer,
  //                           Pointer<
  //                               NativeFunction<
  //                                   AsyncOperationWithProgressCompletedHandler>>)>>>()
  //           .value
  //           .asFunction<
  //               int Function(
  //                   Pointer,
  //                   Pointer<
  //                       NativeFunction<
  //                           AsyncOperationWithProgressCompletedHandler>>)>()(
  //       ptr.ref.lpVtbl, value);
  //
  //   if (FAILED(hr)) throw WindowsException(hr);
  // }

  // Pointer<NativeFunction<AsyncOperationWithProgressCompletedHandler>>
  //     get completed {
  //   final retValuePtr = calloc<
  //       Pointer<NativeFunction<AsyncOperationWithProgressCompletedHandler>>>();
  //
  //   try {
  //     final hr = ptr.ref.vtable
  //             .elementAt(9)
  //             .cast<
  //                 Pointer<
  //                     NativeFunction<
  //                         HRESULT Function(
  //                             Pointer,
  //                             Pointer<
  //                                 Pointer<
  //                                     NativeFunction<
  //                                         AsyncOperationWithProgressCompletedHandler>>>)>>>()
  //             .value
  //             .asFunction<
  //                 int Function(
  //                     Pointer,
  //                     Pointer<
  //                         Pointer<
  //                             NativeFunction<
  //                                 AsyncOperationWithProgressCompletedHandler>>>)>()(
  //         ptr.ref.lpVtbl, retValuePtr);
  //
  //     if (FAILED(hr)) throw WindowsException(hr);
  //
  //     final retValue = retValuePtr.value;
  //     return retValue;
  //   } finally {
  //     free(retValuePtr);
  //   }
  // }

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

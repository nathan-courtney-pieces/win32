// istorageprovider2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
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
import '../foundation/iasyncoperation.dart';
import '../internal/async_helpers.dart';
import '../internal/hstring_array.dart';
import 'istorageprovider.dart';

/// @nodoc
const IID_IStorageProvider2 = '{010d1917-3404-414b-9fd7-cd44472eaa39}';

/// {@category Interface}
/// {@category winrt}
class IStorageProvider2 extends IInspectable implements IStorageProvider {
  // vtable begins at 6, is 1 entries long.
  IStorageProvider2.fromRawPointer(super.ptr);

  factory IStorageProvider2.from(IInspectable interface) =>
      IStorageProvider2.fromRawPointer(
          interface.toInterface(IID_IStorageProvider2));

  Future<bool> isPropertySupportedForPartialFileAsync(
      String propertyCanonicalName) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<bool>();
    final propertyCanonicalNameHstring =
        convertToHString(propertyCanonicalName);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr propertyCanonicalName,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, int propertyCanonicalName, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, propertyCanonicalNameHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(propertyCanonicalNameHstring);

    final asyncOperation = IAsyncOperation<bool>.fromRawPointer(retValuePtr);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  // IStorageProvider methods
  late final _iStorageProvider = IStorageProvider.from(this);

  @override
  String get id => _iStorageProvider.id;

  @override
  String get displayName => _iStorageProvider.displayName;
}

// iautoupdatesettingsoptions.dart

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
import '../../applicationmodel/structs.g.dart';
import '../../foundation/collections/ivector.dart';
import '../../foundation/uri.dart' as winrt_uri;
import '../../internal/hstring_array.dart';

/// @nodoc
const IID_IAutoUpdateSettingsOptions = '{67491d87-35e1-512a-8968-1ae88d1be6d3}';

/// {@category Interface}
/// {@category winrt}
class IAutoUpdateSettingsOptions extends IInspectable {
  // vtable begins at 6, is 22 entries long.
  IAutoUpdateSettingsOptions.fromRawPointer(super.ptr);

  factory IAutoUpdateSettingsOptions.from(IInspectable interface) =>
      IAutoUpdateSettingsOptions.fromRawPointer(interface.toInterface(IID_IAutoUpdateSettingsOptions));

  PackageVersion get version {
    final retValuePtr = calloc<PackageVersion>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Pointer<PackageVersion>)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<PackageVersion>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {}
  }

  set version(PackageVersion value) {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, PackageVersion)>>>()
        .value
        .asFunction<int Function(Pointer, PackageVersion)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Uri? get appInstallerUri {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Pointer<COMObject>)>>>()
        .value
        .asFunction<int Function(Pointer, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    final winrtUri = winrt_uri.Uri.fromRawPointer(retValuePtr);
    final uriAsString = winrtUri.toString();
    winrtUri.release();

    return Uri.parse(uriAsString);
  }

  // set appInstallerUri(Uri? value) {
  //   final winrtUri =
  //       value == null ? null : winrt_uri.Uri.createUri(value.toString());
  //
  //   try {
  //     final hr = ptr.ref.vtable
  //             .elementAt(9)
  //             .cast<
  //                 Pointer<
  //                     NativeFunction<
  //                         HRESULT Function(Pointer, Pointer<COMObject>)>>>()
  //             .value
  //             .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
  //         ptr.ref.lpVtbl,
  //         value == null
  //             ? nullptr
  //             : winrtUri.ptr.cast<Pointer<COMObject>>().value);
  //
  //     if (FAILED(hr)) throw WindowsException(hr);
  //   } finally {
  //     winrtUri?.release();
  //   }
  // }

  bool get onLaunch {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(10)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Pointer<Bool>)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set onLaunch(bool value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Bool)>>>()
        .value
        .asFunction<int Function(Pointer, bool)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get hoursBetweenUpdateChecks {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(12)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Pointer<Uint32>)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set hoursBetweenUpdateChecks(int value) {
    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint32)>>>()
        .value
        .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  bool get showPrompt {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(14)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Pointer<Bool>)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set showPrompt(bool value) {
    final hr = ptr.ref.vtable
        .elementAt(15)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Bool)>>>()
        .value
        .asFunction<int Function(Pointer, bool)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  bool get updateBlocksActivation {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(16)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Pointer<Bool>)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set updateBlocksActivation(bool value) {
    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Bool)>>>()
        .value
        .asFunction<int Function(Pointer, bool)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  bool get automaticBackgroundTask {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(18)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Pointer<Bool>)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set automaticBackgroundTask(bool value) {
    final hr = ptr.ref.vtable
        .elementAt(19)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Bool)>>>()
        .value
        .asFunction<int Function(Pointer, bool)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  bool get forceUpdateFromAnyVersion {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(20)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Pointer<Bool>)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set forceUpdateFromAnyVersion(bool value) {
    final hr = ptr.ref.vtable
        .elementAt(21)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Bool)>>>()
        .value
        .asFunction<int Function(Pointer, bool)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  bool get isAutoRepairEnabled {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(22)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Pointer<Bool>)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set isAutoRepairEnabled(bool value) {
    final hr = ptr.ref.vtable
        .elementAt(23)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Bool)>>>()
        .value
        .asFunction<int Function(Pointer, bool)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

// IVector<Uri> get updateUris {
//   final retValuePtr = calloc<COMObject>();
//
//   final hr = ptr.ref.vtable
//           .elementAt(24)
//           .cast<
//               Pointer<
//                   NativeFunction<
//                       HRESULT Function(Pointer, Pointer<COMObject>)>>>()
//           .value
//           .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
//       ptr.ref.lpVtbl, retValuePtr);
//
//   if (FAILED(hr)) {
//     free(retValuePtr);
//     throw WindowsException(hr);
//   }
//
//   return IVector.fromRawPointer(retValuePtr,
//       iterableIid: '{b0d63b78-78ad-5e31-b6d8-e32a0e16c447}',
//       creator: Uri.fromRawPointer);
// }

// IVector<Uri> get repairUris {
//   final retValuePtr = calloc<COMObject>();
//
//   final hr = ptr.ref.vtable
//           .elementAt(25)
//           .cast<
//               Pointer<
//                   NativeFunction<
//                       HRESULT Function(Pointer, Pointer<COMObject>)>>>()
//           .value
//           .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
//       ptr.ref.lpVtbl, retValuePtr);
//
//   if (FAILED(hr)) {
//     free(retValuePtr);
//     throw WindowsException(hr);
//   }
//
//   return IVector.fromRawPointer(retValuePtr,
//       iterableIid: '{b0d63b78-78ad-5e31-b6d8-e32a0e16c447}',
//       creator: Uri.fromRawPointer);
// }

// IVector<Uri> get dependencyPackageUris {
//   final retValuePtr = calloc<COMObject>();
//
//   final hr = ptr.ref.vtable
//           .elementAt(26)
//           .cast<
//               Pointer<
//                   NativeFunction<
//                       HRESULT Function(Pointer, Pointer<COMObject>)>>>()
//           .value
//           .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
//       ptr.ref.lpVtbl, retValuePtr);
//
//   if (FAILED(hr)) {
//     free(retValuePtr);
//     throw WindowsException(hr);
//   }
//
//   return IVector.fromRawPointer(retValuePtr,
//       iterableIid: '{b0d63b78-78ad-5e31-b6d8-e32a0e16c447}',
//       creator: Uri.fromRawPointer);
// }

// IVector<Uri> get optionalPackageUris {
//   final retValuePtr = calloc<COMObject>();
//
//   final hr = ptr.ref.vtable
//           .elementAt(27)
//           .cast<
//               Pointer<
//                   NativeFunction<
//                       HRESULT Function(Pointer, Pointer<COMObject>)>>>()
//           .value
//           .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
//       ptr.ref.lpVtbl, retValuePtr);
//
//   if (FAILED(hr)) {
//     free(retValuePtr);
//     throw WindowsException(hr);
//   }
//
//   return IVector.fromRawPointer(retValuePtr,
//       iterableIid: '{b0d63b78-78ad-5e31-b6d8-e32a0e16c447}',
//       creator: Uri.fromRawPointer);
// }
}

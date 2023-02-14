// ipackagevolume.dart

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
import '../../applicationmodel/package.dart';
import '../../foundation/collections/ivector.dart';
import '../../internal/hstring_array.dart';
import 'enums.g.dart';

/// @nodoc
const IID_IPackageVolume = '{cf2672c3-1a40-4450-9739-2ace2e898853}';

/// {@category Interface}
/// {@category winrt}
class IPackageVolume extends IInspectable {
  // vtable begins at 6, is 20 entries long.
  IPackageVolume.fromRawPointer(super.ptr);

  factory IPackageVolume.from(IInspectable interface) =>
      IPackageVolume.fromRawPointer(interface.toInterface(IID_IPackageVolume));

  bool get isOffline {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  bool get isSystemVolume {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  String get mountPoint {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String get name {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String get packageStorePath {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  bool get supportsHardLinks {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  IVector<Package> findPackages() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(12)
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

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        creator: Package.fromRawPointer);
  }

  IVector<Package> findPackagesByNamePublisher(
      String packageName, String packagePublisher) {
    final retValuePtr = calloc<COMObject>();
    final packageNameHstring = convertToHString(packageName);
    final packagePublisherHstring = convertToHString(packagePublisher);

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr packageName,
                            IntPtr packagePublisher, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int packageName, int packagePublisher,
                    Pointer<COMObject>)>()(ptr.ref.lpVtbl, packageNameHstring,
        packagePublisherHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(packageNameHstring);
    WindowsDeleteString(packagePublisherHstring);

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        creator: Package.fromRawPointer);
  }

  IVector<Package> findPackagesByPackageFamilyName(String packageFamilyName) {
    final retValuePtr = calloc<COMObject>();
    final packageFamilyNameHstring = convertToHString(packageFamilyName);

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr packageFamilyName,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, int packageFamilyName, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, packageFamilyNameHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(packageFamilyNameHstring);

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        creator: Package.fromRawPointer);
  }

  IVector<Package> findPackagesWithPackageTypes(PackageTypes packageTypes) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(15)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32 packageTypes,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int packageTypes, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, packageTypes.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        creator: Package.fromRawPointer);
  }

  IVector<Package> findPackagesByNamePublisherWithPackagesTypes(
      PackageTypes packageTypes, String packageName, String packagePublisher) {
    final retValuePtr = calloc<COMObject>();

    final packageNameHstring = convertToHString(packageName);
    final packagePublisherHstring = convertToHString(packagePublisher);

    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Uint32 packageTypes,
                            IntPtr packageName,
                            IntPtr packagePublisher,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int packageTypes, int packageName,
                    int packagePublisher, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        packageTypes.value,
        packageNameHstring,
        packagePublisherHstring,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(packageNameHstring);
    WindowsDeleteString(packagePublisherHstring);

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        creator: Package.fromRawPointer);
  }

  IVector<Package> findPackagesByPackageFamilyNameWithPackageTypes(
      PackageTypes packageTypes, String packageFamilyName) {
    final retValuePtr = calloc<COMObject>();

    final packageFamilyNameHstring = convertToHString(packageFamilyName);

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32 packageTypes,
                            IntPtr packageFamilyName, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int packageTypes, int packageFamilyName,
                    Pointer<COMObject>)>()(ptr.ref.lpVtbl, packageTypes.value,
        packageFamilyNameHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(packageFamilyNameHstring);

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        creator: Package.fromRawPointer);
  }

  IVector<Package> findPackageByPackageFullName(String packageFullName) {
    final retValuePtr = calloc<COMObject>();
    final packageFullNameHstring = convertToHString(packageFullName);

    final hr = ptr.ref.vtable
            .elementAt(18)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr packageFullName,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, int packageFullName, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, packageFullNameHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(packageFullNameHstring);

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        creator: Package.fromRawPointer);
  }

  IVector<Package> findPackagesByUserSecurityId(String userSecurityId) {
    final retValuePtr = calloc<COMObject>();
    final userSecurityIdHstring = convertToHString(userSecurityId);

    final hr = ptr.ref.vtable
            .elementAt(19)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr userSecurityId,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, int userSecurityId, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, userSecurityIdHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(userSecurityIdHstring);

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        creator: Package.fromRawPointer);
  }

  IVector<Package> findPackagesByUserSecurityIdNamePublisher(
      String userSecurityId, String packageName, String packagePublisher) {
    final retValuePtr = calloc<COMObject>();
    final userSecurityIdHstring = convertToHString(userSecurityId);
    final packageNameHstring = convertToHString(packageName);
    final packagePublisherHstring = convertToHString(packagePublisher);

    final hr = ptr.ref.vtable
            .elementAt(20)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            IntPtr userSecurityId,
                            IntPtr packageName,
                            IntPtr packagePublisher,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int userSecurityId, int packageName,
                    int packagePublisher, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        userSecurityIdHstring,
        packageNameHstring,
        packagePublisherHstring,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(userSecurityIdHstring);
    WindowsDeleteString(packageNameHstring);
    WindowsDeleteString(packagePublisherHstring);

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        creator: Package.fromRawPointer);
  }

  IVector<Package> findPackagesByUserSecurityIdPackageFamilyName(
      String userSecurityId, String packageFamilyName) {
    final retValuePtr = calloc<COMObject>();
    final userSecurityIdHstring = convertToHString(userSecurityId);
    final packageFamilyNameHstring = convertToHString(packageFamilyName);

    final hr = ptr.ref.vtable
            .elementAt(21)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr userSecurityId,
                            IntPtr packageFamilyName, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int userSecurityId, int packageFamilyName,
                    Pointer<COMObject>)>()(ptr.ref.lpVtbl,
        userSecurityIdHstring, packageFamilyNameHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(userSecurityIdHstring);
    WindowsDeleteString(packageFamilyNameHstring);

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        creator: Package.fromRawPointer);
  }

  IVector<Package> findPackagesByUserSecurityIdWithPackageTypes(
      String userSecurityId, PackageTypes packageTypes) {
    final retValuePtr = calloc<COMObject>();
    final userSecurityIdHstring = convertToHString(userSecurityId);

    final hr = ptr.ref.vtable
            .elementAt(22)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr userSecurityId,
                            Uint32 packageTypes, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int userSecurityId, int packageTypes,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, userSecurityIdHstring, packageTypes.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(userSecurityIdHstring);

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        creator: Package.fromRawPointer);
  }

  IVector<Package> findPackagesByUserSecurityIdNamePublisherWithPackageTypes(
      String userSecurityId,
      PackageTypes packageTypes,
      String packageName,
      String packagePublisher) {
    final retValuePtr = calloc<COMObject>();
    final userSecurityIdHstring = convertToHString(userSecurityId);

    final packageNameHstring = convertToHString(packageName);
    final packagePublisherHstring = convertToHString(packagePublisher);

    final hr = ptr.ref.vtable
            .elementAt(23)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            IntPtr userSecurityId,
                            Uint32 packageTypes,
                            IntPtr packageName,
                            IntPtr packagePublisher,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    int userSecurityId,
                    int packageTypes,
                    int packageName,
                    int packagePublisher,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        userSecurityIdHstring,
        packageTypes.value,
        packageNameHstring,
        packagePublisherHstring,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(userSecurityIdHstring);

    WindowsDeleteString(packageNameHstring);
    WindowsDeleteString(packagePublisherHstring);

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        creator: Package.fromRawPointer);
  }

  IVector<Package>
      findPackagesByUserSecurityIdPackageFamilyNameWithPackagesTypes(
          String userSecurityId,
          PackageTypes packageTypes,
          String packageFamilyName) {
    final retValuePtr = calloc<COMObject>();
    final userSecurityIdHstring = convertToHString(userSecurityId);

    final packageFamilyNameHstring = convertToHString(packageFamilyName);

    final hr = ptr.ref.vtable
            .elementAt(24)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            IntPtr userSecurityId,
                            Uint32 packageTypes,
                            IntPtr packageFamilyName,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int userSecurityId, int packageTypes,
                    int packageFamilyName, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        userSecurityIdHstring,
        packageTypes.value,
        packageFamilyNameHstring,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(userSecurityIdHstring);

    WindowsDeleteString(packageFamilyNameHstring);

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        creator: Package.fromRawPointer);
  }

  IVector<Package> findPackageByUserSecurityIdPackageFullName(
      String userSecurityId, String packageFullName) {
    final retValuePtr = calloc<COMObject>();
    final userSecurityIdHstring = convertToHString(userSecurityId);
    final packageFullNameHstring = convertToHString(packageFullName);

    final hr = ptr.ref.vtable
            .elementAt(25)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr userSecurityId,
                            IntPtr packageFullName, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int userSecurityId, int packageFullName,
                    Pointer<COMObject>)>()(ptr.ref.lpVtbl,
        userSecurityIdHstring, packageFullNameHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(userSecurityIdHstring);
    WindowsDeleteString(packageFullNameHstring);

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        creator: Package.fromRawPointer);
  }
}

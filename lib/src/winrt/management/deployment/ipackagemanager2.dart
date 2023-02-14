// ipackagemanager2.dart

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
import '../../foundation/collections/iiterable.dart';
import '../../foundation/iasyncoperationwithprogress.dart';
import '../../foundation/uri.dart' as winrt_uri;
import '../../internal/hstring_array.dart';
import 'deploymentresult.dart';
import 'enums.g.dart';
import 'structs.g.dart';

/// @nodoc
const IID_IPackageManager2 = '{f7aad08d-0840-46f2-b5d8-cad47693a095}';

/// {@category Interface}
/// {@category winrt}
class IPackageManager2 extends IInspectable {
  // vtable begins at 6, is 10 entries long.
  IPackageManager2.fromRawPointer(super.ptr);

  factory IPackageManager2.from(IInspectable interface) =>
      IPackageManager2.fromRawPointer(
          interface.toInterface(IID_IPackageManager2));

  Pointer<COMObject> removePackageWithOptionsAsync(
      String packageFullName, RemovalOptions removalOptions) {
    final retValuePtr = calloc<COMObject>();
    final packageFullNameHstring = convertToHString(packageFullName);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr packageFullName,
                            Uint32 removalOptions, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int packageFullName, int removalOptions,
                    Pointer<COMObject>)>()(ptr.ref.lpVtbl,
        packageFullNameHstring, removalOptions.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(packageFullNameHstring);

    return retValuePtr;
  }

  Pointer<COMObject> stagePackageWithOptionsAsync(
      Uri? packageUri,
      IIterable<Uri>? dependencyPackageUris,
      DeploymentOptions deploymentOptions) {
    final retValuePtr = calloc<COMObject>();
    final packageUriUri = winrt_uri.Uri.createUri(packageUri.toString());

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<COMObject> packageUri,
                            Pointer<COMObject> dependencyPackageUris,
                            Uint32 deploymentOptions,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    Pointer<COMObject> packageUri,
                    Pointer<COMObject> dependencyPackageUris,
                    int deploymentOptions,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        packageUri == null
            ? nullptr
            : packageUriUri.ptr.cast<Pointer<COMObject>>().value,
        dependencyPackageUris == null
            ? nullptr
            : dependencyPackageUris.ptr.cast<Pointer<COMObject>>().value,
        deploymentOptions.value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    packageUriUri.release();

    return retValuePtr;
  }

  Pointer<COMObject> registerPackageByFullNameAsync(
      String mainPackageFullName,
      IIterable<String>? dependencyPackageFullNames,
      DeploymentOptions deploymentOptions) {
    final retValuePtr = calloc<COMObject>();
    final mainPackageFullNameHstring = convertToHString(mainPackageFullName);

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            IntPtr mainPackageFullName,
                            Pointer<COMObject> dependencyPackageFullNames,
                            Uint32 deploymentOptions,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    int mainPackageFullName,
                    Pointer<COMObject> dependencyPackageFullNames,
                    int deploymentOptions,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        mainPackageFullNameHstring,
        dependencyPackageFullNames == null
            ? nullptr
            : dependencyPackageFullNames.ptr.cast<Pointer<COMObject>>().value,
        deploymentOptions.value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(mainPackageFullNameHstring);

    return retValuePtr;
  }

  IIterable<Package>? findPackagesWithPackageTypes(PackageTypes packageTypes) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return IIterable<Package>.fromRawPointer(retValuePtr);
  }

  IIterable<Package>? findPackagesByUserSecurityIdWithPackageTypes(
      String userSecurityId, PackageTypes packageTypes) {
    final retValuePtr = calloc<COMObject>();
    final userSecurityIdHstring = convertToHString(userSecurityId);

    final hr = ptr.ref.vtable
            .elementAt(10)
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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return IIterable<Package>.fromRawPointer(retValuePtr);
  }

  IIterable<Package>? findPackagesByNamePublisherWithPackageTypes(
      String packageName, String packagePublisher, PackageTypes packageTypes) {
    final retValuePtr = calloc<COMObject>();
    final packageNameHstring = convertToHString(packageName);
    final packagePublisherHstring = convertToHString(packagePublisher);

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            IntPtr packageName,
                            IntPtr packagePublisher,
                            Uint32 packageTypes,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int packageName, int packagePublisher,
                    int packageTypes, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        packageNameHstring,
        packagePublisherHstring,
        packageTypes.value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(packageNameHstring);
    WindowsDeleteString(packagePublisherHstring);

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return IIterable<Package>.fromRawPointer(retValuePtr);
  }

  IIterable<Package>? findPackagesByUserSecurityIdNamePublisherWithPackageTypes(
      String userSecurityId,
      String packageName,
      String packagePublisher,
      PackageTypes packageTypes) {
    final retValuePtr = calloc<COMObject>();
    final userSecurityIdHstring = convertToHString(userSecurityId);
    final packageNameHstring = convertToHString(packageName);
    final packagePublisherHstring = convertToHString(packagePublisher);

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            IntPtr userSecurityId,
                            IntPtr packageName,
                            IntPtr packagePublisher,
                            Uint32 packageTypes,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    int userSecurityId,
                    int packageName,
                    int packagePublisher,
                    int packageTypes,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        userSecurityIdHstring,
        packageNameHstring,
        packagePublisherHstring,
        packageTypes.value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(userSecurityIdHstring);
    WindowsDeleteString(packageNameHstring);
    WindowsDeleteString(packagePublisherHstring);

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return IIterable<Package>.fromRawPointer(retValuePtr);
  }

  IIterable<Package>? findPackagesByPackageFamilyNameWithPackageTypes(
      String packageFamilyName, PackageTypes packageTypes) {
    final retValuePtr = calloc<COMObject>();
    final packageFamilyNameHstring = convertToHString(packageFamilyName);

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr packageFamilyName,
                            Uint32 packageTypes, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int packageFamilyName, int packageTypes,
                    Pointer<COMObject>)>()(ptr.ref.lpVtbl,
        packageFamilyNameHstring, packageTypes.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(packageFamilyNameHstring);

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return IIterable<Package>.fromRawPointer(retValuePtr);
  }

  IIterable<Package>?
      findPackagesByUserSecurityIdPackageFamilyNameWithPackageTypes(
          String userSecurityId,
          String packageFamilyName,
          PackageTypes packageTypes) {
    final retValuePtr = calloc<COMObject>();
    final userSecurityIdHstring = convertToHString(userSecurityId);
    final packageFamilyNameHstring = convertToHString(packageFamilyName);

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            IntPtr userSecurityId,
                            IntPtr packageFamilyName,
                            Uint32 packageTypes,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int userSecurityId, int packageFamilyName,
                    int packageTypes, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        userSecurityIdHstring,
        packageFamilyNameHstring,
        packageTypes.value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(userSecurityIdHstring);
    WindowsDeleteString(packageFamilyNameHstring);

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return IIterable<Package>.fromRawPointer(retValuePtr);
  }

  Pointer<COMObject> stageUserDataAsync(String packageFullName) {
    final retValuePtr = calloc<COMObject>();
    final packageFullNameHstring = convertToHString(packageFullName);

    final hr = ptr.ref.vtable
            .elementAt(15)
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

    return retValuePtr;
  }
}

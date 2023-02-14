// ipackagemanager.dart

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
import 'packageuserinformation.dart';
import 'structs.g.dart';

/// @nodoc
const IID_IPackageManager = '{9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53}';

/// {@category Interface}
/// {@category winrt}
class IPackageManager extends IInspectable {
  // vtable begins at 6, is 16 entries long.
  IPackageManager.fromRawPointer(super.ptr);

  factory IPackageManager.from(IInspectable interface) =>
      IPackageManager.fromRawPointer(
          interface.toInterface(IID_IPackageManager));

  Pointer<COMObject> addPackageAsync(
      Uri? packageUri,
      IIterable<Uri>? dependencyPackageUris,
      DeploymentOptions deploymentOptions) {
    final retValuePtr = calloc<COMObject>();
    final packageUriUri = winrt_uri.Uri.createUri(packageUri.toString());

    final hr = ptr.ref.vtable
            .elementAt(6)
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

  Pointer<COMObject> updatePackageAsync(
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

  Pointer<COMObject> removePackageAsync(String packageFullName) {
    final retValuePtr = calloc<COMObject>();
    final packageFullNameHstring = convertToHString(packageFullName);

    final hr = ptr.ref.vtable
            .elementAt(8)
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

  Pointer<COMObject> stagePackageAsync(
      Uri? packageUri, IIterable<Uri>? dependencyPackageUris) {
    final retValuePtr = calloc<COMObject>();
    final packageUriUri = winrt_uri.Uri.createUri(packageUri.toString());

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<COMObject> packageUri,
                            Pointer<COMObject> dependencyPackageUris,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    Pointer<COMObject> packageUri,
                    Pointer<COMObject> dependencyPackageUris,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        packageUri == null
            ? nullptr
            : packageUriUri.ptr.cast<Pointer<COMObject>>().value,
        dependencyPackageUris == null
            ? nullptr
            : dependencyPackageUris.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    packageUriUri.release();

    return retValuePtr;
  }

  Pointer<COMObject> registerPackageAsync(
      Uri? manifestUri,
      IIterable<Uri>? dependencyPackageUris,
      DeploymentOptions deploymentOptions) {
    final retValuePtr = calloc<COMObject>();
    final manifestUriUri = winrt_uri.Uri.createUri(manifestUri.toString());

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<COMObject> manifestUri,
                            Pointer<COMObject> dependencyPackageUris,
                            Uint32 deploymentOptions,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    Pointer<COMObject> manifestUri,
                    Pointer<COMObject> dependencyPackageUris,
                    int deploymentOptions,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        manifestUri == null
            ? nullptr
            : manifestUriUri.ptr.cast<Pointer<COMObject>>().value,
        dependencyPackageUris == null
            ? nullptr
            : dependencyPackageUris.ptr.cast<Pointer<COMObject>>().value,
        deploymentOptions.value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    manifestUriUri.release();

    return retValuePtr;
  }

  IIterable<Package>? findPackages() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(11)
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

    return IIterable<Package>.fromRawPointer(retValuePtr);
  }

  IIterable<Package>? findPackagesByUserSecurityId(String userSecurityId) {
    final retValuePtr = calloc<COMObject>();
    final userSecurityIdHstring = convertToHString(userSecurityId);

    final hr = ptr.ref.vtable
            .elementAt(12)
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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return IIterable<Package>.fromRawPointer(retValuePtr);
  }

  IIterable<Package>? findPackagesByNamePublisher(
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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return IIterable<Package>.fromRawPointer(retValuePtr);
  }

  IIterable<Package>? findPackagesByUserSecurityIdNamePublisher(
      String userSecurityId, String packageName, String packagePublisher) {
    final retValuePtr = calloc<COMObject>();
    final userSecurityIdHstring = convertToHString(userSecurityId);
    final packageNameHstring = convertToHString(packageName);
    final packagePublisherHstring = convertToHString(packagePublisher);

    final hr = ptr.ref.vtable
            .elementAt(14)
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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return IIterable<Package>.fromRawPointer(retValuePtr);
  }

  IIterable<PackageUserInformation>? findUsers(String packageFullName) {
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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return IIterable<PackageUserInformation>.fromRawPointer(retValuePtr);
  }

  void setPackageState(String packageFullName, PackageState packageState) {
    final packageFullNameHstring = convertToHString(packageFullName);

    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr packageFullName,
                            Int32 packageState)>>>()
            .value
            .asFunction<
                int Function(Pointer, int packageFullName, int packageState)>()(
        ptr.ref.lpVtbl, packageFullNameHstring, packageState.value);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(packageFullNameHstring);
  }

  Package? findPackageByPackageFullName(String packageFullName) {
    final retValuePtr = calloc<COMObject>();
    final packageFullNameHstring = convertToHString(packageFullName);

    final hr = ptr.ref.vtable
            .elementAt(17)
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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return Package.fromRawPointer(retValuePtr);
  }

  Pointer<COMObject> cleanupPackageForUserAsync(
      String packageName, String userSecurityId) {
    final retValuePtr = calloc<COMObject>();
    final packageNameHstring = convertToHString(packageName);
    final userSecurityIdHstring = convertToHString(userSecurityId);

    final hr = ptr.ref.vtable
            .elementAt(18)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr packageName,
                            IntPtr userSecurityId, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int packageName, int userSecurityId,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, packageNameHstring, userSecurityIdHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(packageNameHstring);
    WindowsDeleteString(userSecurityIdHstring);

    return retValuePtr;
  }

  IIterable<Package>? findPackagesByPackageFamilyName(
      String packageFamilyName) {
    final retValuePtr = calloc<COMObject>();
    final packageFamilyNameHstring = convertToHString(packageFamilyName);

    final hr = ptr.ref.vtable
            .elementAt(19)
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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return IIterable<Package>.fromRawPointer(retValuePtr);
  }

  IIterable<Package>? findPackagesByUserSecurityIdPackageFamilyName(
      String userSecurityId, String packageFamilyName) {
    final retValuePtr = calloc<COMObject>();
    final userSecurityIdHstring = convertToHString(userSecurityId);
    final packageFamilyNameHstring = convertToHString(packageFamilyName);

    final hr = ptr.ref.vtable
            .elementAt(20)
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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return IIterable<Package>.fromRawPointer(retValuePtr);
  }

  Package? findPackageByUserSecurityIdPackageFullName(
      String userSecurityId, String packageFullName) {
    final retValuePtr = calloc<COMObject>();
    final userSecurityIdHstring = convertToHString(userSecurityId);
    final packageFullNameHstring = convertToHString(packageFullName);

    final hr = ptr.ref.vtable
            .elementAt(21)
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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return Package.fromRawPointer(retValuePtr);
  }
}

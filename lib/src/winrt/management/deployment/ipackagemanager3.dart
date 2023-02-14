// ipackagemanager3.dart

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
import '../../foundation/collections/iiterable.dart';
import '../../foundation/iasyncoperation.dart';
import '../../foundation/iasyncoperationwithprogress.dart';
import '../../foundation/uri.dart' as winrt_uri;
import '../../internal/async_helpers.dart';
import '../../internal/hstring_array.dart';
import 'deploymentresult.dart';
import 'enums.g.dart';
import 'packagevolume.dart';
import 'structs.g.dart';

/// @nodoc
const IID_IPackageManager3 = '{daad9948-36f1-41a7-9188-bc263e0dcb72}';

/// {@category Interface}
/// {@category winrt}
class IPackageManager3 extends IInspectable {
  // vtable begins at 6, is 15 entries long.
  IPackageManager3.fromRawPointer(super.ptr);

  factory IPackageManager3.from(IInspectable interface) =>
      IPackageManager3.fromRawPointer(
          interface.toInterface(IID_IPackageManager3));

  Future<PackageVolume?> addPackageVolumeAsync(String packageStorePath) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<PackageVolume?>();
    final packageStorePathHstring = convertToHString(packageStorePath);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr packageStorePath,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, int packageStorePath, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, packageStorePathHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(packageStorePathHstring);

    final asyncOperation = IAsyncOperation<PackageVolume?>.fromRawPointer(
        retValuePtr,
        creator: PackageVolume.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Pointer<COMObject> addPackageToVolumeAsync(
      Uri? packageUri,
      IIterable<Uri>? dependencyPackageUris,
      DeploymentOptions deploymentOptions,
      PackageVolume? targetVolume) {
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
                            Pointer<COMObject> targetVolume,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    Pointer<COMObject> packageUri,
                    Pointer<COMObject> dependencyPackageUris,
                    int deploymentOptions,
                    Pointer<COMObject> targetVolume,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        packageUri == null
            ? nullptr
            : packageUriUri.ptr.cast<Pointer<COMObject>>().value,
        dependencyPackageUris == null
            ? nullptr
            : dependencyPackageUris.ptr.cast<Pointer<COMObject>>().value,
        deploymentOptions.value,
        targetVolume == null
            ? nullptr
            : targetVolume.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    packageUriUri.release();

    return retValuePtr;
  }

  void clearPackageStatus(String packageFullName, PackageStatus status) {
    final packageFullNameHstring = convertToHString(packageFullName);

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, IntPtr packageFullName, Uint32 status)>>>()
            .value
            .asFunction<
                int Function(Pointer, int packageFullName, int status)>()(
        ptr.ref.lpVtbl, packageFullNameHstring, status.value);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(packageFullNameHstring);
  }

  Pointer<COMObject> registerPackageWithAppDataVolumeAsync(
      Uri? manifestUri,
      IIterable<Uri>? dependencyPackageUris,
      DeploymentOptions deploymentOptions,
      PackageVolume? appDataVolume) {
    final retValuePtr = calloc<COMObject>();
    final manifestUriUri = winrt_uri.Uri.createUri(manifestUri.toString());

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<COMObject> manifestUri,
                            Pointer<COMObject> dependencyPackageUris,
                            Uint32 deploymentOptions,
                            Pointer<COMObject> appDataVolume,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    Pointer<COMObject> manifestUri,
                    Pointer<COMObject> dependencyPackageUris,
                    int deploymentOptions,
                    Pointer<COMObject> appDataVolume,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        manifestUri == null
            ? nullptr
            : manifestUriUri.ptr.cast<Pointer<COMObject>>().value,
        dependencyPackageUris == null
            ? nullptr
            : dependencyPackageUris.ptr.cast<Pointer<COMObject>>().value,
        deploymentOptions.value,
        appDataVolume == null
            ? nullptr
            : appDataVolume.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    manifestUriUri.release();

    return retValuePtr;
  }

  PackageVolume? findPackageVolumeByName(String volumeName) {
    final retValuePtr = calloc<COMObject>();
    final volumeNameHstring = convertToHString(volumeName);

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, IntPtr volumeName, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int volumeName, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, volumeNameHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(volumeNameHstring);

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return PackageVolume.fromRawPointer(retValuePtr);
  }

  IIterable<PackageVolume>? findPackageVolumes() {
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

    return IIterable<PackageVolume>.fromRawPointer(retValuePtr);
  }

  PackageVolume? getDefaultPackageVolume() {
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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return PackageVolume.fromRawPointer(retValuePtr);
  }

  Pointer<COMObject> movePackageToVolumeAsync(String packageFullName,
      DeploymentOptions deploymentOptions, PackageVolume? targetVolume) {
    final retValuePtr = calloc<COMObject>();
    final packageFullNameHstring = convertToHString(packageFullName);

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            IntPtr packageFullName,
                            Uint32 deploymentOptions,
                            Pointer<COMObject> targetVolume,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    int packageFullName,
                    int deploymentOptions,
                    Pointer<COMObject> targetVolume,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        packageFullNameHstring,
        deploymentOptions.value,
        targetVolume == null
            ? nullptr
            : targetVolume.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(packageFullNameHstring);

    return retValuePtr;
  }

  Pointer<COMObject> removePackageVolumeAsync(PackageVolume? volume) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> volume,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, Pointer<COMObject> volume, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        volume == null ? nullptr : volume.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  void setDefaultPackageVolume(PackageVolume? volume) {
    final hr =
        ptr.ref.vtable
                .elementAt(15)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer, Pointer<COMObject> volume)>>>()
                .value
                .asFunction<int Function(Pointer, Pointer<COMObject> volume)>()(
            ptr.ref.lpVtbl,
            volume == null
                ? nullptr
                : volume.ptr.cast<Pointer<COMObject>>().value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void setPackageStatus(String packageFullName, PackageStatus status) {
    final packageFullNameHstring = convertToHString(packageFullName);

    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, IntPtr packageFullName, Uint32 status)>>>()
            .value
            .asFunction<
                int Function(Pointer, int packageFullName, int status)>()(
        ptr.ref.lpVtbl, packageFullNameHstring, status.value);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(packageFullNameHstring);
  }

  Pointer<COMObject> setPackageVolumeOfflineAsync(
      PackageVolume? packageVolume) {
    final retValuePtr = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(17)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer,
                                Pointer<COMObject> packageVolume,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, Pointer<COMObject> packageVolume,
                        Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            packageVolume == null
                ? nullptr
                : packageVolume.ptr.cast<Pointer<COMObject>>().value,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> setPackageVolumeOnlineAsync(PackageVolume? packageVolume) {
    final retValuePtr = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(18)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer,
                                Pointer<COMObject> packageVolume,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, Pointer<COMObject> packageVolume,
                        Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            packageVolume == null
                ? nullptr
                : packageVolume.ptr.cast<Pointer<COMObject>>().value,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> stagePackageToVolumeAsync(
      Uri? packageUri,
      IIterable<Uri>? dependencyPackageUris,
      DeploymentOptions deploymentOptions,
      PackageVolume? targetVolume) {
    final retValuePtr = calloc<COMObject>();
    final packageUriUri = winrt_uri.Uri.createUri(packageUri.toString());

    final hr = ptr.ref.vtable
            .elementAt(19)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<COMObject> packageUri,
                            Pointer<COMObject> dependencyPackageUris,
                            Uint32 deploymentOptions,
                            Pointer<COMObject> targetVolume,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    Pointer<COMObject> packageUri,
                    Pointer<COMObject> dependencyPackageUris,
                    int deploymentOptions,
                    Pointer<COMObject> targetVolume,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        packageUri == null
            ? nullptr
            : packageUriUri.ptr.cast<Pointer<COMObject>>().value,
        dependencyPackageUris == null
            ? nullptr
            : dependencyPackageUris.ptr.cast<Pointer<COMObject>>().value,
        deploymentOptions.value,
        targetVolume == null
            ? nullptr
            : targetVolume.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    packageUriUri.release();

    return retValuePtr;
  }

  Pointer<COMObject> stageUserDataWithOptionsAsync(
      String packageFullName, DeploymentOptions deploymentOptions) {
    final retValuePtr = calloc<COMObject>();
    final packageFullNameHstring = convertToHString(packageFullName);

    final hr = ptr.ref.vtable
            .elementAt(20)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr packageFullName,
                            Uint32 deploymentOptions, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int packageFullName,
                    int deploymentOptions, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        packageFullNameHstring,
        deploymentOptions.value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(packageFullNameHstring);

    return retValuePtr;
  }
}

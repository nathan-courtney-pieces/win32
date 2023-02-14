// ipackagemanager6.dart

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
import '../../foundation/collections/iiterable.dart';
import '../../foundation/iasyncoperationwithprogress.dart';
import '../../foundation/uri.dart' as winrt_uri;
import '../../internal/hstring_array.dart';
import 'deploymentresult.dart';
import 'enums.g.dart';
import 'packagevolume.dart';
import 'structs.g.dart';

/// @nodoc
const IID_IPackageManager6 = '{0847e909-53cd-4e4f-832e-57d180f6e447}';

/// {@category Interface}
/// {@category winrt}
class IPackageManager6 extends IInspectable {
  // vtable begins at 6, is 6 entries long.
  IPackageManager6.fromRawPointer(super.ptr);

  factory IPackageManager6.from(IInspectable interface) =>
      IPackageManager6.fromRawPointer(
          interface.toInterface(IID_IPackageManager6));

  Pointer<COMObject> provisionPackageForAllUsersAsync(
      String packageFamilyName) {
    final retValuePtr = calloc<COMObject>();
    final packageFamilyNameHstring = convertToHString(packageFamilyName);

    final hr = ptr.ref.vtable
            .elementAt(6)
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

    return retValuePtr;
  }

  Pointer<COMObject> addPackageByAppInstallerFileAsync(Uri? appInstallerFileUri,
      AddPackageByAppInstallerOptions options, PackageVolume? targetVolume) {
    final retValuePtr = calloc<COMObject>();
    final appInstallerFileUriUri =
        winrt_uri.Uri.createUri(appInstallerFileUri.toString());

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<COMObject> appInstallerFileUri,
                            Uint32 options,
                            Pointer<COMObject> targetVolume,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    Pointer<COMObject> appInstallerFileUri,
                    int options,
                    Pointer<COMObject> targetVolume,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        appInstallerFileUri == null
            ? nullptr
            : appInstallerFileUriUri.ptr.cast<Pointer<COMObject>>().value,
        options.value,
        targetVolume == null
            ? nullptr
            : targetVolume.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    appInstallerFileUriUri.release();

    return retValuePtr;
  }

  Pointer<COMObject> requestAddPackageByAppInstallerFileAsync(
      Uri? appInstallerFileUri,
      AddPackageByAppInstallerOptions options,
      PackageVolume? targetVolume) {
    final retValuePtr = calloc<COMObject>();
    final appInstallerFileUriUri =
        winrt_uri.Uri.createUri(appInstallerFileUri.toString());

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<COMObject> appInstallerFileUri,
                            Uint32 options,
                            Pointer<COMObject> targetVolume,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    Pointer<COMObject> appInstallerFileUri,
                    int options,
                    Pointer<COMObject> targetVolume,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        appInstallerFileUri == null
            ? nullptr
            : appInstallerFileUriUri.ptr.cast<Pointer<COMObject>>().value,
        options.value,
        targetVolume == null
            ? nullptr
            : targetVolume.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    appInstallerFileUriUri.release();

    return retValuePtr;
  }

  Pointer<COMObject> addPackageToVolumeAndRelatedSetAsync(
      Uri? packageUri,
      IIterable<Uri>? dependencyPackageUris,
      DeploymentOptions options,
      PackageVolume? targetVolume,
      IIterable<String>? optionalPackageFamilyNames,
      IIterable<Uri>? packageUrisToInstall,
      IIterable<Uri>? relatedPackageUris) {
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
                            Uint32 options,
                            Pointer<COMObject> targetVolume,
                            Pointer<COMObject> optionalPackageFamilyNames,
                            Pointer<COMObject> packageUrisToInstall,
                            Pointer<COMObject> relatedPackageUris,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    Pointer<COMObject> packageUri,
                    Pointer<COMObject> dependencyPackageUris,
                    int options,
                    Pointer<COMObject> targetVolume,
                    Pointer<COMObject> optionalPackageFamilyNames,
                    Pointer<COMObject> packageUrisToInstall,
                    Pointer<COMObject> relatedPackageUris,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        packageUri == null
            ? nullptr
            : packageUriUri.ptr.cast<Pointer<COMObject>>().value,
        dependencyPackageUris == null
            ? nullptr
            : dependencyPackageUris.ptr.cast<Pointer<COMObject>>().value,
        options.value,
        targetVolume == null
            ? nullptr
            : targetVolume.ptr.cast<Pointer<COMObject>>().value,
        optionalPackageFamilyNames == null
            ? nullptr
            : optionalPackageFamilyNames.ptr.cast<Pointer<COMObject>>().value,
        packageUrisToInstall == null
            ? nullptr
            : packageUrisToInstall.ptr.cast<Pointer<COMObject>>().value,
        relatedPackageUris == null
            ? nullptr
            : relatedPackageUris.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    packageUriUri.release();

    return retValuePtr;
  }

  Pointer<COMObject> stagePackageToVolumeAndRelatedSetAsync(
      Uri? packageUri,
      IIterable<Uri>? dependencyPackageUris,
      DeploymentOptions options,
      PackageVolume? targetVolume,
      IIterable<String>? optionalPackageFamilyNames,
      IIterable<Uri>? packageUrisToInstall,
      IIterable<Uri>? relatedPackageUris) {
    final retValuePtr = calloc<COMObject>();
    final packageUriUri = winrt_uri.Uri.createUri(packageUri.toString());

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<COMObject> packageUri,
                            Pointer<COMObject> dependencyPackageUris,
                            Uint32 options,
                            Pointer<COMObject> targetVolume,
                            Pointer<COMObject> optionalPackageFamilyNames,
                            Pointer<COMObject> packageUrisToInstall,
                            Pointer<COMObject> relatedPackageUris,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    Pointer<COMObject> packageUri,
                    Pointer<COMObject> dependencyPackageUris,
                    int options,
                    Pointer<COMObject> targetVolume,
                    Pointer<COMObject> optionalPackageFamilyNames,
                    Pointer<COMObject> packageUrisToInstall,
                    Pointer<COMObject> relatedPackageUris,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        packageUri == null
            ? nullptr
            : packageUriUri.ptr.cast<Pointer<COMObject>>().value,
        dependencyPackageUris == null
            ? nullptr
            : dependencyPackageUris.ptr.cast<Pointer<COMObject>>().value,
        options.value,
        targetVolume == null
            ? nullptr
            : targetVolume.ptr.cast<Pointer<COMObject>>().value,
        optionalPackageFamilyNames == null
            ? nullptr
            : optionalPackageFamilyNames.ptr.cast<Pointer<COMObject>>().value,
        packageUrisToInstall == null
            ? nullptr
            : packageUrisToInstall.ptr.cast<Pointer<COMObject>>().value,
        relatedPackageUris == null
            ? nullptr
            : relatedPackageUris.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    packageUriUri.release();

    return retValuePtr;
  }

  Pointer<COMObject> requestAddPackageAsync(
      Uri? packageUri,
      IIterable<Uri>? dependencyPackageUris,
      DeploymentOptions deploymentOptions,
      PackageVolume? targetVolume,
      IIterable<String>? optionalPackageFamilyNames,
      IIterable<Uri>? relatedPackageUris) {
    final retValuePtr = calloc<COMObject>();
    final packageUriUri = winrt_uri.Uri.createUri(packageUri.toString());

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<COMObject> packageUri,
                            Pointer<COMObject> dependencyPackageUris,
                            Uint32 deploymentOptions,
                            Pointer<COMObject> targetVolume,
                            Pointer<COMObject> optionalPackageFamilyNames,
                            Pointer<COMObject> relatedPackageUris,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    Pointer<COMObject> packageUri,
                    Pointer<COMObject> dependencyPackageUris,
                    int deploymentOptions,
                    Pointer<COMObject> targetVolume,
                    Pointer<COMObject> optionalPackageFamilyNames,
                    Pointer<COMObject> relatedPackageUris,
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
        optionalPackageFamilyNames == null
            ? nullptr
            : optionalPackageFamilyNames.ptr.cast<Pointer<COMObject>>().value,
        relatedPackageUris == null
            ? nullptr
            : relatedPackageUris.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    packageUriUri.release();

    return retValuePtr;
  }
}

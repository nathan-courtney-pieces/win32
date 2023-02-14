// ipackagemanager5.dart

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
import 'packagemanagerdebugsettings.dart';
import 'packagevolume.dart';
import 'structs.g.dart';

/// @nodoc
const IID_IPackageManager5 = '{711f3117-1afd-4313-978c-9bb6e1b864a7}';

/// {@category Interface}
/// {@category winrt}
class IPackageManager5 extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IPackageManager5.fromRawPointer(super.ptr);

  factory IPackageManager5.from(IInspectable interface) =>
      IPackageManager5.fromRawPointer(
          interface.toInterface(IID_IPackageManager5));

  Pointer<COMObject> addPackageToVolumeAndOptionalPackagesAsync(
      Uri? packageUri,
      IIterable<Uri>? dependencyPackageUris,
      DeploymentOptions deploymentOptions,
      PackageVolume? targetVolume,
      IIterable<String>? optionalPackageFamilyNames,
      IIterable<Uri>? externalPackageUris) {
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
                            Pointer<COMObject> targetVolume,
                            Pointer<COMObject> optionalPackageFamilyNames,
                            Pointer<COMObject> externalPackageUris,
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
                    Pointer<COMObject> externalPackageUris,
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
        externalPackageUris == null
            ? nullptr
            : externalPackageUris.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    packageUriUri.release();

    return retValuePtr;
  }

  Pointer<COMObject> stagePackageToVolumeAndOptionalPackagesAsync(
      Uri? packageUri,
      IIterable<Uri>? dependencyPackageUris,
      DeploymentOptions deploymentOptions,
      PackageVolume? targetVolume,
      IIterable<String>? optionalPackageFamilyNames,
      IIterable<Uri>? externalPackageUris) {
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
                            Pointer<COMObject> optionalPackageFamilyNames,
                            Pointer<COMObject> externalPackageUris,
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
                    Pointer<COMObject> externalPackageUris,
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
        externalPackageUris == null
            ? nullptr
            : externalPackageUris.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    packageUriUri.release();

    return retValuePtr;
  }

  Pointer<COMObject> registerPackageByFamilyNameAndOptionalPackagesAsync(
      String mainPackageFamilyName,
      IIterable<String>? dependencyPackageFamilyNames,
      DeploymentOptions deploymentOptions,
      PackageVolume? appDataVolume,
      IIterable<String>? optionalPackageFamilyNames) {
    final retValuePtr = calloc<COMObject>();
    final mainPackageFamilyNameHstring =
        convertToHString(mainPackageFamilyName);

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            IntPtr mainPackageFamilyName,
                            Pointer<COMObject> dependencyPackageFamilyNames,
                            Uint32 deploymentOptions,
                            Pointer<COMObject> appDataVolume,
                            Pointer<COMObject> optionalPackageFamilyNames,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer,
                    int mainPackageFamilyName,
                    Pointer<COMObject> dependencyPackageFamilyNames,
                    int deploymentOptions,
                    Pointer<COMObject> appDataVolume,
                    Pointer<COMObject> optionalPackageFamilyNames,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        mainPackageFamilyNameHstring,
        dependencyPackageFamilyNames == null
            ? nullptr
            : dependencyPackageFamilyNames.ptr.cast<Pointer<COMObject>>().value,
        deploymentOptions.value,
        appDataVolume == null
            ? nullptr
            : appDataVolume.ptr.cast<Pointer<COMObject>>().value,
        optionalPackageFamilyNames == null
            ? nullptr
            : optionalPackageFamilyNames.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(mainPackageFamilyNameHstring);

    return retValuePtr;
  }

  PackageManagerDebugSettings? get debugSettings {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
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

    return PackageManagerDebugSettings.fromRawPointer(retValuePtr);
  }
}

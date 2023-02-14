// ipackagemanager7.dart

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
const IID_IPackageManager7 = '{f28654f4-2ba7-4b80-88d6-be15f9a23fba}';

/// {@category Interface}
/// {@category winrt}
class IPackageManager7 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IPackageManager7.fromRawPointer(super.ptr);

  factory IPackageManager7.from(IInspectable interface) =>
      IPackageManager7.fromRawPointer(
          interface.toInterface(IID_IPackageManager7));

  Pointer<COMObject> requestAddPackageAndRelatedSetAsync(
      Uri? packageUri,
      IIterable<Uri>? dependencyPackageUris,
      DeploymentOptions deploymentOptions,
      PackageVolume? targetVolume,
      IIterable<String>? optionalPackageFamilyNames,
      IIterable<Uri>? relatedPackageUris,
      IIterable<Uri>? packageUrisToInstall) {
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
                            Pointer<COMObject> relatedPackageUris,
                            Pointer<COMObject> packageUrisToInstall,
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
                    Pointer<COMObject> packageUrisToInstall,
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
        packageUrisToInstall == null
            ? nullptr
            : packageUrisToInstall.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    packageUriUri.release();

    return retValuePtr;
  }
}

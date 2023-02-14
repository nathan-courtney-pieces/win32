// ipackagemanager9.dart

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
import '../../foundation/collections/ivector.dart';
import '../../foundation/iasyncoperationwithprogress.dart';
import '../../foundation/uri.dart' as winrt_uri;
import '../../internal/hstring_array.dart';
import 'addpackageoptions.dart';
import 'deploymentresult.dart';
import 'enums.g.dart';
import 'registerpackageoptions.dart';
import 'stagepackageoptions.dart';
import 'structs.g.dart';

/// @nodoc
const IID_IPackageManager9 = '{1aa79035-cc71-4b2e-80a6-c7041d8579a7}';

/// {@category Interface}
/// {@category winrt}
class IPackageManager9 extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IPackageManager9.fromRawPointer(super.ptr);

  factory IPackageManager9.from(IInspectable interface) =>
      IPackageManager9.fromRawPointer(
          interface.toInterface(IID_IPackageManager9));

  IVector<Package> findProvisionedPackages() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
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

  Pointer<COMObject> addPackageByUriAsync(
      Uri? packageUri, AddPackageOptions? options) {
    final retValuePtr = calloc<COMObject>();
    final packageUriUri = winrt_uri.Uri.createUri(packageUri.toString());

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> packageUri,
                            Pointer<COMObject> options, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> packageUri,
                    Pointer<COMObject> options, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        packageUri == null
            ? nullptr
            : packageUriUri.ptr.cast<Pointer<COMObject>>().value,
        options == null
            ? nullptr
            : options.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    packageUriUri.release();

    return retValuePtr;
  }

  Pointer<COMObject> stagePackageByUriAsync(
      Uri? packageUri, StagePackageOptions? options) {
    final retValuePtr = calloc<COMObject>();
    final packageUriUri = winrt_uri.Uri.createUri(packageUri.toString());

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> packageUri,
                            Pointer<COMObject> options, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> packageUri,
                    Pointer<COMObject> options, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        packageUri == null
            ? nullptr
            : packageUriUri.ptr.cast<Pointer<COMObject>>().value,
        options == null
            ? nullptr
            : options.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    packageUriUri.release();

    return retValuePtr;
  }

  Pointer<COMObject> registerPackageByUriAsync(
      Uri? manifestUri, RegisterPackageOptions? options) {
    final retValuePtr = calloc<COMObject>();
    final manifestUriUri = winrt_uri.Uri.createUri(manifestUri.toString());

    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer,
                                Pointer<COMObject> manifestUri,
                                Pointer<COMObject> options,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, Pointer<COMObject> manifestUri,
                        Pointer<COMObject> options, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            manifestUri == null
                ? nullptr
                : manifestUriUri.ptr.cast<Pointer<COMObject>>().value,
            options == null
                ? nullptr
                : options.ptr.cast<Pointer<COMObject>>().value,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    manifestUriUri.release();

    return retValuePtr;
  }

  Pointer<COMObject> registerPackagesByFullNameAsync(
      IIterable<String>? packageFullNames, RegisterPackageOptions? options) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<COMObject> packageFullNames,
                            Pointer<COMObject> options,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> packageFullNames,
                    Pointer<COMObject> options, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        packageFullNames == null
            ? nullptr
            : packageFullNames.ptr.cast<Pointer<COMObject>>().value,
        options == null
            ? nullptr
            : options.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  void setPackageStubPreference(
      String packageFamilyName, PackageStubPreference useStub) {
    final packageFamilyNameHstring = convertToHString(packageFamilyName);

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr packageFamilyName,
                            Int32 useStub)>>>()
            .value
            .asFunction<
                int Function(Pointer, int packageFamilyName, int useStub)>()(
        ptr.ref.lpVtbl, packageFamilyNameHstring, useStub.value);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(packageFamilyNameHstring);
  }

  PackageStubPreference getPackageStubPreference(String packageFamilyName) {
    final retValuePtr = calloc<Int32>();
    final packageFamilyNameHstring = convertToHString(packageFamilyName);

    try {
      final hr = ptr.ref.vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, IntPtr packageFamilyName,
                              Pointer<Int32>)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, int packageFamilyName, Pointer<Int32>)>()(
          ptr.ref.lpVtbl, packageFamilyNameHstring, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return PackageStubPreference.from(retValuePtr.value);
    } finally {
      WindowsDeleteString(packageFamilyNameHstring);
      free(retValuePtr);
    }
  }
}

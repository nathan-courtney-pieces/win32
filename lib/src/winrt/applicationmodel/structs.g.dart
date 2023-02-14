// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import
// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

/// Gets the installation progress of installing a resource package or an
/// app package.
///
/// {@category Struct}
class PackageInstallProgress extends Struct {
  @Uint32()
  external int PercentComplete;
}

/// Represents the package version info.
///
/// {@category Struct}
class PackageVersion extends Struct {
  @Uint16()
  external int Major;

  @Uint16()
  external int Minor;

  @Uint16()
  external int Build;

  @Uint16()
  external int Revision;
}

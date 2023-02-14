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

/// Identifies a sub-string of a source text string. Your app can use this
/// structure to obtain the segment of your provided text that is identified
/// by AlternateWordForm, SelectableWordSegment, WordSegment, or
/// SemanticTextQuery.
///
/// {@category Struct}
class TextSegment extends Struct {
  @Uint32()
  external int StartPosition;

  @Uint32()
  external int Length;
}

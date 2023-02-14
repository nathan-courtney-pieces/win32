// documentproperties.dart

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
import '../../foundation/collections/ikeyvaluepair.dart';
import '../../foundation/collections/imap.dart';
import '../../foundation/collections/ivector.dart';
import '../../foundation/iasyncaction.dart';
import '../../foundation/iasyncoperation.dart';
import '../../internal/hstring_array.dart';
import 'idocumentproperties.dart';
import 'istorageitemextraproperties.dart';

/// Provides access to the document-related properties of an item (like a
/// file or folder).
///
/// {@category Class}
/// {@category winrt}
class DocumentProperties extends IInspectable
    implements IDocumentProperties, IStorageItemExtraProperties {
  DocumentProperties.fromRawPointer(super.ptr);

  // IDocumentProperties methods
  late final _iDocumentProperties = IDocumentProperties.from(this);

  @override
  IVector<String> get author => _iDocumentProperties.author;

  @override
  String get title => _iDocumentProperties.title;

  @override
  set title(String value) => _iDocumentProperties.title = value;

  @override
  IVector<String> get keywords => _iDocumentProperties.keywords;

  @override
  String get comment => _iDocumentProperties.comment;

  @override
  set comment(String value) => _iDocumentProperties.comment = value;

  // IStorageItemExtraProperties methods
  late final _iStorageItemExtraProperties =
      IStorageItemExtraProperties.from(this);

  @override
  Future<IMap<String, Object?>> retrievePropertiesAsync(
          IIterable<String>? propertiesToRetrieve) =>
      _iStorageItemExtraProperties
          .retrievePropertiesAsync(propertiesToRetrieve);

  @override
  Future<void> savePropertiesAsync(
          IIterable<IKeyValuePair<String, Object?>>? propertiesToSave) =>
      _iStorageItemExtraProperties.savePropertiesAsync(propertiesToSave);

  @override
  Future<void> savePropertiesAsyncOverloadDefault() =>
      _iStorageItemExtraProperties.savePropertiesAsyncOverloadDefault();
}

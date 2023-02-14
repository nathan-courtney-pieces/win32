// sortentryvector.dart

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
import '../../foundation/collections/iiterator.dart';
import '../../foundation/collections/ivector.dart';
import '../../foundation/collections/ivectorview.dart';
import '../../internal/hstring_array.dart';
import 'structs.g.dart';

/// Provides access to the sorting criteria of the query results as a
/// collection of SortEntry objects.
///
/// {@category Class}
/// {@category winrt}
class SortEntryVector extends IInspectable
    implements IVector<SortEntry>, IIterable<SortEntry> {
  SortEntryVector.fromRawPointer(super.ptr);

  // IVector<SortEntry> methods
  late final _iVector = IVector<SortEntry>.fromRawPointer(
      toInterface('{d8ea401b-47b3-5254-84f4-eea10c4cf068}'),
      iterableIid: '{35aff6f9-ef75-5280-bb84-a2bf8317cf35}');

  @override
  SortEntry getAt(int index) => _iVector.getAt(index);

  @override
  int get size => _iVector.size;

  @override
  List<SortEntry> getView() => _iVector.getView();

  @override
  bool indexOf(SortEntry value, Pointer<Uint32> index) =>
      _iVector.indexOf(value, index);

  @override
  void setAt(int index, SortEntry value) => _iVector.setAt(index, value);

  @override
  void insertAt(int index, SortEntry value) => _iVector.insertAt(index, value);

  @override
  void removeAt(int index) => _iVector.removeAt(index);

  @override
  void append(SortEntry value) => _iVector.append(value);

  @override
  void removeAtEnd() => _iVector.removeAtEnd();

  @override
  void clear() => _iVector.clear();

  @override
  int getMany(int startIndex, int valueSize, Pointer<NativeType> value) =>
      _iVector.getMany(startIndex, valueSize, value);

  @override
  void replaceAll(List<SortEntry> value) => _iVector.replaceAll(value);

  @override
  IIterator<SortEntry> first() => _iVector.first();

  @override
  List<SortEntry> toList() => _iVector.toList();
}

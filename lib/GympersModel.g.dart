// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GympersModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GympersModel on _GympersModelBase, Store {
  late final _$collectionOfBrandsAtom =
      Atom(name: '_GympersModelBase.collectionOfBrands', context: context);

  @override
  List<String> get collectionOfBrands {
    _$collectionOfBrandsAtom.reportRead();
    return super.collectionOfBrands;
  }

  @override
  set collectionOfBrands(List<String> value) {
    _$collectionOfBrandsAtom.reportWrite(value, super.collectionOfBrands, () {
      super.collectionOfBrands = value;
    });
  }

  late final _$collectionOfDataAtom =
      Atom(name: '_GympersModelBase.collectionOfData', context: context);

  @override
  List<Map<dynamic, dynamic>> get collectionOfData {
    _$collectionOfDataAtom.reportRead();
    return super.collectionOfData;
  }

  @override
  set collectionOfData(List<Map<dynamic, dynamic>> value) {
    _$collectionOfDataAtom.reportWrite(value, super.collectionOfData, () {
      super.collectionOfData = value;
    });
  }

  late final _$collectionOfTempDataAtom =
      Atom(name: '_GympersModelBase.collectionOfTempData', context: context);

  @override
  List<Map<dynamic, dynamic>> get collectionOfTempData {
    _$collectionOfTempDataAtom.reportRead();
    return super.collectionOfTempData;
  }

  @override
  set collectionOfTempData(List<Map<dynamic, dynamic>> value) {
    _$collectionOfTempDataAtom.reportWrite(value, super.collectionOfTempData,
        () {
      super.collectionOfTempData = value;
    });
  }

  late final _$_GympersModelBaseActionController =
      ActionController(name: '_GympersModelBase', context: context);

  @override
  dynamic setBrands({required List<String> collectionOfBrands}) {
    final _$actionInfo = _$_GympersModelBaseActionController.startAction(
        name: '_GympersModelBase.setBrands');
    try {
      return super.setBrands(collectionOfBrands: collectionOfBrands);
    } finally {
      _$_GympersModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setProducts({required List<Map<dynamic, dynamic>> collectionOfData}) {
    final _$actionInfo = _$_GympersModelBaseActionController.startAction(
        name: '_GympersModelBase.setProducts');
    try {
      return super.setProducts(collectionOfData: collectionOfData);
    } finally {
      _$_GympersModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTempData(
      {required List<Map<dynamic, dynamic>> collectionOfTempData}) {
    final _$actionInfo = _$_GympersModelBaseActionController.startAction(
        name: '_GympersModelBase.setTempData');
    try {
      return super.setTempData(collectionOfTempData: collectionOfTempData);
    } finally {
      _$_GympersModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
collectionOfBrands: ${collectionOfBrands},
collectionOfData: ${collectionOfData},
collectionOfTempData: ${collectionOfTempData}
    ''';
  }
}

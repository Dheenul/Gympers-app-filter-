import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'GympersModel.g.dart';

class GympersModel = _GympersModelBase with _$GympersModel;

abstract class _GympersModelBase with Store {
  @observable
  List<String> collectionOfBrands = [];
  @observable
  List<Map<dynamic, dynamic>> collectionOfData = [{}];
  @observable
  List<Map<dynamic, dynamic>> collectionOfTempData = [{}];
  @action
  setBrands({required List<String> collectionOfBrands}) =>
      this.collectionOfBrands = collectionOfBrands;
  @action
  setProducts({required List<Map<dynamic, dynamic>> collectionOfData}) =>
      this.collectionOfData = collectionOfData;
      @action
  setTempData({required List<Map<dynamic, dynamic>> collectionOfTempData}) =>
      this.collectionOfTempData = collectionOfTempData;
}

import 'package:get/get.dart';
import 'package:flutter/material.dart';
class Search {
  String keyword ;
  Search(this.keyword);

  static List<Search> keywords = [
    Search("sanatorium_1".tr),
    Search("sanatorium_2".tr),
    Search("sanatorium_3".tr),
    Search("sanatorium_4".tr),
    Search("sanatorium_5".tr),
  ];

}
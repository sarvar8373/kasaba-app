import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_mobilek/components/sanatorium_box.dart';
import 'package:new_mobilek/components/sanatorium_loc.dart';
import 'package:new_mobilek/components/search_sanatorium.dart';
import 'package:new_mobilek/components/search_section_title.dart';
import 'package:new_mobilek/models/search.dart';

class SanatoriumScreen extends StatefulWidget {
  SanatoriumScreen({Key key}) : super(key: key);

  @override
  State<SanatoriumScreen> createState() => _SanatoriumScreenState();
}

class _SanatoriumScreenState extends State<SanatoriumScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          SanatoriumLoc(),
          SearchSanatorium(),
          Divider(
            height: 48,
            color: Color(0xffB7B7B7),
          ),
          SearchSetionTitle(title: "last_search".tr),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24).copyWith(bottom: 24),
            child: Wrap(
              children: Search.keywords.map((search) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 6),
                  margin: EdgeInsets.only(
                    right: 12,
                    bottom: 12
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xffffffff),
                      border: Border.all(color: Color(0xffF1F1F1)),
                    ),
                    child: Text(search.keyword),
                );
              }).toList(),
            ),
            ),
            SearchSetionTitle(title: "sanatorium".tr),
            SanatoriumBox()
        ],
      ),
    );
  }
}



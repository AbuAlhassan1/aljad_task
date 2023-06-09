// ignore_for_file: use_build_context_synchronously
import 'dart:convert';
import 'dart:developer';
import 'package:aljad_task/models/realestate/realestate_model.dart';
import 'package:aljad_task/services/remote.dart';
import 'package:aljad_task/views/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'realestate_controller.g.dart';

class RealEstate = _RealEstateBase with _$RealEstate;

abstract class _RealEstateBase with Store {
  final Remote remote = Remote({});
  final Remote remote2 = Remote.customContentType({}, contentType: "application/x-www-form-urlencoded");

  @observable
  bool isScrollLoading = false;

  @observable
  ObservableList<RealEstateModel> realEstates = ObservableList<RealEstateModel>();

  @observable
  int pageNumber = 1;

  @observable
  int count = 0;

  @action
  Future<void> getRealEstates(int page, BuildContext context) async {
    if(!isScrollLoading){
      isScrollLoading = true;
      pageNumber = page;
      var response = await remote.request(
        method: "Get",
        path: "/realestate",
        queryParameters: {
          "skip": page*10,
          "take": 10
        }
      );

      if( response != null ){
        if( response['status_code'] == 200 ){
          // log( ( response['body']['results'] as List ) .toString());

          List results = response['body']['results'] as List ;

          results.forEach((realEstate) {
            realEstates.add(RealEstateModel.fromJson(realEstate));
          });

        }else{
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            content: CustomText.createCustomTajawalText(
              text: "Something went wrong !",
              color: Colors.white,
              fontSize: 16,
            )
          ));
        }
      }
    }
    isScrollLoading = false;
  }

  @action
  Future<void> getCount(BuildContext context) async {
    var response = await remote.request(
      method: "Get",
      path: "/config",
    );

    if( response != null ){
      if( response['status_code'] == 200 ){

        count = response['body']["count"];

      }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: CustomText.createCustomTajawalText(
            text: "Something went wrong !",
            color: Colors.white,
            fontSize: 16,
          )
        ));
      }
    }
  }

  @action
  Future<void> increaceCount(BuildContext context) async {
    var response = await remote2.request(
      method: "PATCH",
      path: "/config/count",
      payload: {
        'count': count + 1
      }
    );

    if( response != null ){
      if( response['status_code'] == 200 ){
        count = response['body']['count'];
      }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: CustomText.createCustomTajawalText(
            text: "Something went wrong !",
            color: Colors.white,
            fontSize: 16,
          )
        ));
      }
    }
  }
}
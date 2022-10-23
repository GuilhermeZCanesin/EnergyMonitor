import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double getConsumptionAvg(List<double>? consumptionList) {
  // get the average value of consumptionList
  if (consumptionList == null || consumptionList.isEmpty) return 0.0;
  double sum = 0;
  double avg; // average
  for (var item in consumptionList) {
    sum += item;
  }
  avg = sum / consumptionList.length;
  return avg;
}

double getAllConsumptionAvg(List<DocumentReference>? userEquip) {
  if (userEquip == null || userEquip.isEmpty) return 0.0;
  double sum = 0;
  double avg = 0;
  double finalAvg = 0;
  List<int> indices = List<int>.generate(userEquip.length, (i) => i);

  List fullList =
      indices.take(userEquip.length).map((i) => userEquip[i]).toList();

  for (var itemList in fullList) {
    for (var item in itemList.consumption) {
      sum = sum + item;
    }
    avg = sum / itemList.length;
    finalAvg = finalAvg + avg;
    sum = 0;
    avg = 0;
  }
  return finalAvg;
}

double getRTAllConsumptionAvg(List<DocumentReference>? userEquip) {
  if (userEquip == null || userEquip.isEmpty) return 0.0;
  double sum = 0;
  List<int> indices = List<int>.generate(userEquip.length, (i) => i);

  List fullList =
      indices.take(userEquip.length).map((i) => userEquip[i]).toList();

  for (var item in fullList) {
    sum = sum + item.consumptionRT;
  }
  return sum;
}

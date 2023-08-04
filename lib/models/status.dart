import 'package:flutter/material.dart';

enum CurrentStatus{
available,
notAvailable,
parked,
booked,
}
class Status{
  const Status(this.title,this.color);
  final String title;
  final Color color;

}
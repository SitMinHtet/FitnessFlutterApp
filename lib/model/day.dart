import 'package:flutter/material.dart';

class Day{
  String dayName;
  String dayNumber;
  Day(this.dayName, this.dayNumber);
}

List<Day> day = [
  Day("SUN", "01"),
  Day("MON", "02"),
  Day("TUE", "03"),
  Day("WED", "04"),
  Day("THU", "05"),
  Day("FRI", "06"),
  Day("SAT", "07"),
];

final List<int> weeklyData = [10, 12, 4, 16, 20, 16, 14];
final List<int> hourlyData = [5,7,10,11,17,18,14,15,12,11,8,7,11,19,6,8,10,12,18,16,14,17,11,13];
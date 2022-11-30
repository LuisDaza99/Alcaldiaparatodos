import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendario extends StatefulWidget {
  @override
  _CalendarioState createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: TableCalendar(
            firstDay: DateTime.utc(2010, 10, 20),
            lastDay: DateTime.utc(2040, 10, 20),
            focusedDay: DateTime.now(),
            headerVisible: true,
            daysOfWeekVisible: true,
            sixWeekMonthsEnforced: true,
            shouldFillViewport: false,
            headerStyle: HeaderStyle(
                titleTextStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w800)),
            calendarStyle: CalendarStyle(
                todayTextStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}

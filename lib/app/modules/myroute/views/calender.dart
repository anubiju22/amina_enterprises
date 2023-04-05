import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HorizontalCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          final DateTime date = DateTime.now().add(Duration(days: index));
          Color colors = scaffoldBgColor;
          if (date == DateTime.now) {
            Color colors = primaryColor;
          } else {
            Color colors = scaffoldBgColor;
          }
          return _buildDay(date, colors);
        },
      ),
    );
  }

  Widget _buildDay(DateTime date, Color? colors) {
    final formatter = DateFormat('E');
    final dayOfWeek = formatter.format(date);

    return Container(
      width: 50,
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: colors

              // Colors.grey[300],
              // scaffoldBgColor,
              ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            dayOfWeek.toUpperCase(),
            style: TextStyle(
              color: Color(0xff252525),
              fontSize: 16,
              fontFamily: "Manrope",
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 5),
          Text(
            date.day.toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontFamily: "Manrope",
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

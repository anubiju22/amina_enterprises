import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HorizontalCalendar extends StatelessWidget {
  const HorizontalCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          final DateTime date = DateTime.now().add(Duration(days: index));

          return _buildDay(date);
        },
      ),
    );
  }

  Widget _buildDay(DateTime date) {
    final formatter = DateFormat('E');
    final dayOfWeek = formatter.format(date);

    return Container(
      width: 50,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: DateTime.now().day == date.day ? primaryColor : scaffoldBgColor,
        // scaffoldBgColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            dayOfWeek.toUpperCase(),
            style: const TextStyle(
              color: Color(0xff252525),
              fontSize: 16,
              fontFamily: "Manrope",
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            date.day.toString(),
            style: const TextStyle(
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

import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/card/my_route_card.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
// import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:get/get.dart';

import '../../../../constraints/date_formats.dart';
import '../../../common_widgets/myroute_bottomsheet.dart';
import '../../footwears/views/footwears_view.dart';
import '../controllers/myroute_controller.dart';

class MyrouteView extends GetView<MyrouteController> {
  const MyrouteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CommonAppBar(label: "My Route"),
        backgroundColor: scaffoldBgColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              // Row(
              //   children: [
              //     const SizedBox(
              //       width: 10,
              //     ),
              //     greyText(
              //       fontWeight: FontWeight.w500,
              //       DateFormat('MMMM yyyy').format(controller.selectedDates),
              //       20,
              //     ),

              //     TextButton(
              //         onPressed: () {
              //           controller.chooseDate();
              //         },
              //         child: Icon(
              //           Icons.expand_more,
              //           color: Colors.grey,
              //         )),

              //   ],
              // ),

              // Padding(
              //   padding: const EdgeInsets.all(20),
              //   child: HorizontalCalendar(),
              // ),
              // Row(
              //   children: [
              //     Container(
              //       height: 100,
              //       width: 50,
              //       child: SingleChildScrollView(
              //         scrollDirection: Axis.vertical,
              //         child: HorizontalCalendar(
              //           date: DateTime.now(),
              //           initialDate:
              //               DateTime.now().subtract(Duration(days: 30)),
              //           showMonth: true,         //  firstDate: DateTime.now().subtract(Duration(days: 30)),
              //           lastDate: DateTime.now().add(Duration(days: 30)),
              //           // selectedDateTime: DateTime.now(),
              //           onDateSelected: (date) => print(date),
              //           textColor: Colors.black45,
              //           backgroundColor: Colors.transparent,
              //           selectedColor: Colors.blue,
              //           // baseColor: Colors.grey.shade300,
              //           // You can add more properties here as needed
              //         ),
              //       ),
              //     )
              //   ],
              // ),

              // CalendarTimeline(
              //   // shrink: true,
              //   // showYears: true,
              //   initialDate: DateTime.now(),
              //   firstDate: DateTime(2019, 1, 15),
              //   lastDate: DateTime(2028, 11, 20),
              //   onDateSelected: (date) => print(date),
              //   leftMargin: 20,
              //   // monthColor: Colors.blueGrey,
              //   dayColor: Colors.black,
              //   activeDayColor: Colors.white,
              //   activeBackgroundDayColor: redColor,
              //   dotsColor: redColor,
              //   // selectableDayPredicate: (date) => date.day != 23,
              //   // locale: 'en_ISO',
              // ),

              const Calender(),

              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  svgWidget('assets/svg/location.svg'),
                  const SizedBox(
                    width: 5,
                  ),
                  greyText(
                    fontWeight: FontWeight.w500,
                    "Palayam, Kozhikode",
                    18,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              AnimationLimiter(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      final items = controller.routeList[index];
                      return AnimationConfiguration.staggeredList(
                          position: index,
                          child: SlideAnimation(
                            duration: const Duration(milliseconds: 350),
                            // horizontalOffset: 50.0,
                            verticalOffset: 50.0,
                            child: Column(
                              children: [
                                const Divider(
                                  thickness: 2,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.bottomSheet(
                                      RouteBottomSheet(
                                        tittle: items.title,
                                        type: "Retailer",
                                        items: items,
                                      ),
                                      elevation: 20.0,
                                      enableDrag: false,
                                      backgroundColor: Colors.white,
                                      shape: bootomSheetShape(),
                                    );
                                  },
                                  child: MyRouteCard(
                                    shopname: controller.routeList[index].title,
                                    location:
                                        controller.routeList[index].location,
                                    number: controller.routeList[index].mobile,
                                  ),
                                ),
                              ],
                            ),
                          ));
                    }),
              ),
              const Divider(
                thickness: 2,
              ),
            ],
          ),
        ));
  }
}

class Calender extends StatelessWidget {
  const Calender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CalendarWeek(
      // month: [ ],
      marginMonth: const EdgeInsets.only(
        left: 20,
        // bottom: 10
      ),

      monthViewBuilder: (DateTime date) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 5,
            //  bottom: 5
          ),
          child: Container(
            alignment: Alignment.topLeft,
            color: scaffoldBgColor,
            child: greyText('  ${returnMonth(date)} ${date.year} ', 20,
                fontWeight: FontWeight.w500),
          ),
        );
      },

      showMonth: true,
      dayOfWeekStyle: const TextStyle(color: Colors.black),
      todayDateStyle: const TextStyle(color: Colors.black),
      dateStyle: const TextStyle(color: Colors.black),
      pressedDateBackgroundColor: redColor,

      backgroundColor: scaffoldBgColor,
      controller: CalendarWeekController(),
      height: MediaQuery.of(context).size.height * 0.18,

      minDate: DateTime.now().add(
        const Duration(days: -365),
      ),
      maxDate: DateTime.now().add(
        const Duration(days: 365),
      ),
      onDatePressed: (DateTime datetime) {
        // Do something
      },
      onDateLongPressed: (DateTime datetime) {
        // Do something
      },
      onWeekChanged: () {
        // Do something
      },
    );
  }
}

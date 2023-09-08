import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/card/my_route_card.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:amina_enterprises/constraints/pop-up.dart';
import 'package:flutter/material.dart';
// import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../../../../constraints/date_formats.dart';
import '../../../common_widgets/myroute_bottomsheet.dart';
import '../../order_history/views/order_history_view.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Calender(),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        svgWidget('assets/svg/location.svg'),
                        const SizedBox(
                          width: 5,
                        ),
                        greyText(
                          fontWeight: FontWeight.w500,
                          "Palayam, Kozhikode",
                          15,
                        )
                      ],
                    ),
                    rectangleRedBg(Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 12.0),
                      child: Row(
                        children: [
                          blackText('Shops Visited', 14,
                              fontWeight: FontWeight.w500),
                          const SizedBox(
                            width: 5,
                          ),
                          redText('2/24', 14, fontWeight: FontWeight.w600)
                        ],
                      ),
                    ))
                  ],
                ),
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
                                  onTap: () async {
                                    dynamic status = await routeDialog();
                                    if (status == true) {
                                      Get.bottomSheet(
                                        RouteBottomSheet(
                                          tittle: items.title,
                                          // type: "Retailer",
                                          location: items.location,
                                          items: items,
                                        ),
                                        elevation: 20.0,
                                        enableDrag: false,
                                        backgroundColor: Colors.white,
                                        shape: bootomSheetShape(),
                                      );
                                    }
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

  Widget rectangleRedBg(Widget childWidget) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: homeMenuColor.withOpacity(0.5)),
      child: childWidget,
    );
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
      marginMonth: const EdgeInsets.only(left: 20, bottom: 10),

      monthViewBuilder: (DateTime date) {
        return Padding(
          padding: const EdgeInsets.only(left: 5),
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

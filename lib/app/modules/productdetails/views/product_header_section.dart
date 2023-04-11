import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/modules/productdetails/controllers/productdetails_controller.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductHeaderSection extends StatelessWidget {
  const ProductHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GetBuilder<ProductdetailsController>(builder: (controller) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "GP4300",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  blackText('MRP:  ', 14),
                  const Text(
                    "₹ 250",
                    style: TextStyle(
                      color: redColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  greyText("VKC Pride", 16),
                  const SizedBox(
                    height: 2,
                  ),
                  greyText(
                    "Gents Covering",
                    16,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
                child: VerticalDivider(
                  color: Colors.grey,
                  width: 20,
                  thickness: 1,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              // StockWidget(stock: 12, onClick: () {}),
              Column(
                children: [
                  blackText(
                    'Stock Availablilty',
                    13,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    decoration: BoxDecoration(
                        color: const Color(0xFF787878),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Text(
                        "Out of Stock",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      );
    });
  }
}

class StockWidget extends StatelessWidget {
  final int stock;
  final Function? onClick;
  const StockWidget({
    Key? key,
    required this.stock,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width2 = MediaQuery.of(context).size.width * .20;
    return InkWell(
      onTap: () {
        onClick!();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Stock Availablilty',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Stack(
            children: [
              Container(
                height: 5,
                width: width2 * 3,
                decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 5,
                // width: width2 * stockAvailabilityCheck(stock),
                decoration: BoxDecoration(
                    // color: stockAvailabilityCheck(stock) == 1
                    //     ? const Color(0xFF787878)
                    //     : stockAvailabilityCheck(stock) == 2
                    //         ? const Color(0xFF52B2F8)
                    //         : const Color(0xFF30D136),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: width2,
                child: Row(
                  children: [
                    circleColorWidget(const Color(0xFF787878)),
                    const SizedBox(
                      width: 5,
                    ),
                    text('Below 10'),
                  ],
                ),
              ),
              SizedBox(
                width: width2,
                child: Row(
                  children: [
                    circleColorWidget(const Color(0xFF52B2F8)),
                    const SizedBox(
                      width: 5,
                    ),
                    text('11 - 50'),
                  ],
                ),
              ),
              SizedBox(
                width: width2,
                child: Row(
                  children: [
                    circleColorWidget(const Color(0xFF30D136)),
                    const SizedBox(
                      width: 5,
                    ),
                    text('Above 50'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Text text(String text) => Text(
        text,
        style: const TextStyle(fontSize: 12),
      );

  Container circleColorWidget(Color color) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}

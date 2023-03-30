import 'package:amina_enterprises/app/common_widgets/card/product_card.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: MasonryGridView.count(
        itemCount: 3,
        crossAxisCount: 2,
        mainAxisSpacing: 24,
        crossAxisSpacing: 20,
        itemBuilder: (context, index) {
          return ProductCard(
              artNo: 'GP4300',
              brandName: 'Gents Coverings',
              image: "",
              // "https://icon2.cleanpng.com/20180323/eaq/kisspng-slipper-footwear-shoe-sandal-flip-flops-men-shoes-5ab57871171a07.8676672615218422890946.jpg",
              mrp: '350',
              onTap: () {
                Get.toNamed(Routes.PRODUCTDETAILS);
              },
              colors: Color(0xFFCF2812),
              color: Color(0xFFE45A5A));
        },
      ),
    );
  }
}

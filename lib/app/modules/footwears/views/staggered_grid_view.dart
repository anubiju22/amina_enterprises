import 'package:amina_enterprises/app/common_widgets/card/product_card.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GridView.custom(
        gridDelegate: SliverWovenGridDelegate.count(pattern: [
          const WovenGridTile(1),
          const WovenGridTile(
            8 / 7,
            //  crossAxisRatio: 0.5,
            alignment: AlignmentDirectional.centerEnd,
          )
        ], crossAxisCount: 2, mainAxisSpacing: 4, crossAxisSpacing: 12),
        // itemBuilder: (context, index) {
        //   return ProductCard(
        //       artNo: 'GP4300',
        //       brandName: 'Gents Coverings',
        //       image: "",
        //       // "https://icon2.cleanpng.com/20180323/eaq/kisspng-slipper-footwear-shoe-sandal-flip-flops-men-shoes-5ab57871171a07.8676672615218422890946.jpg",
        //       mrp: '350',
        //       onTap: () {
        //         Get.toNamed(Routes.PRODUCTDETAILS);
        //       },
        //       colors: Color(0xFFCF2812),
        //       color: Color(0xFFE45A5A));
        // },
        childrenDelegate: SliverChildBuilderDelegate((context, index) {
          return ProductCard(
              artNo: 'SAMBAR POWDER',
              brandName: '#6302',
              image: "assets/image/product.png",
              // "https://icon2.cleanpng.com/20180323/eaq/kisspng-slipper-footwear-shoe-sandal-flip-flops-men-shoes-5ab57871171a07.8676672615218422890946.jpg",
              mrp: '350',
              onTap: () {
                Get.toNamed(Routes.PRODUCTDETAILS);
              },
              colors: const Color(0xFFCF2812),
              color: const Color(0xFFE45A5A));
        }, childCount: 6),
      ),
    );
  }
}

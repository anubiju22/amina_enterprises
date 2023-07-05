import 'package:amina_enterprises/app/common_widgets/card/product_card.dart';
import 'package:amina_enterprises/app/modules/footwears/controllers/footwears_controller.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:amina_enterprises/services/base_url.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class ProductView extends GetView<FootwearsController> {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => controller.isLoading.value
            ? CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.all(15),
                child: GridView.custom(
                  gridDelegate: SliverWovenGridDelegate.count(
                      pattern: [
                        WovenGridTile(1),
                        WovenGridTile(
                          8 / 7,
                          //  crossAxisRatio: 0.5,
                          alignment: AlignmentDirectional.centerEnd,
                        )
                      ],
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 12),

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

                  childrenDelegate:
                      SliverChildBuilderDelegate((context, index) {
                    final product = controller.productList[index];
                    return ProductCard(
                        artNo: product.artNo,
                        brandName: product.brandname,
                        image: product.attributes.first.images.length > 1
                            ? product.attributes.first.images.first.image ==
                                    BaseUrl().noImageUrl
                                ? product.attributes.first.images[1].image
                                : product.attributes.first.images[0].image
                            : product.attributes.first.images[0].image,
                        // "https://icon2.cleanpng.com/20180323/eaq/kisspng-slipper-footwear-shoe-sandal-flip-flops-men-shoes-5ab57871171a07.8676672615218422890946.jpg",
                        mrp: product.mrp,
                        onTap: () {
                          Get.toNamed(Routes.PRODUCTDETAILS,
                              arguments: [product.id, product.name]);
                        },
                        colors: Color(0xFFCF2812),
                        color: Color(0xFFE45A5A));
                  }, childCount: controller.productList.length),
                ),
              )));
  }
}

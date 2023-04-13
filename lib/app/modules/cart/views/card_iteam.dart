import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartItemCard extends StatelessWidget {
  // final CartResponse cartResponse;
  // final int index;
  // final Function removeClick;
  // final TextEditingController totalQuantityController;
  const CartItemCard({
    Key? key,
    // required this.cartResponse,
    // required this.removeClick,
    // required this.index
    // required this.totalQuantityController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                "https://icon2.cleanpng.com/20180323/eaq/kisspng-slipper-footwear-shoe-sandal-flip-flops-men-shoes-5ab57871171a07.8676672615218422890946.jpg",
                // cartResponse.img,
                width: MediaQuery.of(context).size.width * .3,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " cartResponse.artNo,",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            // "(${cartResponse.categoryName})",
                            "hi",
                            style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                                fontSize: 12),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                              onPressed: () {
                                //  removeClick();
                              },
                              icon: const Icon(Icons.delete_outline))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " cartResponse.brandName,",
                            style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                                fontSize: 13),
                          ),
                          Text(
                            "cartResponse.productType.toUpperCase(),",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.red.shade300,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "cartResponse.productName,",
                        style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 13),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "mrp",
                            // "₹ ${cartResponse.mrp}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "   cartResponse.orderType,",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          // SizedBox(
          //   width: double.infinity,
          //   child: Wrap(
          //       spacing: 10,
          //       runSpacing: 10,
          //       children: cartResponse.itemSize
          //           .map((size) => SizeItemWidget(
          //                 value: size.size,
          //                 qty: size.qty,
          //                 addPress: () {
          //                   if (cartResponse.orderType == 'Cut size') return;
          //                   controller.updateCartQty(
          //                       cartResponse, size, "Add");
          //                 },
          //                 lessPress: () {
          //                   if (cartResponse.orderType == 'Cut size') return;
          //                   if (size.qty < 2) return;
          //                   controller.updateCartQty(
          //                       cartResponse, size, "Less");
          //                 },
          //               ))
          //           .toList()),
          // ),
          // if (cartResponse.orderType == 'Cut size')
          //   Container(
          //     padding: const EdgeInsets.all(10),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         const Text(
          //           "Enter Required Quantity",
          //           style: TextStyle(fontSize: 12),
          //         ),
          //         SizedBox(
          //           width: 55,
          //           height: 35,
          //           child: CommonTextField(
          //             // textEditingController: totalQuantityController,
          //             hintText: cartResponse.totalQuantity,
          //             isCenterText: true,
          //             onChanged: (dynamic value) {
          //               controller.updateCutSizeRequiredQuntity(index, value);
          //             },
          //           ),
          //         )
          //       ],
          //     ),
          //   )
        ],
      ),
    );
  }
}

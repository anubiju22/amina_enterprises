// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class ProductView extends StatelessWidget {
//   const ProductView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//                   color: Colors.white,
//                   child: StaggeredGrid.countBuilder(
//         crossAxisCount: 4,
//         itemCount: images.length,
//         itemBuilder: (BuildContext context, int index) => Card(
//           child: Column(
//             children: <Widget>[
//               Image.network(images[index]),
//               Text("Some text"),
//             ],
//           ),
//         ),
//         staggeredTileBuilder: (int index) =>
//         new StaggeredTile.fit(2),
//         mainAxisSpacing: 4.0,
//         crossAxisSpacing: 4.0,
//       ),
//     );
//   }
// }
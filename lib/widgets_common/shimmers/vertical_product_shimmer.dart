// import 'package:flutter/material.dart';
//
// class SiajVerticalProductShimmer extends StatelessWidget {
//   final int itemCount;
//
//   const SiajVerticalProductShimmer({super.key, this.itemCount = 4});
//
//   @override
//   Widget build(BuildContext context) {
//     return SiajGridLayout(
//         itemCount: itemCount,
//         itemBuilder: (_, __) => const SizedBox(
//               width: 180,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   /// Image
//                   SiajShimmerEffect(width: 180, height: 180),
//                   SizedBox(height: SiajSizes.spaceBtwItems),
//                   /// Text
//                   SiajShimmerEffect(width: 160, height: 15),
//                   SizedBox(height: SiajSizes.spaceBtwItems / 2),
//                   SiajShimmerEffect(width: 110, height: 15)
//                 ],
//               ),
//             ));
//   }
// }

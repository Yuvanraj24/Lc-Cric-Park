// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:lk_cric_park/core/assets/texts.dart';
// import 'package:lk_cric_park/core/constants/app_sizes.dart';
// import 'package:lk_cric_park/utils/validators/validation.dart';
// import 'package:lk_cric_park/widgets_common/appbar/appbar.dart';
//
// class ChangeName extends StatelessWidget {
//   const ChangeName({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(UpdateNameController());
//     return Scaffold(
//       /// Custom Appbar
//       appBar: SiajAppBar(
//         showBackArrow: true,
//         title: Text("Change Name", style: Theme.of(context).textTheme.headlineSmall)
//       ),
//       body: Padding(padding: const EdgeInsets.all(AppSizes.defaultSpace),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           /// Headings
//           Text("Use real name for easy verification. This name appear on several pages.",
//           style: Theme.of(context).textTheme.labelMedium,
//           ),
//
//           const SizedBox(height: AppSizes.spaceBtwSections),
//
//           /// Text field and Button
//           Form(
//             key: controller.updateUserNameFormKey,
//             child: Column(
//               children: [
//                 TextFormField(
//                   controller: controller.firstName,
//                   validator: (value) => SiajValidator.validateEmptyText("First Name", value),
//                   expands: false,
//                   decoration: const InputDecoration(
//                     labelText: AppTextStrings.firstName,
//                     prefixIcon: Icon(Iconsax.user)
//                   ),
//                 ),
//
//                 const SizedBox(height: AppSizes.spaceBtwInputFields),
//
//                 TextFormField(
//                   controller: controller.lastName,
//                   validator: (value) => SiajValidator.validateEmptyText("Last Name", value),
//                   expands: false,
//                   decoration: const InputDecoration(
//                     labelText: AppTextStrings.lastName,
//                     prefixIcon: Icon(Iconsax.user)
//                   ),
//                 ),
//
//                 const SizedBox(height: AppSizes.spaceBtwSections),
//
//                 /// Save Button
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(onPressed: () => controller.updateUserName(), child: Text("Save")),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//       ),
//     );
//   }
// }

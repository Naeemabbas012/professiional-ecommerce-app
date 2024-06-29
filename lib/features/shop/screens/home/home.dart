import 'package:e_commerce_app/common/widgets/products/product_cards/product_cart_vertical.dart';
import 'package:e_commerce_app/features/shop/screens/all_products/all_products.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/custom_shapes/containers/primary-header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: SingleChildScrollView(
     child: Column(
       children: [
         /// Header -- Tutorial [Section # 3 Video # 2]
           const TPrimaryHeaderContainer(
           child: Column(
             children: [
               /// Appbar -- Tutorial [Section # 3 Video # 3]
               THomeAppBar(),
               SizedBox(height: TSizes.spaceBtwSections),

               /// SearchBar -- Tutorial [Section # 3 Video # 4]
               TSearchContainer(text: 'Search in Store', showBorder: false),
               SizedBox(height: TSizes.spaceBtwSections),

               ///  /// Categories -- Tutorial [Section # 3 Video # 2]
               Padding(padding: EdgeInsets.only(left: TSizes.defaultSpace),
                 child: Column(
                   children: [
                     /// heading
                     TSectionHeading(title: 'Popular Categories',showActionButton: false, textColor: Colors.white),
                     SizedBox(height: TSizes.spaceBtwItems),

                     /// Categories
                     THomeCategories(),
                   ],
                 ),
               ),
               SizedBox(height: TSizes.spaceBtwSections),
             ],
           ),
         ),

         /// body -- Tutorial {section # 3, Video # 5}

         Padding(
           padding: const EdgeInsets.all(TSizes.defaultSpace),
           child: Column(
             children: [
               /// promo slider -- Tutorial [section # 3 video # 6]
               const TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3]),
               const SizedBox(height: TSizes.spaceBtwSections),

               /// heading
               TSectionHeading(title: 'Popular Product', onPressed: () => Get.to(() => const AllProducts())),
               const SizedBox(height: TSizes.spaceBtwSections),


               /// -- popular products -- tutorial [section # 3 video # 7]
              TGridLayout(itemCount: 2, itemBuilder: (_, index) => const TProductCardVertical()),
             ],
           ),
         ),


       ],
     ),
   ),
    );
  }
}



























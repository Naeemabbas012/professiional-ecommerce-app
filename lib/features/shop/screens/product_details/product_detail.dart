import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Scaffold(
     bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
            children: [
        /// product image slider
        const TProductImageSlider(),
              /// Product Details
              Padding(
                padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// rating & share Button
                    const TRatingAndShare(),

                    /// Price, Title, Stock & Brand
                     const TProductMetaData(),

                    /// Attributes
                    const TProductAttributes(),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// Checkout Button
                    SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// Description
                    const TSectionHeading(title: 'Description', showActionButton: false),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const ReadMoreText(
                      'This is product description for blue nike sleeve less vest.There are more things that can be added but some items are hidden because this is our product policy.',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: ' show more ',
                      trimExpandedText: 'less',
                      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),

                    ),

                    /// Reviews
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TSectionHeading(title: 'Reviews(199)', showActionButton: false),
                        IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18), onPressed: () => Get.to(() => const ProductReviewsScreen())),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                  ],
                ),
              )

    ],
    ),
    ),
    );
  }
}





import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text('Profile')),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user, width: 80,height: 80),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),

                  ],
                ),
              ),

              /// Details
               const SizedBox(height: TSizes.spaceBtwItems / 2),
               const Divider(),
               const SizedBox(height: TSizes.spaceBtwItems),
              /// Heading Profile Info
              const TSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

               TProfileMenu(title: 'Name', value: 'Naeem Abbas', onPressed: (){}),
               TProfileMenu(title: 'Username', value: 'Naeem Abbas', onPressed: (){}),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Personal Info
              const TSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),
              
              TProfileMenu(title: 'User ID',value: '12345', icon: Iconsax.copy, onPressed: (){}),
              TProfileMenu(title: 'Email',value: 'naeem12 @gmail.com', onPressed: (){}),
              TProfileMenu(title: 'Phone Number',value: '+923115093704', onPressed: (){}),
              TProfileMenu(title: 'Gender',value: 'Male', onPressed: (){}),
              TProfileMenu(title: 'Date of Birth',value: '01 Jan, 1996', onPressed: (){}),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



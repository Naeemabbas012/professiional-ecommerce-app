import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class TCircularIcon extends StatelessWidget {
  /// A custom circular icon widget with a background color.
  ///
  /// properties are
  /// container [width], [height], & [backgroundColor].
  ///
  /// Icons [size], [color], & [onPressed]

  const TCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = TSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,

  });
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
       color: backgroundColor != null
           ? backgroundColor!
           : THelperFunctions.isDarkMode(context)
              ? TColors.black.withOpacity(0.9)
              : TColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),

      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon,color: color,size: size)),
    );
  }
}
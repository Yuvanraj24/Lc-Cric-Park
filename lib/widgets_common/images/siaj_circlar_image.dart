import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/core/theme/color.dart';
import 'package:lk_cric_park/utils/helpers/helper_functions.dart';
import 'package:lk_cric_park/widgets_common/shimmers/shimmer_effect.dart';

class SiajCircularImage extends StatelessWidget {
  const SiajCircularImage(
      {super.key,
      this.fit = BoxFit.cover,
      required this.image,
      this.isNetworkImage = false,
      this.overlayColor,
      this.backgroundColor,
      this.width = 56,
      this.height = 56,
      this.padding = AppSizes.sm,
      this.isImage = true,
      this.imageHolderText

      });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;
  final bool isImage;
  final String? imageHolderText;

  @override
  Widget build(BuildContext context) {
    final darkMode = SiajHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color:
              backgroundColor ?? (darkMode ? AppColors.black : AppColors.white),
          borderRadius: BorderRadius.circular(100)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Center(
          child: isImage
              ? isNetworkImage
                  ? CachedNetworkImage(
                      fit: fit,
                      color: overlayColor,
                      imageUrl: image,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                              const SiajShimmerEffect(width: 55, height: 55),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    )
                  : Image(
                      fit: fit,
                      image: AssetImage(image) as ImageProvider,
                      color: overlayColor,
                    )
              : Text(imageHolderText ?? '',style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold
          ))
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lk_cric_park/core/theme/color.dart';
import 'package:lk_cric_park/widgets_common/custom_shapes/containers/circular_container.dart';
import 'package:lk_cric_park/widgets_common/custom_shapes/curved_edges/curved_edges_widget.dart';

class SiajPrimaryHeaderContainer extends StatelessWidget {
  const SiajPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SiajCurvedEdgeWidget(
      child: Container(
        color: AppColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: SiajCircularContainer(
                    backgroundColor: AppColors.textWhite.withValues(alpha: 0.1))),
            Positioned(
                top: 100,
                right: -300,
                child: SiajCircularContainer(
                    backgroundColor: AppColors.textWhite.withValues(alpha: 0.1))),
            child
          ],
        ),
      ),
    );
  }
}
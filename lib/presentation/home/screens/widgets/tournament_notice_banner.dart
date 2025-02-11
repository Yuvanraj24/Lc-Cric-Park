import 'package:flutter/material.dart';
import 'package:lk_cric_park/core/theme/color.dart';
import 'package:lk_cric_park/widgets_common/custom_shapes/containers/rounded_container.dart';

class TournamentNoticeBanner extends StatelessWidget {
  const TournamentNoticeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SiajRoundedContainer(
      width: double.infinity,
      borderColor: AppColors.primaryColor.withValues(alpha: .2),
      showBorder: true,
      padding: EdgeInsets.all(10),
      backgroundColor: AppColors.appWhite.withValues(alpha: .9),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 1.0,
          offset: Offset(0, 2)
        ),
      ],

      child: Row(
        children: [
          Icon(Icons.sports_cricket,
          color: AppColors.green,
          ),
          Column(
            children: [
              Text("Tournament",
              style: Theme.of(context).textTheme.headlineSmall),
              Text("Rs 35000",
              style: Theme.of(context).textTheme.labelLarge),
            ],
          )

        ],
      )
    );
  }
}

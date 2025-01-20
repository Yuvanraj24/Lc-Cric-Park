import 'package:flutter/material.dart';
import 'package:lk_cric_park/core/theme/color.dart';

class TournamentNoticeBanner extends StatelessWidget {
  const TournamentNoticeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text.rich(
        TextSpan(
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(text: "Tournament\n"),
            TextSpan(
              text: "Price value ",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "\u{20B9} 50,000",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

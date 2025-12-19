import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';

class ReviewWidget extends StatelessWidget {
  final String userName;
  final String comment;

  const ReviewWidget({
    super.key,
    required this.userName,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(Assets.svgs.star),
            SvgPicture.asset(Assets.svgs.star),
            SvgPicture.asset(Assets.svgs.star),
            SvgPicture.asset(Assets.svgs.star),
            SvgPicture.asset(Assets.svgs.star),
            Gap(4),
            Text(
              userName,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        Gap(4),
        Text(
          comment,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Gap(8),
        Divider(
          thickness: 1,
          height: 1,
          color: ThemeManager.greyColor,
        ),
        Gap(8),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/theme/colors.dart';
import '../../unils/utils.dart';

class SportbooEntityNotFoundWidget extends StatelessWidget {

  final String title;
  final String subtitle;

  const SportbooEntityNotFoundWidget({
    super.key,
    this.title = 'No match available',
    this.subtitle = 'Pick another date to access matches',
});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.tertiary1,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
            spreadRadius: 0, blurRadius: 8,
            color: AppColors.tertiary11.withOpacity(0.08),
          )
        ],
        image: DecorationImage(
          fit: BoxFit.fill,
          image: ExactAssetImage(
            getImage(
              'bg element',
            ),
          ),
        ),
      ),
      child: Column(
        children: [
          SvgPicture.asset('assets/svgs/football_out.svg'),
          Gap(16.h),
          Text(title, textAlign: TextAlign.center, style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.tertiaryBase10,
          ),),
          Gap(16.h),
          Text(subtitle, textAlign: TextAlign.center, style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.tertiary6,
          ),),
        ],
      ),
    );
  }
}

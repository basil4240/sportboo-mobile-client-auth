import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/theme/colors.dart';
import '../../core/unils/utils.dart';

class SportbooNoInternetConnectionWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onRefresh;

  const SportbooNoInternetConnectionWidget(
      {super.key,
      this.title = 'No internet connection',
      this.subtitle = 'Connect to the internet to access features',
      required this.onRefresh});

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
          SvgPicture.asset('assets/svgs/network_symbol.svg'),
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
          Gap(16.h),
          RefreshButton(onRefresh: onRefresh,)
        ],
      ),
    );
  }
}

class RefreshButton extends StatelessWidget {
  final VoidCallback onRefresh;

  const RefreshButton({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onRefresh,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            border: Border.all(color: AppColors.primaryBase6),
            color: AppColors.primaryBase6),
        child: Text(
          'Refresh',
          style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.tertiary0),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../core/theme/colors.dart';

class PillWidget extends StatelessWidget {
  const PillWidget({super.key, required this.text,
    this.icon, this.active = false, this.dense = false
  });

  final String text;
  final Widget? icon;
  final bool active;
  final bool dense;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: dense ? EdgeInsets.all(4.r) : const EdgeInsets.fromLTRB(2, 4, 16, 4),
      decoration: BoxDecoration(
        border: Border.all(
            color: active ? AppColors.primaryBase6 : AppColors.tertiary4,),
        color: active ? AppColors.primary2 : AppColors.tertiary3,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: dense ? 24.h : 32.h, width: dense ? 24.w : 32.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: active ? AppColors.primary7 : AppColors.tertiaryBase10,
            ),
            child: Center(child: SizedBox(width: dense ? 20.w : 24.w, height: dense ? 20.h : 24.h, child: icon ?? _iconPlaceholder(),)),
          ),
          Gap(4.w),
          Text(
            text,
            style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color:  active ? AppColors.primaryBase6 : AppColors.tertiary8),
          ),
          Gap(8.w),
        ],
      ),
    );
  }

  Widget _iconPlaceholder() => Container(
    height: dense ? 20.h : 24.h, width: dense ? 20.w : 24.w,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: AppColors.tertiaryTint3
    ),
  );
}

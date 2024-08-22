import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sportboo_mobile_client/components/button_widget.dart';
import 'package:sportboo_mobile_client/core/theme/colors.dart';

class ExistingAccountDialog extends StatelessWidget {
  const ExistingAccountDialog({super.key, required this.message, required this.onYesTap});

  final String message;
  final void Function() onYesTap;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
      contentPadding: EdgeInsets.symmetric(vertical: 35.h, horizontal: 10.w),
      content: SizedBox(
        width: .80.w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/svgs/login_icon.svg',
              height: 56,
              width: 56,
            ),
            Gap(10.h),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                fontSize: 13.sp,
                color: AppColors.tertiaryBase10,
              ),
            ),
            Gap(25.h),
            Text(
              'Would you like to continue ?',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
            ),
            Gap(32.h),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    onTap: () => Navigator.pop(context),
                    text: 'No',
                    color: AppColors.danger4,
                  ),
                ),
                SizedBox(width: 20.w),
                Expanded(
                  child: AppButton(
                    onTap: onYesTap,
                    text: 'Yes',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

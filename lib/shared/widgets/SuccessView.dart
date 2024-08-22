import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:sportboo_mobile_client/core/unils/navigation.dart';

import '../../components/button_widget.dart';
import '../../core/theme/colors.dart';
import '../../core/unils/utils.dart';

class SuccessView extends StatelessWidget {
  final String message;
  final String buttonTitle;
  final Widget? nextScreen;
  const SuccessView({super.key, required this.message, required this.buttonTitle, this.nextScreen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter,
              image: ExactAssetImage(
                getImage(
                  'create_bet_dialog_bg',
                ),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Gap(16.h),
                      Image.asset(
                        getImage(
                          'success',
                        ),
                      ),
                      Gap(40.h),
                      Text(
                        'Success',
                        style: getTextTheme(context).headlineMedium,
                      ),
                      Gap(16.h),
                      Text(
                        message,
                        textAlign: TextAlign.center,
                        style: getTextTheme(context).bodyLarge!.copyWith(
                          color: AppColors.tertiary8,
                        ),
                      ),
                      Gap(16.h),
                    ],
                  ),
                ),
                AppButton(
                    text: buttonTitle,
                    onTap: () {
                      nextScreen != null ? PageRouter.gotoWidget(context, nextScreen!) : Navigator.of(context).pop();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
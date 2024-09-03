import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../components/button_widget.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/unils/navigation.dart';
import '../../../../core/unils/utils.dart';
import 'add_competitions_view.dart';

class AgeConfirmationView extends StatelessWidget {
  const AgeConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          width: getDeviceWidth(context),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: ExactAssetImage(
                getImage('bg overlay'),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 45, 24, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '1 of 3',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColors.tertiaryBase10,
                  ),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(24.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: AppColors.tertiary1,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.tertiary8.withOpacity(0.16),
                          spreadRadius: 0,
                          blurRadius: 24,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'SportyBet',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 31,
                            color: AppColors.tertiaryBase10,
                          ),
                        ),
                        Gap(24.h),
                        const Text(
                          'Please help us verify your correct age by selecting the correct age category below.',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColors.tertiaryBase10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(16.h),
                        const Text(
                          'Learn More',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: AppColors.primaryBase6,
                          ),
                        ),
                        const Gap(32),
                        AppButton(
                          text: '18 & Above',
                          onTap: () {
                            PageRouter.gotoWidget(
                              context,
                              const AddCompetitionsView(),
                            );
                          },
                        ),
                        const Gap(16),
                        AppButton(
                          text: 'Under 18',
                          outlined: true,
                          onTap: () {
                            showSportbooSnackBar(
                              'Apologies, you’re not yet of the required age. Please return when you’re 18+.',
                              (_) {},
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Your data is protected as published in our \n',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: AppColors.tertiary9,
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: AppColors.primaryBase6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
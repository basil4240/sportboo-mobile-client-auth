import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../components/base_viewmodel.dart';
import '../../components/base_widget.dart';
import '../../components/button_widget.dart';
import '../../core/theme/colors.dart';
import 'filtter_bottom_sheet.dart';

class CompetitionTeamFilterBottomSheet extends StatelessWidget {
  final List<Filter> filters;
  const CompetitionTeamFilterBottomSheet({super.key, required this.filters});

  @override
  Widget build(BuildContext context) =>
      BaseWidget<CompetitionTeamFilterBottomSheetModel>(
        viewModel: CompetitionTeamFilterBottomSheetModel(filters),
        builder: (BuildContext context,
                CompetitionTeamFilterBottomSheetModel viewModel, _) =>
            Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
              color: AppColors.tertiary1,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              )),
          child: Column(
            children: [
              SizedBox(
                height: 32,
                width: double.infinity,
                child: Center(
                  child: Container(
                    width: 48,
                    height: 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.tertiary5),
                  ),
                ),
              ),
              const Gap(8),
              Text(
                'Filter Bets',
                style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                    color: AppColors.tertiaryBase10),
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
                        ),
                        child: Column(
                          children: [
                            Gap(20.h),
                            InkWell(
                              onTap: () => viewModel
                                  .onFilterTap(CTFilterType.mostPopular),
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                    color: AppColors.tertiary3,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Row(
                                  children: [
                                    CustomRadioButton(
                                      checked: viewModel.filters
                                          .firstWhere((element) =>
                                              element.filterType ==
                                              CTFilterType.mostPopular)
                                          .selectState,
                                    ),
                                    const Gap(16),
                                    Text(
                                      'Most Popular',
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Inter',
                                          color: AppColors.tertiary8),
                                    ),
                                    const Expanded(
                                      child: SizedBox(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Gap(8.h),
                            InkWell(
                              onTap: () => viewModel
                                  .onFilterTap(CTFilterType.alphabetically),
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                    color: AppColors.tertiary3,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Row(
                                  children: [
                                    CustomRadioButton(
                                      checked: viewModel.filters
                                          .firstWhere((element) =>
                                              element.filterType ==
                                              CTFilterType.alphabetically)
                                          .selectState,
                                    ),
                                    const Gap(16),
                                    Text(
                                      'Alphabetically',
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Inter',
                                          color: AppColors.tertiary8),
                                    ),
                                    const Expanded(
                                      child: SizedBox(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Gap(8.h),
                            InkWell(
                              onTap: () =>
                                  viewModel.onFilterTap(CTFilterType.region),
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                    color: AppColors.tertiary3,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Row(
                                  children: [
                                    CustomRadioButton(
                                      checked: viewModel.filters
                                          .firstWhere((element) =>
                                              element.filterType ==
                                              CTFilterType.region)
                                          .selectState,
                                    ),
                                    const Gap(16),
                                    Text(
                                      'Region',
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Inter',
                                          color: AppColors.tertiary8),
                                    ),
                                    const Expanded(
                                      child: SizedBox(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Gap(8.h),
                            InkWell(
                              onTap: () =>
                                  viewModel.onFilterTap(CTFilterType.country),
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                    color: AppColors.tertiary3,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Row(
                                  children: [
                                    CustomRadioButton(
                                      checked: viewModel.filters
                                          .firstWhere((element) =>
                                              element.filterType ==
                                              CTFilterType.country)
                                          .selectState,
                                    ),
                                    const Gap(16),
                                    Text(
                                      'Country',
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Inter',
                                          color: AppColors.tertiary8),
                                    ),
                                    const Expanded(
                                      child: SizedBox(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: AppButton(
                        text: 'Reset',
                        onTap: viewModel.onReset,
                        outlined: true,
                        fillColor: AppColors.primary1,
                      ),
                    ),
                    const Gap(16),
                    Expanded(
                      child: AppButton(
                        text: 'Apply',
                        onTap: () {
                          // go back with the list of filtered items for the caller to use.
                          Navigator.of(context).pop(viewModel.filters);
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}

class CompetitionTeamFilterBottomSheetModel extends BaseViewModel {

  final List<Filter> filters;

  CompetitionTeamFilterBottomSheetModel(this.filters);

  void onReset() {
    for (var element in filters) {
      element.selectState = false;
    }

    notifyListeners();
  }

  void onFilterTap(CTFilterType filterType) {
    for (var element in filters) {
      if (element.filterType == filterType) {
        element.selectState = !element.selectState;
      }
    }

    notifyListeners();
  }
}

class Filter {
  final CTFilterType filterType;
  bool selectState;

  Filter({required this.filterType, required this.selectState});
}

enum CTFilterType {
  mostPopular,
  alphabetically,
  region,
  country,
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../shared/widgets/text_field.dart';
import '../../../models/market_data.dart';
import '../../components/base_widget.dart';
import '../../components/button_widget.dart';
import '../../core/theme/colors.dart';
import '../../core/unils/navigation.dart';
import 'filtter_bottom_sheet_model.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseWidget<FilterBottomSheetModel>(
        viewModel: FilterBottomSheetModel(),
        builder: (BuildContext context, FilterBottomSheetModel viewModel, _) =>
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
              const Text(
                'Filter Bets',
                style: TextStyle(
                    fontSize: 25,
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
                            const Gap(20),
                            InkWell(
                              onTap: () =>
                                  viewModel.onFilterTap(FilterType.mostRecent),
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
                                              FilterType.mostRecent)
                                          .selectState,
                                    ),
                                    const Gap(16),
                                    const Text(
                                      'Most Recent',
                                      style: TextStyle(
                                          fontSize: 16,
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
                            const Gap(8),
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  clipBehavior: Clip.antiAlias,
                                  backgroundColor: kcTransparentColor,
                                  isScrollControlled: true,
                                  constraints: BoxConstraints(
                                      maxHeight:
                                          MediaQuery.of(context).size.height *
                                              0.60),
                                  context: context,
                                  builder: (context) {
                                    return MarketTypesSheet(viewModel: viewModel,);
                                  },
                                );
                              },
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
                                      checked: viewModel.marketTypeFilters.isNotEmpty,
                                    ),
                                    const Gap(16),
                                    const Text(
                                      'Market Types',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Inter',
                                          color: AppColors.tertiary8),
                                    ),
                                    const Expanded(
                                      child: SizedBox(),
                                    ),
                                    const Icon(Icons.chevron_right_rounded, color: Color(0xFF555555)),
                                  ],
                                ),
                              ),
                            ),
                            const Gap(8),
                            InkWell(
                              onTap: () =>
                                  viewModel.onFilterTap(FilterType.placedBets),
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
                                              FilterType.placedBets)
                                          .selectState,
                                    ),
                                    const Gap(16),
                                    const Text(
                                      'Placed Bets',
                                      style: TextStyle(
                                          fontSize: 16,
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
                            const Gap(8),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                  color: AppColors.tertiary3,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () => viewModel
                                        .onFilterTap(FilterType.amount),
                                    child: CustomRadioButton(
                                      checked: viewModel.filters
                                          .firstWhere((element) =>
                                              element.filterType ==
                                              FilterType.amount)
                                          .selectState,
                                    ),
                                  ),
                                  const Gap(16),
                                  const Text(
                                    'Amount',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Inter',
                                        color: AppColors.tertiary8),
                                  ),
                                  const Expanded(
                                    child: SizedBox(),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                    width: 100,
                                    child: CustomTextField(
                                      label: 'Enter Amount',
                                      radius: 8,
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Inter',
                                          fontSize: 13,
                                          color: AppColors.tertiary8),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Inter',
                                          fontSize: 13,
                                          color: AppColors.tertiary8),
                                      borderColor: AppColors.tertiary4,
                                      fillColor: AppColors.tertiary2,
                                      horizontalPadding: 8,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Gap(8),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                  color: AppColors.tertiary3,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () =>
                                        viewModel.onFilterTap(FilterType.limit),
                                    child: CustomRadioButton(
                                      checked: viewModel.filters
                                          .firstWhere((element) =>
                                              element.filterType ==
                                              FilterType.limit)
                                          .selectState,
                                    ),
                                  ),
                                  const Gap(16),
                                  const Text(
                                    'Limit',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Inter',
                                        color: AppColors.tertiary8),
                                  ),
                                  const Expanded(
                                    child: SizedBox(),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                    width: 77,
                                    child: CustomTextField(
                                      label: 'Minimum',
                                      radius: 8,
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Inter',
                                          fontSize: 13,
                                          color: AppColors.tertiary8),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Inter',
                                          fontSize: 13,
                                          color: AppColors.tertiary8),
                                      borderColor: AppColors.tertiary4,
                                      fillColor: AppColors.tertiary2,
                                      horizontalPadding: 8,
                                    ),
                                  ),
                                  const Gap(8),
                                  const SizedBox(
                                    height: 30,
                                    width: 77,
                                    child: CustomTextField(
                                      label: 'Maximum',
                                      radius: 8,
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Inter',
                                          fontSize: 13,
                                          color: AppColors.tertiary8),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Inter',
                                          fontSize: 13,
                                          color: AppColors.tertiary8),
                                      borderColor: AppColors.tertiary4,
                                      fillColor: AppColors.tertiary2,
                                      horizontalPadding: 8,
                                    ),
                                  ),
                                ],
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
                          PageRouter.goBack(context);
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


class MarketTypesSheet extends StatefulWidget {
  final FilterBottomSheetModel viewModel;
  const MarketTypesSheet({super.key, required this.viewModel});

  @override
  State<MarketTypesSheet> createState() => _MarketTypesSheetState();
}

class _MarketTypesSheetState extends State<MarketTypesSheet> {
  @override
  Widget build(BuildContext context) => Container(
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
        const Text(
          'Market Types',
          style: TextStyle(
              fontSize: 25,
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
                      const Gap(20),
                      ...MarketType.values.map((e) => Column(
                        children: [
                          Container(
                            margin:
                            const EdgeInsets.symmetric(horizontal: 16),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                                color: AppColors.tertiary3,
                                borderRadius: BorderRadius.circular(16)),
                            child: Row(
                              children: [
                                Text(
                                  e.name,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Inter',
                                      color: AppColors.tertiary8),
                                ),
                                const Expanded(
                                  child: SizedBox(),
                                ),
                                const Gap(16),
                                InkWell(
                                    onTap:() {
                                      setState(() {
                                        widget.viewModel.onMarketTypesFilter(e);
                                      });
                                    },
                                    child: CustomCheckBox(isChecked: widget.viewModel.marketTypeFilters.contains(e), id: e,))
                              ],
                            ),
                          ),
                          const Gap(8),
                        ],
                      )).toList()
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
                  text: 'Back',
                  onTap: () {
                    PageRouter.goBack(context);
                  },
                  outlined: true,
                  fillColor: AppColors.primary1,
                ),
              ),
              const Gap(16),
              Expanded(
                child: AppButton(
                  text: 'Apply',
                  onTap: () {
                    PageRouter.goBack(context);
                  },
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}


class CustomRadioButton extends StatelessWidget {
  final bool checked;

  const CustomRadioButton({
    super.key,
    required this.checked,
  });

  @override
  Widget build(BuildContext context) => Container(
        height: 24,
        width: 24,
        padding: EdgeInsets.all(checked ? 7 : 1),
        decoration: BoxDecoration(
            color: checked ? AppColors.primaryBase6 : AppColors.tertiary5,
            shape: BoxShape.circle),
        child: Container(
          decoration: const BoxDecoration(
              color: AppColors.tertiary1, shape: BoxShape.circle),
        ),
      );
}

class CustomCheckBox extends StatelessWidget {
  final bool isChecked;
  final MarketType id;

  const CustomCheckBox(
      {super.key,
        required this.isChecked,
        required this.id,});

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(2),
    width: 24,
    height: 24,
    decoration: BoxDecoration(
      border: Border.all(
        color: isChecked
            ? AppColors.primaryBase6
            : AppColors.tertiary5,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(4),
    ),
    child: Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        color: isChecked
            ? AppColors.primaryBase6
            : AppColors.tertiary5,
        borderRadius: BorderRadius.circular(2),
      ),
      child: isChecked
          ? const Center(
          child: Icon(
            Icons.check,
            color: AppColors.tertiary1,
            size: 14,
            weight: 2,
          ))
          : null,
    ),
  );
}

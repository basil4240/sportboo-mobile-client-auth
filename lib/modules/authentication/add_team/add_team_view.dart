import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../../../components/base_widget.dart';
import '../../../components/button_widget.dart';
import '../../../core/theme/colors.dart';
import '../../../shared/widgets/SuccessView.dart';
import '../../../shared/widgets/competition_team_filter_bottom_sheet.dart';
import '../../../shared/widgets/pill_widget.dart';
import '../../../core/unils/navigation.dart';
import '../../../core/unils/utils.dart';
import '../../../src/onboarding/presentation/views/add_competitions_view.dart';
import '../favourite_team_card.dart';
import '../../../src/auth/presentation/view/login_view.dart';
import 'add_team_view_model.dart';


class AddTeamView extends StatelessWidget {
  final Set<Map> leagues;

  AddTeamView({super.key, required this.leagues});

  BuildContext? _mainContext;

  @override
  Widget build(BuildContext context) {
    _mainContext ??= context;
    return BaseWidget<AddTeamViewModel>(
      viewModel: AddTeamViewModel(leagues),
      initViewModel: (AddTeamViewModel viewModel) {
        viewModel.init();
      },
      builder: (BuildContext context, AddTeamViewModel viewModel, _) =>
          Scaffold(
        backgroundColor: AppColors.tertiary0,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: kcDarkTextOneColor),
          backgroundColor: AppColors.tertiary0,
          title: Text(
            '3 of 3',
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'Inter',
                color: AppColors.tertiaryBase10),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Gap(16.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                  child: Text(
                    'Add Teams',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 25.sp,
                        color: AppColors.tertiaryBase10),
                  ),
                ),
                Gap(8.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                  child: Text(
                      'Add your favourite teams to personalize your experience.',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          color: AppColors.tertiary7)),
                ),
                Gap(16.h),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: _buildPillsListView()),
                StickyHeader(
                    header: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      color: AppColors.tertiary0,
                      child: AnimatedSearchBar(
                          onSearch: viewModel.onSearch,
                          onClear: viewModel.onClear),
                    ),
                    content: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                getSvg(
                                  'setting',
                                ),
                              ),
                              const Gap(8),
                              GestureDetector(
                                onTap: () async {
                                  var res = await showModalBottomSheet(
                                    clipBehavior: Clip.antiAlias,
                                    backgroundColor: kcTransparentColor,
                                    isScrollControlled: true,
                                    constraints: BoxConstraints(
                                        maxHeight: MediaQuery.of(context).size.height * 0.50
                                    ),
                                    context: context,
                                    builder: (context) {
                                      return CompetitionTeamFilterBottomSheet(filters: viewModel.filters,);
                                    },
                                  );

                                  viewModel.onReceiveFilter(res);

                                },
                                behavior: HitTestBehavior.opaque,
                                child: Text(
                                  'Most Popular',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                      color: AppColors.tertiary8),
                                ),
                              )
                            ],
                          ),
                          Gap(20.h),
                          viewModel.busy
                              ? const Center(child: SizedBox())
                              : viewModel.errorMessage != null
                                  ? Padding(
                                      padding: const EdgeInsets.all(25.0),
                                      child: Column(
                                        children: [
                                          Text(viewModel.errorMessage!),
                                          Gap(15.sp),
                                          if (!viewModel.errorMessage!.contains(
                                              'No result found for this search'))
                                            AppButton(
                                                text: 'Reload',
                                                onTap: viewModel.init)
                                        ],
                                      ),
                                    )
                                  : viewModel.teams.isEmpty
                                      ? Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(25.0),
                                            child: Column(
                                              children: [
                                                const Text('No Team found'),
                                                Gap(15.sp),
                                                AppButton(
                                                    text: 'Reload',
                                                    onTap: viewModel.init)
                                              ],
                                            ),
                                          ),
                                        )
                                      : Column(
                                          children: viewModel.teams
                                              .map((e) => FavouriteTeamCard(
                                                    flag: e.imagePath,
                                                    title: e.name,
                                                    subtitle: e.country.name,
                                                    id: e.id,
                                                    payload: e,
                                                    onFavourite:
                                                        viewModel.onFavourite,
                                                  ))
                                              .toList(),
                                        ),
                          Gap(8.h),
                        ],
                      ),
                    ))
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: AppButton(
                      text: 'Previous',
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
                      text: 'Done',
                      onTap: () async {
                        await viewModel.onDone();

                        await Navigator.of(_mainContext!).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => const SuccessView(
                              message: 'Your account have been setup successfully',
                              buttonTitle: 'Home',
                            ),
                          ),
                        );

                        _navigate();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPillsListView() {
    final List gameList = [
      {'name': 'Soccer', 'img': 'soccer', 'active': true},
      {'name': 'Tennis', 'img': 'tennisball', 'active': false},
      {'name': 'Basketball', 'img': 'basketball', 'active': false},
      {'name': 'Baseball', 'img': 'basketball', 'active': false},
    ];

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: gameList
            .map((e) => Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    PillWidget(
                      text: e['name'],
                      active: e['active'],
                      icon: SvgPicture.asset(
                        'assets/svgs/${e['img']}.svg',
                      ),
                    ),
                    const Gap(8),
                  ],
                ))
            .toList(),
      ),
    );
  }

  void _navigate() async {

    await Navigator.of(_mainContext!).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => LoginView()),
          (Route<dynamic> route) => false,
    );

  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sportboo_mobile_client/modules/authentication/favourite_team_card.dart';
import 'package:sportboo_mobile_client/shared/widgets/SuccessView.dart';
import 'package:sportboo_mobile_client/shared/widgets/sportboo_entity_not_found_widget.dart';
import 'package:sportboo_mobile_client/shared/widgets/sportboo_no_internet_connection_widget.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/view/login_view.dart';
import 'package:sportboo_mobile_client/src/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../../../../components/button_widget.dart';
import '../../../../core/theme/colors.dart';
import '../../../../shared/widgets/pill_widget.dart';
import '../../../../core/unils/navigation.dart';
import '../../../../core/unils/utils.dart';
import 'add_competitions_view.dart';

class AddTeamView extends StatefulWidget {
  const AddTeamView({super.key});

  @override
  State<AddTeamView> createState() => _AddTeamViewState();
}

class _AddTeamViewState extends State<AddTeamView> {
  @override
  void initState() {
    super.initState();
    context.read<OnboardingCubit>().getAllTeams();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            color: AppColors.tertiaryBase10,
          ),
        ),
      ),
      body: BlocConsumer<OnboardingCubit, OnboardingState>(
        listener: (context, state) {
          if (state is OnboardingError && state.statusCode == 400) {
            showSportbooSnackBar(state.message, (_) {});
          }
        },
        
        buildWhen: (previous, current) => current is OnboardingError && current.statusCode != 400 || current is OnboardingLoading || current is AllTeamsLoaded && previous != current,
        builder: (context, state) {
          return Column(
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
                          color: AppColors.tertiaryBase10,
                        ),
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
                          color: AppColors.tertiary7,
                        ),
                      ),
                    ),
                    Gap(16.h),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: _buildPillsListView(),
                    ),
                    StickyHeader(
                      header: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        color: AppColors.tertiary0,
                        child: AnimatedSearchBar(
                          onSearch: (term) => context.read<OnboardingCubit>().searchTeam(term: term),
                          onClear: () => context.read<OnboardingCubit>().getAllTeams(),
                        ),
                      ),
                      content: Container(
                        height: .5.sh,
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
                                  onTap: () {
                                    // var res = await showModalBottomSheet(
                                    //   clipBehavior: Clip.antiAlias,
                                    //   backgroundColor: kcTransparentColor,
                                    //   isScrollControlled: true,
                                    //   constraints: BoxConstraints(
                                    //       maxHeight: MediaQuery.of(context)
                                    //               .size
                                    //               .height *
                                    //           0.50),
                                    //   context: context,
                                    //   builder: (context) {
                                    //     return CompetitionTeamFilterBottomSheet(
                                    //       filters: [],
                                    //     );
                                    //   },
                                    // );

                                    // viewModel.onReceiveFilter(res);
                                  },
                                  behavior: HitTestBehavior.opaque,
                                  child: Text(
                                    'Most Popular',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                      color: AppColors.tertiary8,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Gap(20.h),
                            state is OnboardingLoading
                                ? const Center(
                                    child: CircularProgressIndicator.adaptive(),
                                  )
                                : state is AllTeamsLoaded
                                    ? Expanded(
                                        child: ListView.builder(
                                          itemCount: state.teams.length,
                                          itemBuilder: (context, index) {
                                            final team = state.teams[index];
                                            return FavouriteTeamCard(
                                              flag: '${team.countryImgUrl}',
                                              title: '${team.name}',
                                              subtitle: '${team.country}',
                                              payload: null,
                                              id: team.apiId ?? 0,
                                              onFavourite: (isfavorite) {
                                                isfavorite
                                                    ? context.read<OnboardingCubit>().favoriteTeam(
                                                        favoriteId: team.apiId!,
                                                        name: '${team.name}',
                                                        favoriteType: 'team',
                                                        payload: '{}',
                                                      )
                                                    : context.read<OnboardingCubit>().removeFavorite(
                                                        apiId: team.apiId ?? 0, 
                                                        favoriteType: 'team'
                                                      );
                                              },
                                            );
                                          },
                                        ),
                                      )
                                    : state is OnboardingError && state.statusCode == 404
                                        ? const Padding(
                                            padding: EdgeInsets.only(top: 28.0),
                                            child: SportbooEntityNotFoundWidget(
                                              title: 'No team found for that search',
                                              subtitle: 'Search another team',
                                            ),
                                          )
                                        : Padding(
                                            padding: const EdgeInsets.only(top: 28.0),
                                            child: SportbooNoInternetConnectionWidget(
                                              title: 'Internal server error',
                                              subtitle: 'Connection to server is down, please try again later',
                                              onRefresh: () => context.read<OnboardingCubit>().getAllTeams(),
                                            ),
                                          ),
                            Gap(8.h),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => const SuccessView(
                                message: 'Your account have been set up successfully',
                                buttonTitle: 'Home',
                                nextScreen: LoginView(),
                              ),
                            ),
                            (_) => false,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
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
            .map(
              (e) => Row(
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
              ),
            )
            .toList(),
      ),
    );
  }
}

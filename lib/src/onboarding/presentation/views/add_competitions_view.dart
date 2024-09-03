import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/view/login_view.dart';
import 'package:sportboo_mobile_client/src/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:sportboo_mobile_client/src/onboarding/presentation/views/add_team_view.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';
import 'package:transitioned_indexed_stack/transitioned_indexed_stack.dart';

import '../../../../components/button_widget.dart';
import '../../../../core/theme/colors.dart';

import '../../../../shared/widgets/SuccessView.dart';
import '../../../../shared/widgets/pill_widget.dart';
import '../../../../shared/widgets/sportboo_entity_not_found_widget.dart';
import '../../../../shared/widgets/sportboo_no_internet_connection_widget.dart';
import '../../../../core/unils/navigation.dart';
import '../../../../core/unils/utils.dart';
import '../../../../modules/authentication/favourite_team_card.dart';

class AddCompetitionsView extends StatefulWidget {
  const AddCompetitionsView({super.key});

  @override
  State<AddCompetitionsView> createState() => _AddCompetitionsViewState();
}

class _AddCompetitionsViewState extends State<AddCompetitionsView> {
  
  @override
  void initState() {
    context.read<OnboardingCubit>().getAllCompetitions();
    super.initState();
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
          '2 of 3',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            fontFamily: 'Inter',
            color: AppColors.tertiaryBase10,
          ),
        ),
        actions: [
          GestureDetector(
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
            behavior: HitTestBehavior.opaque,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16),
              child: Text(
                'Skip',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                  color: AppColors.primaryBase6,
                ),
              ),
            ),
          )
        ],
      ),
      body: BlocConsumer<OnboardingCubit, OnboardingState>(
        listener: (context, state) {
          if (state is OnboardingError && state.statusCode == 400) {
            showSportbooSnackBar(state.message, (_) {});
          } else if (state is CompetitionFavorited) {
            showSportbooSnackBar('Competition Favorited', (_) {});
          } else if (state is FavoriteRemoved) {
            showSportbooSnackBar('Favorited Removed', (_) {});
          }
        },
        buildWhen: (previous, current) => current is OnboardingError && current.statusCode != 400 || current is OnboardingLoading || current is AllCompetitionsLoaded && previous != current,
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
                        'Add Competitions',
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
                        'Add your favourite competitions to personalize your experience.',
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
                          onSearch: (term) => context.read<OnboardingCubit>().searchCompetition(term: term),
                          onClear: () => context.read<OnboardingCubit>().getAllCompetitions(),
                        ),
                      ),
                      content: Container(
                        height: .5.sh,
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // var res = await showModalBottomSheet(
                                //   clipBehavior: Clip.antiAlias,
                                //   backgroundColor: kcTransparentColor,
                                //   isScrollControlled: true,
                                //   constraints: BoxConstraints(
                                //       maxHeight: MediaQuery.of(context).size.height * 0.50),
                                //   context: context,
                                //   builder: (context) {
                                //     return CompetitionTeamFilterBottomSheet(
                                //         filters: [] //viewModel.filters,
                                //         );
                                //   },
                                // );

                                // viewModel.onReceiveFilter(res);
                              },
                              behavior: HitTestBehavior.opaque,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(
                                    getSvg(
                                      'setting',
                                    ),
                                  ),
                                  const Gap(8),
                                  Text(
                                    'Filter Competition',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                      color: AppColors.tertiary8,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Gap(20.h),
                            state is OnboardingLoading
                                ? const Center(child: CircularProgressIndicator.adaptive())
                                : state is AllCompetitionsLoaded
                                    ? Expanded(
                                        child: ListView.builder(
                                          itemCount: state.competitions.length,
                                          itemBuilder: (context, index) {
                                            final competiton = state.competitions[index];
                                            return FavouriteTeamCard(
                                              flag: '${competiton.competitionImgUrl}',
                                              title: '${competiton.competition}',
                                              subtitle: '${competiton.competitionRegion}',
                                              payload: null,
                                              id: competiton.apiId ?? 0,
                                              onFavourite: (isfavorite) {
                                                isfavorite ? context.read<OnboardingCubit>().favoriteCompetiton(
                                                  favoriteId: competiton.apiId!, 
                                                  name: '${competiton.competition}', 
                                                  favoriteType: 'competition', 
                                                  payload: '{}',
                                                ) : context.read<OnboardingCubit>().removeFavorite(
                                                  apiId: competiton.apiId ?? 0, 
                                                  favoriteType: 'competition',
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
                                              title: 'No competition found for that search',
                                              subtitle: 'Search another competition',
                                            ),
                                          )
                                        : Padding(
                                            padding: const EdgeInsets.only(top: 28.0),
                                            child: SportbooNoInternetConnectionWidget(
                                              title: 'Internal server error',
                                              subtitle: 'Connection to server is down, please try again later',
                                              onRefresh: () => context.read<OnboardingCubit>().getAllCompetitions(),
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
                        text: 'Next',
                        onTap: () => Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => const AddTeamView(),
                          ),
                        ),
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
            .map((e) => GestureDetector(
                  onTap: () {
                    if (e['name'] != 'Soccer') {
                      showSportbooSnackBar(
                          e['name'] + ' is coming soon', (id) {});
                    }
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Row(
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
                ))
            .toList(),
      ),
    );
  }
}

class AnimatedSearchBar extends StatefulWidget {
  final Function(String term) onSearch;
  final Function() onClear;

  const AnimatedSearchBar(
      {super.key, required this.onSearch, required this.onClear});

  @override
  State<AnimatedSearchBar> createState() => _AnimatedSearchBarState();
}

class _AnimatedSearchBarState extends State<AnimatedSearchBar> {
  int _index = 0;
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) => FadeIndexedStack(
        duration: const Duration(milliseconds: 500),
        index: _index,
        children: [
          InkWell(
            onTap: _toggleIndex,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              height: 48,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: AppColors.tertiary1,
                border: Border.all(width: 2, color: AppColors.tertiary3),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/svgs/search-status.svg',
                    width: 20,
                    height: 20,
                  ),
                  const Gap(8),
                  const Expanded(
                    child: Text(
                      'Find Competitions',
                      style: TextStyle(
                        color: AppColors.tertiary6,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const Gap(8),
                  const Text(
                    '|',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: AppColors.tertiary4,
                    ),
                  ),
                  const Gap(8),
                  const Text(
                    'Search',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: AppColors.primaryBase6,
                    ),
                  ),
                  const Gap(8)
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            height: 48,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppColors.tertiary1,
              border: Border.all(width: 2, color: AppColors.primaryBase6),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/svgs/search-status.svg',
                  width: 20,
                  height: 20,
                ),
                const Gap(8),
                Expanded(
                  child: TextField(
                    focusNode: _focusNode,
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Find Competitions',
                      hintStyle: TextStyle(
                        color: AppColors.tertiary6,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                        fontSize: 13.sp,
                      ),
                      border: InputBorder.none,
                      filled: false,
                      contentPadding: const EdgeInsets.all(8.0),
                    ),
                    style: const TextStyle(
                      color: AppColors.tertiary8,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      fontSize: 13,
                    ),
                  ),
                ),
                const Gap(8),
                InkWell(
                  onTap: () {
                    _controller.clear();
                    _toggleIndex();
                    widget.onClear();
                  },
                  child: SvgPicture.asset('assets/svgs/form_clear.svg'),
                ),
                const Gap(8),
                const Text(
                  '|',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: AppColors.tertiary4,
                  ),
                ),
                const Gap(8),
                InkWell(
                  onTap: () {
                    _focusNode.unfocus();
                    widget.onSearch(_controller.text);
                  },
                  child: const Text(
                    'Search',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: AppColors.primaryBase6,
                    ),
                  ),
                ),
                const Gap(8),
              ],
            ),
          ),
        ],
      );

  void _toggleIndex() {
    setState(() {
      if (_index == 0) {
        _index = 1;
        _focusNode.requestFocus();
      } else {
        _index = 0;
        _focusNode.unfocus();
      }
    });
  }
}
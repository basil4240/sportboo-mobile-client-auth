import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/theme/colors.dart';
import '../../core/models/competition.dart';
import '../../core/models/team.dart';


class FavouriteTeamCard extends StatefulWidget {
  final String flag;
  final String title;
  final String subtitle;
  final dynamic payload;
  final int id;
  final Function(bool isFavourite, int favouriteId, String name, String ingUrl)
      onFavourite;

  const FavouriteTeamCard({
    super.key,
    required this.flag,
    required this.title,
    required this.subtitle,
    required this.payload,
    required this.onFavourite,
    required this.id,
  });

  @override
  State<FavouriteTeamCard> createState() => _FavouriteTeamCardState();
}

class _FavouriteTeamCardState extends State<FavouriteTeamCard> {
  late bool _isFavourite;

  @override
  void initState() {
    _isFavourite = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.tertiary1,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.tertiaryBase10.withOpacity(0.08),
            offset: const Offset(0, 2),
            blurRadius: 8,
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Image.network(
            widget.flag,
            width: 28,
            frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
              if (frame == null) {
                return widget.payload is Team ?
                Container(
                  width: 32.h,
                  height: 32.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.tertiaryTint4,
                      border: Border.all(
                        color: AppColors.tertiary6,
                      )),
                ) : SizedBox(
              height: 20, width: 20,
              child: CircularProgressIndicator(strokeWidth: 1,));
              } else {
                return child;
              }
            },
            errorBuilder: (context, error, stackTrace) => Image.asset(
              'assets/images/loading_error.jpg',
              width: 28,
              height: 20,
            ),
          ),
          Gap(16.w),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      fontSize: 16.sp,
                      color: AppColors.tertiary9),
                ),
                const Gap(2),
                Text(
                  widget.subtitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                      fontSize: 13.sp,
                      color: AppColors.tertiary7),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _isFavourite = !_isFavourite;
              });

              if (widget.payload is Competition) {
                widget.onFavourite(_isFavourite, widget.id, widget.title,
                    (widget.payload as Competition).imagePath);
              }
              if (widget.payload is Team) {
                widget.onFavourite(_isFavourite, widget.id, widget.title,
                    (widget.payload as Team).imagePath);
              }
            },
            child: _isFavourite
                ? SvgPicture.asset('assets/svgs/brocken_star.svg')
                : SvgPicture.asset('assets/svgs/star_empty.svg'),
          )
        ],
      ),
    );
  }
}

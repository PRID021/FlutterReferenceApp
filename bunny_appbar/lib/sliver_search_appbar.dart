import 'package:flutter/material.dart';

import 'background_waves_clipper.dart';
import 'search_bar.dart';

class SliverSearchAppBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    var adjustedShrinkOffset = shrinkOffset > minExtent ? minExtent : shrinkOffset;
    double offset = (minExtent - adjustedShrinkOffset) * 0.5;
    double topPadding = MediaQuery.of(context).padding.top + 16;
    return Stack(children: [
      SizedBox(
        height: 280,
        child: ClipPath(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 280,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0xFFFACCCC), Color(0xFFF6EFE9)],
            )),
          ),
          clipper: BackgroundWaveClipper(),
        ),
      ),
      AnimatedPositioned(
        duration: const Duration(milliseconds: 200),
        right: 10,
        top: adjustedShrinkOffset.toInt() > 0 ? topPadding + 40 : topPadding + 12,
        child: Opacity(
          opacity: adjustedShrinkOffset.toInt() > 0 ? 0 : 1,
          child: Image.asset(
            'assets/images/bunny.png',
            width: 80,
            height: 60,
          ),
        ),
      ),
      Positioned(
        top: topPadding + offset,
        child: SearchBar(),
        left: 16,
        right: 16,
      ),
    ]);
  }

  @override
  double get maxExtent => 280;

  @override
  double get minExtent => 140;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
  }
}

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:navigation_view/item_navigation_view.dart';
import 'package:navigation_view/navigation_view.dart';

class AppBBN extends StatelessWidget {
  const AppBBN({
    super.key,
    required bool atBottom,
  }) : _atBottom = atBottom;

  final bool _atBottom;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return NavigationView(
      onChangePage: (c) {},
      curve: Curves.fastEaseInToSlowEaseOut,
      durationAnimation: const Duration(milliseconds: 400),
      backgroundColor: theme.scaffoldBackgroundColor,
      borderTopColor: Theme.of(context).brightness == Brightness.light
          ? _atBottom
              ? theme.primaryColor
              : null
          : null,
      color: theme.primaryColor,
      items: [
        ItemNavigationView(
            childAfter: Icon(
              IconlyBold.profile,
              color: theme.primaryColor,
              size: 35,
            ),
            childBefore: Icon(
              IconlyBroken.profile,
              color: theme.dialogBackgroundColor,
              size: 30,
            )),
        ItemNavigationView(
            childAfter: Icon(
              IconlyBold.setting,
              color: theme.primaryColor,
              size: 35,
            ),
            childBefore: Icon(
              IconlyBroken.setting,
              color: theme.dialogBackgroundColor,
              size: 30,
            )),
        ItemNavigationView(
            childAfter: Icon(
              IconlyBold.buy,
              color: theme.primaryColor,
              size: 35,
            ),
            childBefore: Icon(
              IconlyBroken.buy,
              color: theme.dialogBackgroundColor,
              size: 30,
            )),
        ItemNavigationView(
            childAfter: Icon(
              IconlyBold.category,
              color: theme.primaryColor,
              size: 35,
            ),
            childBefore: Icon(
              IconlyBroken.category,
              color: theme.dialogBackgroundColor,
              size: 30,
            )),
        ItemNavigationView(
            childAfter: Icon(
              IconlyBold.home,
              color: theme.primaryColor,
              size: 35,
            ),
            childBefore: Icon(
              IconlyBroken.home,
              color: theme.dialogBackgroundColor,
              size: 30,
            )),
      ],
    );
  }
}

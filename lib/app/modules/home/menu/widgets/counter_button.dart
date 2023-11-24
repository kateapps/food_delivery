// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:empiretest/app/core/colors.dart';
import 'package:empiretest/app/core/constants.dart';
import 'package:get/get.dart';

enum CounterButtonSize {
  small,
  medium,
  large,
}

extension _CounterButtonSizeExtension on CounterButtonSize {
  TextStyle get style {
    switch (this) {
      case CounterButtonSize.small:
        return Get.textTheme.bodyMedium!;
      case CounterButtonSize.medium:
        return Get.textTheme.bodyMedium!;
      case CounterButtonSize.large:
        return Get.textTheme.headlineSmall!;
    }
  }

  double get padding => Constants.defaultPadding * (index + 1);
}

class CounterButton extends StatelessWidget {
  final int price;
  final int? count;
  final Function? increment;
  final Function? decrement;
  final CounterButtonSize size;

  const CounterButton({
    Key? key,
    this.price = 0,
    this.count = 0,
    this.increment,
    this.decrement,
    this.size = CounterButtonSize.small,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (() {
      if (count == 0 || count == null) {
        return InkWell(
          onTap: () => increment?.call(),
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: size.padding / 2, vertical: size.padding / 3),
            decoration: BoxDecoration(
              color: AppColors.main
                  .withOpacity(size == CounterButtonSize.small ? .0 : 1),
              borderRadius: BorderRadius.circular(Constants.defaultPadding),
            ),
            child: Text(
              "$price руб.",
              style: size.style.copyWith(color: AppColors.white),
            ),
          ),
        );
      } else {
        return Container(
          constraints: const BoxConstraints(minWidth: 80),
          decoration: BoxDecoration(
            color: AppColors.main,
            borderRadius: BorderRadius.circular(Constants.defaultPadding),
          ),
          padding: EdgeInsets.symmetric(
              horizontal: size.padding / 2, vertical: size.padding / 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () => decrement?.call(),
                child: Icon(
                  Icons.remove,
                  size: size.style.fontSize! * 1.2,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal:
                        size.index > 0 ? Constants.defaultPadding / 2 : 0),
                child: Text("$count",
                    style: size.style.copyWith(color: AppColors.white)),
              ),
              InkWell(
                onTap: () => increment?.call(),
                child: Icon(
                  Icons.add,
                  size: size.style.fontSize! * 1.5,
                ),
              ),

              // InkWell(
              //   child: Text("+",
              //       style: size.style.copyWith(color: AppColors.white)),
              // ),
            ],
          ),
        );
      }
    })();
  }
}

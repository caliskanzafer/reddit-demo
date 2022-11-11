import 'package:flutter/material.dart';
import 'package:redditapp/product/constant/app_colors.dart';
import 'package:redditapp/core/extension/context_extension.dart';
import 'package:redditapp/product/model/data.dart';

class TitleArea extends StatelessWidget {
  const TitleArea({
    Key? key,
    required this.postDataItem,
  }) : super(key: key);

  final Data postDataItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLowHorizontal + context.paddingLowBottom,
      child: Text(
        postDataItem.title ?? "",
        style: Theme.of(context).textTheme.headline6!.copyWith(color: AppColor.textColor1),
      ),
    );
  }
}

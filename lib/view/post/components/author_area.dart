import 'package:flutter/material.dart';
import 'package:redditapp/product/constant/app_colors.dart';
import 'package:redditapp/core/extension/context_extension.dart';
import 'package:redditapp/product/model/data.dart';

class AuthorArea extends StatelessWidget {
  const AuthorArea({
    Key? key,
    required this.postDataItem,
  }) : super(key: key);

  final Data postDataItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Text(
        'Posted by ${postDataItem.author ?? ""}',
        style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColor.textColor2),
      ),
    );
  }
}

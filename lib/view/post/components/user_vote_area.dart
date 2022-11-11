import 'package:flutter/material.dart';
import 'package:redditapp/product/constant/app_colors.dart';
import 'package:redditapp/core/extension/context_extension.dart';
import 'package:redditapp/product/model/data.dart';

class UserVoteArea extends StatelessWidget {
  const UserVoteArea({
    Key? key,
    required this.postDataItem,
  }) : super(key: key);

  final Data postDataItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Row(children: [
        const Icon(Icons.keyboard_arrow_up),
        Text(
          '${postDataItem.score ?? 'Vote'}',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const Icon(Icons.keyboard_arrow_down),
        const SizedBox(
          width: 20,
        ),
        const Icon(
          Icons.messenger_outline_sharp,
          color: AppColor.textColor2,
        ),
        const SizedBox(
          width: 5,
        ),
        Text('${postDataItem.numComments ?? 0} Comments',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColor.textColor2)),
      ]),
    );
  }
}

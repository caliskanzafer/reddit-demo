import 'package:flutter/material.dart';
import 'package:redditapp/product/constant/app_colors.dart';
import 'package:redditapp/core/extension/context_extension.dart';
import 'package:redditapp/product/model/data.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlArea extends StatelessWidget {
  const UrlArea({
    Key? key,
    required this.postDataItem,
  }) : super(key: key);

  final Data postDataItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: InkWell(
              child: Text(
                postDataItem.url ?? "",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColor.textColor3),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              onTap: () => launchUrl(Uri.parse(postDataItem.url!)),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Chip(
            labelPadding: (context.paddingLowVertical / 2) + context.paddingNormalHorizontal,
            // labelPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 14),
            label: Text(
              'Learn More',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColor.textColor1),
            ),
          ),
        ],
      ),
    );
  }
}

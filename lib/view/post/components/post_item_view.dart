import 'package:flutter/material.dart';
import 'package:redditapp/product/constant/app_colors.dart';
import 'package:redditapp/product/model/data.dart';
import 'package:redditapp/core/util/helper.dart';
import 'package:redditapp/view/post/components/author_area.dart';
import 'package:redditapp/view/post/components/title_area.dart';
import 'package:redditapp/view/post/components/url_area.dart';
import 'package:redditapp/view/post/components/user_vote_area.dart';

class PostItem extends StatelessWidget {
  const PostItem({Key? key, required this.postDataItem}) : super(key: key);
  final Data postDataItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColor.foregroundColor, border: Border.all(color: Colors.black, width: .5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthorArea(postDataItem: postDataItem),
          TitleArea(postDataItem: postDataItem),
          if (postDataItem.title != null)
            if (Helper.checkThumbnailValid(postDataItem.thumbnail!))
              Image.network('${postDataItem.thumbnail}', width: double.infinity, fit: BoxFit.fitWidth),
          UrlArea(postDataItem: postDataItem),
          const Divider(),
          UserVoteArea(postDataItem: postDataItem),
        ],
      ),
    );
  }
}

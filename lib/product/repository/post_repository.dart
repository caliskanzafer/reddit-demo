import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:redditapp/product/constant/app_url.dart';
import 'package:redditapp/product/model/child_data.dart';
import 'package:redditapp/product/model/post.dart';

class PostRepository {
  Future<List<ChildData>> getPostData() async {
    final response = await get(Uri.parse(AppUrl.baseUrl + AppUrl.flutterTopic));

    if (response.statusCode != HttpStatus.ok) return [];

    final post = Post.fromJson(json.decode(response.body));

    if (post.childData == null) return [];
    if (post.childData!.children == null) return [];
    return post.childData!.children!;
  }
}

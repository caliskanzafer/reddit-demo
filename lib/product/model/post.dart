import 'package:equatable/equatable.dart';
import 'package:redditapp/product/model/post_data.dart';

class Post extends Equatable {
  String? kind;
  PostData? childData;

  Post({this.kind, this.childData});

  Post.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    childData = json['data'] != null ? PostData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kind'] = kind;
    if (childData != null) {
      data['data'] = childData!.toJson();
    }
    return data;
  }

  @override
  List<Object?> get props => [kind, childData];
}

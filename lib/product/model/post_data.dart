import 'package:equatable/equatable.dart';
import 'package:redditapp/product/model/child_data.dart';

class PostData extends Equatable {
  List<ChildData>? children;

  PostData({this.children});

  PostData.fromJson(Map<String, dynamic> json) {
    if (json['children'] != null) {
      children = <ChildData>[];
      json['children'].forEach((v) {
        children!.add(ChildData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (children != null) {
      data['children'] = children!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  List<Object?> get props => [children];
}

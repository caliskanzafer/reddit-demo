import 'package:equatable/equatable.dart';

import 'data.dart';

class ChildData extends Equatable {
  String? kind;
  Data? data;

  ChildData({this.kind, this.data});

  ChildData.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    data = Data.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['kind'] = kind;
    map['data'] = data;
    return map;
  }

  @override
  List<Object?> get props => [kind, data];
}

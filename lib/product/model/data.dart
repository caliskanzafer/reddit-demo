import 'package:equatable/equatable.dart';

class Data extends Equatable {
  String? id;
  String? description;
  String? title;
  String? thumbnail;
  String? author;
  String? url;
  int? score;
  int? numComments;

  Data({
    this.description,
    this.title,
    this.thumbnail,
    this.id,
    this.author,
    this.url,
    this.score,
    this.numComments,
  });

  Data.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    title = json['title'];
    thumbnail = json['thumbnail'];
    id = json['id'];
    author = json['author'];
    url = json['url'];
    score = json['score'];
    numComments = json['num_comments'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['title'] = title;
    data['thumbnail'] = thumbnail;
    data['id'] = id;
    data['author'] = author;
    data['url'] = url;
    data['score'] = score;
    data['num_comments'] = numComments;
    return data;
  }

  @override
  List<Object?> get props => [id, description, title, thumbnail, author, url, author, score, numComments];
}

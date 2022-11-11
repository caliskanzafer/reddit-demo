import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redditapp/product/repository/post_repository.dart';
import 'package:redditapp/view/post/post_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reddit Demo',
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: ((context) => PostRepository())),
        ],
        child: const PostView(),
      ),
    );
  }
}

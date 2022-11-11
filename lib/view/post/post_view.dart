import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redditapp/product/bloc/post/post_bloc.dart';
import 'package:redditapp/product/constant/app_colors.dart';
import 'package:redditapp/core/extension/context_extension.dart';
import 'package:redditapp/product/repository/post_repository.dart';

import 'components/post_item_view.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  final String appBarTitle = "Reddit Demo";

  Future<void> refreshValue(BuildContext context) {
    BlocProvider.of<PostBloc>(context).add(LoadApiEvent());
    return Future.value();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostBloc(RepositoryProvider.of<PostRepository>(context))..add(LoadApiEvent()),
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          title: Text(appBarTitle),
          centerTitle: true,
          backgroundColor: AppColor.mainColor,
        ),
        body: BlocBuilder<PostBloc, PostState>(builder: ((context, state) {
          if (state is PostLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is PostLoadedState) {
            return RefreshIndicator(
              onRefresh: (() => refreshValue(context)),
              child: ListView.builder(
                  itemCount: state.postList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: context.paddingNormalBottom,
                      child: state.postList[index].data != null
                          ? PostItem(postDataItem: state.postList[index].data!)
                          : const SizedBox(),
                    );
                  }),
            );
          }

          return const SizedBox();
        })),
      ),
    );
  }
}

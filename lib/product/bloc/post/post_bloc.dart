import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redditapp/product/model/child_data.dart';
import 'package:redditapp/product/repository/post_repository.dart';
import 'package:equatable/equatable.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository _postRepository;

  PostBloc(this._postRepository) : super(PostLoadingState()) {
    on<LoadApiEvent>((event, emit) async {
      emit(PostLoadingState());
      final postList = await _postRepository.getPostData();
      emit(PostLoadedState(postList));
    });
  }
}

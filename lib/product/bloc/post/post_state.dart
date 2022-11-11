part of 'post_bloc.dart';

abstract class PostState extends Equatable {
  const PostState();
}

class PostLoadingState extends PostState {
  @override
  List<Object?> get props => [];
}

class PostLoadedState extends PostState {
  final List<ChildData> postList;

  const PostLoadedState(this.postList);
  @override
  List<Object?> get props => [postList];
}

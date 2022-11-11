class Helper {
  static bool checkThumbnailValid(String thumbnailUrl) {
    return (thumbnailUrl.contains("http://") || thumbnailUrl.contains('https://'));
  }
}

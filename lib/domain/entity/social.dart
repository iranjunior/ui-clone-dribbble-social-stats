enum SocialMediaName { instagram, facebook, twitter }

class SocialMedia {
  final SocialMediaName type;
  final String username;
  final String? name;
  final int? followers;
  final int? lastFollowers;
  final int? likes;
  final int? lastLikes;
  final int? mentions;
  final int? lastMentions;
  final int? comments;
  final int? lastComments;

  SocialMedia({
    required this.type,
    required this.username,
    this.name,
    this.followers,
    this.lastFollowers,
    this.likes,
    this.lastLikes,
    this.mentions,
    this.lastMentions,
    this.comments,
    this.lastComments,
  });
}

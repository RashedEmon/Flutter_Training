class Post extends Object{
  String profileImage='';
  String profileName='unknown';
  String postImage='';
  String caption='No Caption';
  int comment=0;
  int time=0;
  String like='';

  Post(this.profileImage, this.profileName, this.postImage, this.caption,
      this.comment, this.time);
}
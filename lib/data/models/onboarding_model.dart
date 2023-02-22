import '../../constant/constant.dart';
import '../../constant/strings.dart';

class UnbordingContent {
  String image;
  String title;
  String secTitle;
  String discription;

  UnbordingContent(
      {required this.image,
      required this.title,
      required this.discription,
      required this.secTitle});
}

List sherif = [];
List<UnbordingContent> contents = [
  UnbordingContent(
      title: Constant.send_and_recive,
      secTitle: Constant.quickly,
      image: Names.animation_one,
      discription: Constant.dec_one),
  UnbordingContent(
      title: Constant.send_whatever_u,
      secTitle: Constant.want,
      image: Names.animation_two,
      discription: Constant.dec_two),
  UnbordingContent(
      title: Constant.all_files,
      secTitle: Constant.r_safe,
      image: Names.animation_three,
      discription: Constant.dec_three),
];

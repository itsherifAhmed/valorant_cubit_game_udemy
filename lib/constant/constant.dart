
import 'package:flutter/material.dart';

import '../data/repository/characters_repository.dart';
import '../data/service/web_service.dart';

String url = 'https://valorant-api.com/v1';

final Services apiProvider = Services();

final CharactersRepository charactersRepository = CharactersRepository(apiProvider: apiProvider);

class Constant {
  static const String photonServer="photon-server";
  static const String getCode="get-code";
  static const String files_count="files-count";
  static const String getPaths="getpaths";
  static const String favicon_ico="favicon.ico";
  static const String application="application";
  static const String octet_stream="octet-stream";
  static const String utf_8="octet-utf-8";
  static const String Content_Transfer_Encoding="Content-Transfer-Encoding";
  static const String Paths="paths";
  static const String host="host";
  static const String binary="Binary";
  static const String content_disposition="Content-disposition";
  static const String code="code";
  static const String wrorng_req="Wrong secret-code.Photon-server denied access";
  static const String content_length="Content-length";
  static const String accepted="accepted";
  static const String port="port";
  static const String receiver_name="receiver-name";
  static const String available="Available";
  static const String storage="Storage";
  static const String has_send="Has Send";
  static const String go_to_gallery="Go to gallery";
  static const String take_file="Take Your Files";
  static const String terminate_session="Would you like to terminate the current session'";
  static const String alert="Alert";
  static const String stay="Stay";
  static const String would_u_like="Would you Like Terminate";
  static const String the_current_session="the Current session ?";
  static const String go_back="Go back";
  static const String terminate="Terminate";
  static const String make_sure="Make sure that transfer is completed !";
  static const String make_sure_download="Make sure that download";
  static const String is_completed_download=" is completed !";
  static const String everyWhere="EveryWhere";
  static const String base_url="192.168";
  static const String save=" Save";
  static const String android_path ='/storage/emulated/0/Download/';
  static const String error ='Error';
  static const String name ='name';
  static const String size ='size';
  static const String file ='file';
  static const String extension ='extension';
  static const String android ='android';
  static const String ios ='ios';
  static const String windows ='windows';
  static const String macos ='macos';
  static const String linux ='linux';
  static const String type ='type';
  static const String iP ='IP';
  // static const String port ='Port';
  static const String oS ='OS';
  static const String version ='Version';
  static const String value ='value';
  static const String request_from_reciver ='Request from receiver';
  static const String whould_u_like =' Would you like to share with them ?';
  static const String success ='Success';
  static const String okay ='okay';
  static const String deny ='Deny';
  static const String srver=" Server alert";
  static const String plz_wait=" Please wait !";
  static const String last_re="Last Recived";
  static const String scanning="Scaning";
  static const String receiving="Receving";
  static const String access_denied="Access denied by the sender";
  static const String is_request="is requesting for files.";
  static const String scanning_share_screen="Searching for\ndevices .....";
  static const String your_files="Your files are ready to be shared";
  static const String your_files_ask="Your file is ready to be shared'}\nAsk receiver to tap on receive button";
  static const String select_sender="Please select the sender\n from the ";
  static const String following_list=" following list";
  static const String file_saved_in="Files will be saved at";
  static const String plz_Re_Scan="Plz Re-Scan";
  static const String wait_sender="Waiting for sender to approve,ask sender to approve";
  static const String no_device='No device found\nMake sure sender & receiver are connected through mobile hotspot\nOR\nSender and Receivers are connected to same wifi\n';
  static const String see="See ALL";
  static const String pdf="pdf";
  static const String mp3="mp3";
  static const String html="html";
  static const String jpeg="jpeg";
  static const String png="png";
  static const String exe="exe";
  static const String apk="apk";
  static const String dart="dart";
  static const String mp4="mp4";
  static const String fileInfo="fileInfo";
  static const String fileName="fileName";
  static const String date="date";
  static const String filePath="filePath";
  static const String history="history";
  static const String send_and_recive="Send And Recived";
  static const String quickly="Quickly";
  static const String send_whatever_u="Send Whatever you";
  static const String all_files="All Your Files";
  static const String want="Want";
  static const String r_safe="Are Safe";
  static const String dec_one="Send and receive your files quickly "
      "and easily with the click of a button";
  static const String dec_two="Send And Receive Your Files Quickly"
      "And Easily With The Click Of A Button";
  static const String dec_three="Send And receive your files quickly"
      "And Easily With The Click Of A button";




  static Color title_onBoaronstding =const Color(0xff222221);
  static Color kora_color =const Color.fromRGBO(255, 178, 0, 0.2);
  static Color black_color =  Colors.black;
  static Color white_color = Colors.white;
  static Color disc_onBoarconstding =const Color(0xffB3B3B3);
  static Color next_btn_onBoarconstding =const Color(0xff277BC0);
  static Color go_to_gallary_color =const Color(0xff277BC0);
  static Color primary_color=const Color(0xffFFB200);
  static Color scaffold_background=const Color(0xffF5F5F5);
  static Color onboarding_dots=const Color(0xffD9D9D9);
  static Color brown_card=  const Color(0xff161615);
  static Color last_connection_card=  const Color(0xffFEF7DF);
  static Color icons_color=  const Color(0xff9D9D9D);
  static Color container_color=  const Color(0xff9D9D9D);
  static Color terminate_color=  const Color(0xffFA9579);
  static Color alert_color=  const Color(0xff1F1F1F);
  static Color terminate_session_color=  const Color(0xff1F1F1F);
  static Color last_date_color=  const Color(0xffB7B7B7);



  static TextStyle title_onBoarconstding_textStyle=  TextStyle(
      fontWeight: FontWeight.w700,fontSize: 32,fontFamily: "Ubuntu",color: title_onBoaronstding);
  static TextStyle desc_onBoarconstding_textStyle=  TextStyle(
      fontWeight: FontWeight.w500,fontSize: 18,fontFamily: "Ubuntu",color: disc_onBoarconstding);
  static TextStyle btn_onBoarconstding_textStyle= const TextStyle(
      fontSize: 18,
      fontFamily: "Ubuntu",
      fontWeight: FontWeight.w700,
      color: Color(0xffFFFFFF));
  static TextStyle avaliable_textStyle=const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontFamily: "Ubuntu"
  );
  static TextStyle gb_textStyle=const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color(0xffFFF2D3),
      fontFamily: "Ubuntu"
  );
  static TextStyle go_to_gallary_textStyle= TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Constant.go_to_gallary_color,
      fontFamily: "Ubuntu"
  );

  static TextStyle last_date_textStyle=  TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: Constant.last_date_color,
      fontFamily: "Ubuntu"
  );
  static TextStyle eight_textStyle=const TextStyle(
      fontSize: 42,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontFamily: "Ubuntu"
  );
  static TextStyle take_textStyle=const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w500,
      color : Color(0xff2C2D2E),
      fontFamily: "Ubuntu"
  );
  static TextStyle save_textStyle=const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w500,
      color : Color(0xffFFB200),
      fontFamily: "Ubuntu"
  );
  static TextStyle last_textStyle=const TextStyle(
      color : Color(0xff141414),
      fontSize: 18, fontWeight: FontWeight.w500,

      fontFamily: "Ubuntu"
  );
  static TextStyle make_sure_textStyle=  TextStyle(
      color : Constant.primary_color,
      fontSize: 18, fontWeight: FontWeight.w500,

      fontFamily: "Ubuntu"
  );
  static TextStyle stay_textStyle=  const TextStyle(
      color : Colors.white,
      fontSize: 16, fontWeight: FontWeight.w500,
      fontFamily: "Ubuntu"
  );
  static TextStyle has_send_textStyle=  TextStyle(
      color : Constant.terminate_session_color,
      fontSize: 14, fontWeight: FontWeight.w500,
      fontFamily: "Ubuntu"
  );

  static TextStyle terminate_textStyle=   TextStyle(
      color : Constant.terminate_color,
      fontSize: 16, fontWeight: FontWeight.w500,
      fontFamily: "Ubuntu"
  );
  static TextStyle terminate_session_textStyle=   TextStyle(
      color : Constant.terminate_session_color,
      fontSize: 18, fontWeight: FontWeight.w700,
      fontFamily: "Ubuntu"
  );
  static TextStyle server_textStyle=  TextStyle(
      color : Constant.primary_color,
      fontSize: 18, fontWeight: FontWeight.w500,

      fontFamily: "Ubuntu"
  );
  static TextStyle go_back_textStyle=  TextStyle(
      color : Constant.next_btn_onBoarconstding,
      fontSize: 16, fontWeight: FontWeight.w500,

      fontFamily: "Ubuntu"
  );
  static TextStyle see_textStyle=const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: Color(0xff277BC0),

      fontFamily: "Ubuntu"
  );
  static TextStyle scanning_textStyle=const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Color(0xff1F1F1F),
      fontFamily: "Ubuntu"
  );
  static TextStyle alert_textStyle= TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Constant.alert_color,
      fontFamily: "Ubuntu"
  );
  static TextStyle receiving_textStyle=const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Color(0xff1F1F1F),
      fontFamily: "Ubuntu"
  );
  static TextStyle access_denied_textStyle=const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: Color(0xff1F1F1F),
      fontFamily: "Ubuntu"
  );
  static TextStyle your_file_textStyle=const TextStyle(
      color: Color(0xff1F1F1F),
      fontWeight: FontWeight.w400,
      fontSize: 15,
      fontFamily: "Ubuntu"
  );
  static TextStyle scanning_share_textStyle=const TextStyle(
      color: Color(0xff181817),
      fontWeight: FontWeight.w500,
      fontSize: 32,
      fontFamily: "Ubuntu"
  );
  static TextStyle select_sender_textStyle=const TextStyle(
      color: Color(0xff181817),
      fontWeight: FontWeight.w500,
      fontSize: 18,
      fontFamily: "Ubuntu"
  );
  static TextStyle following_list_textStyle=  TextStyle(
      color: Constant.primary_color,
      fontWeight: FontWeight.w500,
      fontSize: 18,
      fontFamily: "Ubuntu"
  );
  static TextStyle file_saved_textStyle=const TextStyle(
      color: Color(0x44181817),
      fontWeight: FontWeight.w300,
      fontSize: 13,
      fontFamily: "Ubuntu"
  );
  static TextStyle no_device_textStyle=const TextStyle(
      color: Color(0x44181817),
      fontWeight: FontWeight.w300,
      fontSize: 13,
      fontFamily: "Ubuntu"
  );
  static TextStyle wait_sender_textStyle=const TextStyle(
      color: Color(0xff181817),
      fontWeight: FontWeight.w500,
      fontSize: 18,
      fontFamily: "Ubuntu"
  );
  static TextStyle plz_re_scan_textStyle=  TextStyle(
      color: Constant.scaffold_background,
      fontWeight: FontWeight.w500,
      fontSize: 18,
      fontFamily: "Ubuntu"
  );

  Constant._();
}

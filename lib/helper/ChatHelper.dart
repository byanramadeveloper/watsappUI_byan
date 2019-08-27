import 'package:latihawatsap/model/ChatModel.dart';
class ChatHelper{

  static var chatList = [
    ChatModel('iswandi','workshop fluuter', "28/04/2019", 'asset/gambar1.jpg'),
    ChatModel('saputra','workshop fluuter', "28/04/2019", 'asset/gambar1.jpg'),
    ChatModel('andi','workshop fluuter', "28/04/2019", 'asset/gambar1.jpg'),

  ];

  static ChatModel getItem(int position){
    return chatList[position];
  }

  static var itemCount = chatList.length;
}

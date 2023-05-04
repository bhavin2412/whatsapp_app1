import 'package:flutter/material.dart';
import '../model/chat_model/chat_helper.dart';
import '../model/chat_model/chat_theam.dart';
import '../utills/conts.dart';
import 'chat_screen.dart';


class ChatListView extends StatelessWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        ChatItemModel chatItem = ChatHelper.getChatItem(position);
        return Column(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    ChatScreen(
                      image: chatItem.image, name: chatItem.name,
                    )));
              },
              child: ListTile(
                leading:  CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(chatItem.image.toString()),
                ),
                title:  Text(
                  chatItem.name,
                  style: Theme.of(context).textTheme.headline6,
                ),
                subtitle: Row(
                  children: [
                    Icon(position % 2  == 0 ? Icons.done :Icons.done_all , color: position % 2  == 0  ? Colors.grey : Colors.blue  , ),
                    SizedBox(width: 5,),
                    Text(
                      chatItem.mostRecentMessage,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ) ,
                trailing:Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Text(
                    chatItem.messageDate,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(fontFamily: Regular),

                  )  ,

                ),),
            ),
            Divider(),
          ],
        );
      },
      itemCount: ChatHelper.itemCount,
    );
  }
}

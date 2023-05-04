import 'massage_model.dart';



class MessageHelper {

  static var messageList = [
    MessageItemModel("", "We had meeting tomorrow.", "10:10 PM"  , "msj"),
    MessageItemModel("", "Shine bright Like diamond", "10:20 PM"  , "msj"),
    MessageItemModel("", "Shine bright Like diamond", "10:30 PM" ,"msj" ),
    MessageItemModel("", "Shine bright Like diamond", "10:40 PM" ,"msj" ),
    MessageItemModel("", "https://cdn.pixabay.com/photo/2021/03/02/16/34/woman-6063087_960_720.jpg", " 10:58 AM", "image"),
    MessageItemModel("", "https://cdn.pixabay.com/photo/2021/03/02/16/34/woman-6063087_960_720.jpg", "11:00 PM" ,  "image"),
    MessageItemModel("", "Shine bright Like diamond", "11:20 PM" , "msj"),
    MessageItemModel("", "Ronaldo is best!", "10:10 PM", "msj"),
    MessageItemModel("", "https://cdn.pixabay.com/photo/2017/12/01/08/02/paint-2990357_960_720.jpg", "11:30 PM" ,"image" ),
    MessageItemModel("", "Shine bright Like diamond", "11:40 PM" ,  "msj"),
    MessageItemModel("", "Shine bright Like diamond", "11:50 PM" , "msj"),
    MessageItemModel("", "Shine bright Like diamond", "12:00 AM" , "msj"),
    MessageItemModel("", "Do subscribe", "12:10 AM" , "msj"),


  ];

  static MessageItemModel getCHatList(int position) {
    return messageList[position];
  }

  static var itemCount = messageList.length;

}
import 'chat_theam.dart';

class ChatHelper {

  static var chatList = [
    ChatItemModel("Nita Ambani", "We had meeting tomorrow.", "10:28 PM" , "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt7b227ea94a075ebb/60df21647d39bc2454652d79/6dd97594de36a2aeda396748c1675c5eea95ee85.jpg"),
    ChatItemModel("Virat Kohli", "Give me reminder", " 10:28 AM", "https://images.news18.com/ibnlive/uploads/2023/03/virat-kohli-took-the-helmet-off-and-soaked-it-all-in-ap-photo.jpg?im=FitAndFill,width=1200,height=1200"),
    ChatItemModel("Ema watson", "Good Morning", "Yesterday" , "https://cdn.pixabay.com/photo/2017/04/05/10/45/girl-2204622_960_720.jpg" ),
    ChatItemModel("Kiara Malhotra", "Shine bright Like diamond", "Wednesday" , "https://images.indianexpress.com/2021/12/kiara-advani-1200-1.jpg?w=414" ),
    ChatItemModel("Ronaldo", "You are the best!", "16/01/2022", "https://images.indianexpress.com/2023/03/ronaldo-portugal.jpg?w=414")];

  static ChatItemModel getChatItem(int position) {
    return chatList[position];
  }

  static var itemCount = chatList.length;

}
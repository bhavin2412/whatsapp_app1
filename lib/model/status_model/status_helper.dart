import 'package:whatsapp_app1/model/status_model/stauts_theme.dart';

class StatusHelper {

  static var statusList = [
    StatusItemModel("Virat Kohli", "Yesterday, 21:22 PM" , "https://images.news18.com/ibnlive/uploads/2023/03/virat-kohli-took-the-helmet-off-and-soaked-it-all-in-ap-photo.jpg?im=FitAndFill,width=1200,height=1200"),
    StatusItemModel("Nita Ambani", "Yesterday, 09:09 PM" , "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt7b227ea94a075ebb/60df21647d39bc2454652d79/6dd97594de36a2aeda396748c1675c5eea95ee85.jpg")
  ];

  static StatusItemModel getStatusItem(int position) {
    return statusList[position];
  }

  static var itemCount = statusList.length;

}
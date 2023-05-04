
import 'CallItemModel.dart';
import 'call_theam.dart';

class CallHelper {

  static var callList = [
    CallItemModel("kiara Malhotra", "Outgoing Today, 2:32 PM", "https://images.indianexpress.com/2021/12/kiara-advani-1200-1.jpg?w=414"),
    CallItemModel("kiara Malhotra", "Outgoing Today, 3:00 PM", "https://images.indianexpress.com/2021/12/kiara-advani-1200-1.jpg?w=414"),
    CallItemModel("kiara Malhotra", "Outgoing Today, 3:12 PM", "https://images.indianexpress.com/2021/12/kiara-advani-1200-1.jpg?w=414"),
    CallItemModel("kiara Malhotra", "Outgoing Today, 3:45 PM", "https://images.indianexpress.com/2021/12/kiara-advani-1200-1.jpg?w=414"),
    CallItemModel("kiara Malhotra", "Outgoing Today, 4:50 PM", "https://images.indianexpress.com/2021/12/kiara-advani-1200-1.jpg?w=414"),
    CallItemModel("kiara Malhotra", "Outgoing Today, 5:45 PM", "https://images.indianexpress.com/2021/12/kiara-advani-1200-1.jpg?w=414"),

  ];

  static CallItemModel getCallItem(int position) {
    return callList[position];
  }

  static var itemCount = callList.length;

}
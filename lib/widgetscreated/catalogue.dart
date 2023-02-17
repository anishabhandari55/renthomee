import 'package:flutter/cupertino.dart';

class roomdetails{
  final String title;
  final String address;
  final String price;
  final int listid;
  final String Image;
//we created a constructor(via create constructor for final fields) for this class and by adding curly braces we make it a named constructor
  roomdetails(this.title, this.address, this.price, this.listid, this.Image);
}
class detailItem{
  static final items=[
    roomdetails("Apartment", "Pokhara", "Rs.12000 per month", 33489, "images/apartment.jpg")
  ];
}
/*Widget details(String title, String address, int listid, bool isAvailable, double price)
{
  return Container(
                height: 90,
                width: 165,
                margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                padding: EdgeInsets.all(5),
                child: Text('''Location: $address,
$title
Listid: $listid
Rs.$price per month
Availability: $isAvailable
''',
                  style: TextStyle(fontSize: 12,
                  fontWeight: FontWeight.w700),
                  ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(129, 33, 81, 105),
                  borderRadius: BorderRadius.circular(12),
                  ),
                       );

}*/
import 'package:flutter/material.dart';
import 'package:ksk/BottomNavBar/bottomBar.dart';
import 'package:ksk/Categories_Page/mainCategory.dart';
import 'package:ksk/Splash_Screen/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
// test comment
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Vitthal Krushi Seva Kendra",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(title: "Vitthal Krushi Seva Kendra",),
      //const MyHomePage(title: "Vitthal Krushi Seva Kendra"),
    );
  }
}

class MyHomePage extends StatelessWidget {
 const MyHomePage({Key? key,required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {

    List arrNames = ["Nitin","Mallinath","Sachin","Abhijeet","Rohit","Rahul","Nagesh","Shrishaillya","Mangesh","Changesh"];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vitthal Krushi Seva Kendra',
   //     style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center),
        backgroundColor: Colors.lightGreen,
      ),

body: ListView.separated(itemBuilder: (context, index) {
  return ListTile(
    leading: const CircleAvatar(
      backgroundImage: AssetImage('assets/Images/logo.png'),
      //Image.network("https://th.bing.com/th/id/OIG.T2ZEffhCx_88CFYMTKVM?pid=ImgGn")
    ),
    //Image.network("https://www.agriplexindia.com/cdn/shop/products/Solomon_2.png?crop=center&height=645&v=1677908912&width=645"),
    title: Text(arrNames[index], style: TextStyle(fontSize: 18),),
    subtitle: Text("Farm"),
    trailing: Icon(Icons.arrow_forward_ios),
  );
},
    itemCount: arrNames.length,
    separatorBuilder: (context, index){
  return Divider(height: 20,thickness: 2,);
    },
),
//Horizontal List //
/*
body: SingleChildScrollView(
  scrollDirection: Axis.horizontal,
    child: Row(
      children: <Widget>[
        Container(
          height: 50,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: NetworkImage("https://cdn.dotpe.in/longtail/store-items/6792607/YiHxG3sz.jpeg")),
          ),
         // child: Image.network("https://www.agriplexindia.com/cdn/shop/products/Solomon_2.png?crop=center&height=645&v=1677908912&width=645"),
          //color: Colors.orange,
          ),
        Container(
          height: 50,
          width: 80,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage("https://www.adama.com/india/sites/adama_india/files/styles/product_teaser_desktop/public/2021-10/Agadi%20SC_650x550.jpg?h=80d6026f&itok=YzaV7T1i"))
          ),
         // child: Image.network("https://www.agriplexindia.com/cdn/shop/products/Solomon_2.png?crop=center&height=645&v=1677908912&width=645"),
          //color: Colors.yellow,
          ),
        Container(
          height: 50,
          width: 80,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage("https://www.agriplexindia.com/cdn/shop/products/Solomon_2.png?crop=center&height=645&v=1677908912&width=645"))
          ),
          //child: Image.network("https://www.agriplexindia.com/cdn/shop/products/Solomon_2.png?crop=center&height=645&v=1677908912&width=645"),
         // color: Colors.lightBlueAccent,
          ),
        Container(
          height: 50,
          width: 80,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage("https://www.agriplexindia.com/cdn/shop/products/Solomon_2.png?crop=center&height=645&v=1677908912&width=645"))
          ),
          //child: Image.network("https://www.agriplexindia.com/cdn/shop/products/Solomon_2.png?crop=center&height=645&v=1677908912&width=645"),
         // color: Colors.black,
          ),
        Container(
          height: 50,
          width: 80,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage("https://www.agriplexindia.com/cdn/shop/products/Solomon_2.png?crop=center&height=645&v=1677908912&width=645"))
          ),
          //child: Image.network("https://www.agriplexindia.com/cdn/shop/products/Solomon_2.png?crop=center&height=645&v=1677908912&width=645"),
        //  color: Colors.red,
            )
      ],
    ),
  ),
*/


bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home'),
    BottomNavigationBarItem(
        icon: Icon(Icons.category_outlined),
        label: 'Categories'),
    BottomNavigationBarItem(
        icon: Icon(Icons.feed_outlined),
        label: 'Feed'),
    BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile'),
  ],
),

/*
body: ListView.separated(itemBuilder: (context, index) {
  return Text(arrNames[index], textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500));
},
itemCount: arrNames.length,
  separatorBuilder: (context, index) {
  return Divider(
    color: Colors.lightGreenAccent,
    height: 100,
    thickness: 15,
  );
  },
),
 */

/*
body: Padding(
  padding: const EdgeInsets.all(8.0),
   child: SingleChildScrollView(
  child: Column(
    children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
            margin: EdgeInsets.only(right: 10,bottom: 10),
            height: 70,
            width: 170,
            color: Colors.black12,
              child: Image.network("https://www.agriplexindia.com/cdn/shop/products/Solomon_2.png?crop=center&height=645&v=1677908912&width=645")
          ),
            Container(
              margin: EdgeInsets.only(right: 10,bottom: 10),
              height: 70,
              width: 170,
              color: Colors.black12,
              child: Image.network("https://th.bing.com/th/id/OIG.ZcgbN9qWH6wttMeRI_6s?pid=ImgGn"),
            ),
            Container(
              margin: EdgeInsets.only(right: 10,bottom: 10),
              height: 70,
              width: 170,
              color: Colors.black12,
              child: Image.network("https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/61SFq8DlGGS._AC_UF1000,1000_QL80_.jpg"),
            ),
            Container(
              margin: EdgeInsets.only(right: 10,bottom: 10),
              height: 70,
              width: 170,
              color: Colors.black12,
              child: Image.network("https://iffco-public-assets.s3.ap-south-1.amazonaws.com/s3fs-public/2021-11/NPK_1.png"),
            ),
            Container(
              margin: EdgeInsets.only(right: 10,bottom: 10),
              height: 70,
              width: 170,
              color: Colors.black12,
              child: Image.network("https://5.imimg.com/data5/SELLER/Default/2023/4/298329992/HI/CY/TU/3508748/whatsapp-image-2023-04-06-at-10-27-00-am-3-.jpeg"),
            ),
        ],
        ),
      ),

      Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 200,
        width: 380,
        color: Colors.lightGreenAccent,
      ),
      Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 200,
        width: 380,
        color: Colors.blueAccent,
      ),
      Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 200,
        width: 380,
        color: Colors.grey,
      )
    ],
  ),
),
),
*/

// Navigation Drawer
drawer: Drawer(
 child: ListView(
   padding: EdgeInsets.zero,
   children: <Widget>[
      const  UserAccountsDrawerHeader(
         accountName: Text('Nitin Ambegave'),
         accountEmail: Text('ambegaven81945@gmail.com'),
     currentAccountPicture: CircleAvatar(
       backgroundColor: Colors.lightGreenAccent,
       backgroundImage: AssetImage('assets/Images/logo.png'),
       //child: Text('NA',
      // style: TextStyle(fontSize: 30)
       ),
     ),

     ListTile(
       leading: const Icon(Icons.category_outlined),
       title: const Text('Categories'),
       onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) => mainCategory()));
         print('Home Button Pressed');
       },
     ),

     ListTile(
       leading: const Icon(Icons.shopping_cart_outlined),
       title: const Text('My Orders'),
       onTap: () {
         print('My Orders Button Pressed');
         Navigator.push(context, MaterialPageRoute(builder: (context) => NavBar()));
       },
     ),
     ListTile(
       leading: const Icon(Icons.notifications_on),
       title: const Text('Notification'),
       onTap: () {
         print('Notification Button Pressed');
       },
     ),
     ListTile(
       leading: const Icon(Icons.settings_outlined),
       title: const Text('Settings'),
       onTap: () {
         print('Setting Button Pressed');
       },
     ),
     ListTile(
       leading: const Icon(Icons.call),
       title: const Text('Conatct Us'),
       onTap: () {
         print('Contact Us Button Pressed');
       },
     ),
     ListTile(
       leading: const Icon(Icons.logout_outlined),
       title: const Text('Logout'),
       onTap: () {
         print('Logout Button Pressed');
                },
              ),
            ],
          ),
       ),
    );
  }
}
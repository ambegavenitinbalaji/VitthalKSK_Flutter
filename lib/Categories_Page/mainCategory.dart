import 'package:flutter/material.dart';


class mainCategory extends StatefulWidget {
  const mainCategory({super.key});
  @override
  _MainCategory createState() => _MainCategory();
}
class _MainCategory extends State<mainCategory> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Vitthal Krushi Seva Kendra'),
      backgroundColor: Colors.lightGreen,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
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
      );
  }
}
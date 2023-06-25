import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  // // AwesomeNotifications().initialize(
  // //   null,
  // //   [
  // //     NotificationChannel(
  // //       channelKey: 'basic_channel',
  // //       channelName: 'Basic Notifications',
  // //       channelDescription: 'Notification for basic tests',
  // //     ),
  // //   ],
  // //   debug: true,
  // );
  runApp(
    MyApp(),
  );
}
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: DefaultScreen(),
    );
  }
}
// CircleAvatar(
// backgroundImage: AssetImage('images/icon.jpg'),
class DefaultScreen extends StatelessWidget {
  var gridviewWidget = ['Bán Hàng' ,'Đặt Hàng', 'Trả Hàng','Nhập Hàng','Trả Hàng Nhập','Kiểm Kho','Xuất hủy','Khách Hàng','Nhà Cung Cấp','Nhân Viên','Số quý','Báo Cáo'];
  static const _iconTypes = <IconData>[
    FontAwesomeIcons.bagShopping,
    FontAwesomeIcons.cartPlus,
    FontAwesomeIcons.arrowRotateLeft,
    FontAwesomeIcons.download,
    FontAwesomeIcons.upload,
    FontAwesomeIcons.listCheck,
    FontAwesomeIcons.rectangleXmark,
    FontAwesomeIcons.user,
    FontAwesomeIcons.userGroup,
    FontAwesomeIcons.userGroup,
    FontAwesomeIcons.book,
    FontAwesomeIcons.chartSimple,
  ];
  static const _entriesIcon = <IconData>[
    FontAwesomeIcons.truck,
    FontAwesomeIcons.globe,
    FontAwesomeIcons.bagShopping,
  ];
  var entries = ['Giao hàng' , 'Website bán hàng' ,  'Bán online', ];
  var entries1 = ['Cước rẻ đa năng tối ưu vận hành','Dễ dàng kinh doanh trực tuyến' ,'Trên Facebook, tiktok shop & sàn TMDT'];

  List<SizedBox> getComponent () => List.generate(gridviewWidget.length, (index) =>
    SizedBox(
        height: 10,
        width: 30,

        child : Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Icon(_iconTypes[index]),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(gridviewWidget[index]),
                )
              ],
            ),
          ),
        )
    )
  );
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: null,
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 1,
            child: Container(
              margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/icon.jpg'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child:const Text(
                              'PHAM CONG MINH',
                              style:  TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: const Text(
                              'Chi nhánh trung tâm',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    height: 40,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10)),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child : Row(
                            children: [
                              const Icon(Icons.store),
                              const Text('antamfruits',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.orange, width: 2),
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  color: Colors.orangeAccent,
                                ),
                                child: Text('Gói cao cấp'),
                              )
                            ],
                          )
                        ),
                        Icon(FontAwesomeIcons.chevronRight)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width*1,
            height: MediaQuery.of(context).size.height*0.6,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              color: Color(0xffe3e3e3ff),
              // color: Colors.white,
              child: GridView.extent(
                physics: ClampingScrollPhysics(),
                childAspectRatio: 3,
                maxCrossAxisExtent: 150,

                  mainAxisSpacing: 15,
                  crossAxisSpacing: 20,
                  children: getComponent(),

              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffe3e3e3ff),
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: ListView.separated(
                itemCount: entries.length,
                scrollDirection: Axis.vertical,
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context,index){
                  return Container(
                    child:
                    SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Row(
                              children: [
                                Icon(_entriesIcon[index]),
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(entries[index],
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(entries1[index],
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    )
                    ,

                  );
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
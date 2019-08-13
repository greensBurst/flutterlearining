import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/bottom_navbar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: Home(),
        home: Home(),
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //摁下去的颜色
          splashColor: Colors.white70, //水波纹颜色
        ));
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        //包含了metrial常用组件
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   tooltip: 'Navigation',
            //   onPressed: () => debugPrint('hahaha'),
            // ),//有了抽屉他会自己设置leading
            title: Text('Campus Market'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('666666'),
              ),
            ],
            elevation: 7.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              // indicatorColor: Colors.black54,
              // indicatorSize: TabBarIndicatorSize.label,
              // indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.access_alarms)),
                Tab(icon: Icon(Icons.work)),
                Tab(icon: Icon(Icons.view_quilt)),
              ],
            )),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            SliverDemo(),
            // ViewDemo(),
            // Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
            // Icon(Icons.access_alarms, size: 128.0, color: Colors.black12),
            // Icon(Icons.work, size: 128.0, color: Colors.black12),
          ],
        ),
        drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text(
                    'greens',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text('greensburst@163.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'http://cdn.duitang.com/uploads/item/201410/16/20141016202155_5ycRZ.thumb.700_0.jpeg'),
                  ),
                  decoration: BoxDecoration(
                    color:Colors.yellow[100],
                    image: DecorationImage(
                      image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1565345976318&di=7ccaeda4f217acaf0c493ed9e07d1af0&imgtype=0&src=http%3A%2F%2Fg.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F5366d0160924ab18014cefd83bfae6cd7a890b82.jpg'),
                      fit:BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.blue[400].withOpacity(0.3),
                        BlendMode.hardLight,
                      )
                    )
                  ),
                ),
                ListTile(
                  title: Text(
                    'Messages',
                    textAlign: TextAlign.right,
                  ),
                  trailing: Icon(
                    Icons.message,
                    color: Colors.black12,
                    size: 22.0,
                  ), //leading是在左面
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  title: Text(
                    'Favorite',
                    textAlign: TextAlign.right,
                  ),
                  trailing: Icon(
                    Icons.favorite,
                    color: Colors.black12,
                    size: 22.0,
                  ), //leading是在左面
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  title: Text(
                    'Settings',
                    textAlign: TextAlign.right,
                  ),
                  trailing: Icon(
                    Icons.settings,
                    color: Colors.black12,
                    size: 22.0,
                  ), //leading是在左面
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ), //侧边栏，enDrawer是右边
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // centerTitle: true,
            // title: Text("Campus Market"),
            // pinned:true,
            floating: true,
            expandedHeight: 166.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'My Flutter',
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              background: Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1565688088161&di=6779f567b656ebc103e7b8d80a057ff5&imgtype=jpg&src=http%3A%2F%2Fimg4.imgtn.bdimg.com%2Fit%2Fu%3D1735688044%2C4235283864%26fm%3D214%26gp%3D0.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea(
            //刘海屏啥的
            sliver: SliverPadding(
              padding: EdgeInsets.all(7.0),
              sliver: SliverListDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              color: Colors.blueGrey,
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[index].title,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        Text(
                          posts[index].author,
                          style: TextStyle(fontSize: 13.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 7.0,
        mainAxisSpacing: 7.0,
        childAspectRatio: 1,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            child: Image.asset(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

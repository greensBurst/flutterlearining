import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GirdViewBuilderDemo();
  }
}

class GirdViewBuilderDemo extends StatelessWidget {

  Widget _gridItemBuilder(BuildContext context,int index) {
    return Container(
      child: Image.asset(
        posts[index].imageUrl,
        fit:BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(7.0),
      itemCount:posts.length,
      itemBuilder:_gridItemBuilder,
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 7.0,
        mainAxisSpacing: 7.0,
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 120.0,
      crossAxisSpacing: 7.0,
      mainAxisSpacing: 7.0,
      scrollDirection: Axis.vertical,
      children: _buildTiles(36),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 7.0,
      mainAxisSpacing: 7.0,
      scrollDirection: Axis.vertical,
      children: _buildTiles(36),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(posts[index].author),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      // pageSnapping: false,
      // reverse: true,
      scrollDirection: Axis.vertical,
      controller: PageController(
        initialPage: 1,
        keepPage: false, //记住最后浏览的页面
        viewportFraction: 1, //页面占比
      ),
      onPageChanged: (currentPage) => debugPrint('Page:$currentPage'),
      children: <Widget>[
        Container(
          color: Colors.brown,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ],
    );
    ;
  }
}

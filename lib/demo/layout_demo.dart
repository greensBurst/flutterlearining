import 'package:flutter/material.dart';

class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(//就是有限制的意思
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0,
            ),
            child: Container(
              color: Color.fromRGBO(3,111, 255, 1.0),
            ),
          ),
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16.0/9.0,
            child: Container(
              color: Color.fromRGBO(3, 111, 255, 1.0),
            ),
          ),
        ],
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
                width: 200.0,
                height: 300.0,
                child: Container(
                  alignment: Alignment(0.0, 0.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0),
                      ],
                    ),
                  ),
                  child: Icon(
                    Icons.brightness_2,
                    color: Colors.white,
                    size: 32.0,
                  ),
                ),
              ),
              Positioned(
                right: 122.0,
                top: 222.0,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 12.0,
                ),
              ),
              Positioned(
                right: 45.0,
                top: 66.0,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 10.0,
                ),
              ),
              Positioned(
                right: 120.0,
                top: 166.0,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 11.0,
                ),
              ),
              Positioned(
                right: 99.0,
                top: 100.0,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 15.0,
                ),
              ),
              Positioned(
                right: 44.0,
                top: 155.0,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 12.0,
                ),
              ),
              Positioned(
                right: 90.0,
                top: 250.0,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 13.0,
                ),
              ),
              Positioned(
                right: 55.0,
                top: 180.0,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 10.0,
                ),
              ),
              Positioned(
                right: 30.0,
                top: 200.0,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 14.0,
                ),
              ),
            ],
          ),
          // IconBadge(Icons.pool),
          // IconBadge(Icons.beach_access,size: 64.0,),
          // IconBadge(Icons.airplanemode_active),
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}

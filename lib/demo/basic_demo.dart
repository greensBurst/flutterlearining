import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          // image: AssetImage(), //项目里的图
          image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1565411213157&di=8ff94c08523441068da763c09fdf51e4&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201609%2F19%2F20160919151249_jFkCu.thumb.700_0.jpeg'),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.noRepeat,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.5),
            BlendMode.hardLight,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size:32.0,color: Colors.white,),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 99, 255, 1.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // borderRadius:BorderRadius.circular(64.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: -9.0,
                ),
              ],
              shape: BoxShape.circle,
              // gradient: RadialGradient(
              //   colors:[
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(3, 28, 128, 1.0),
              //   ],
              // ),
              gradient: LinearGradient(
                colors:[
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class RichTextDemo extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text:TextSpan(
        text:'nihao',
        style: TextStyle(
          color:Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight:FontWeight.w100,
        ),
        children: [
          TextSpan(
            text:'.net',
            style: TextStyle(
              fontSize: 17.0,
              color:Colors.grey,
            ),
          ),
        ]
      ),
    );
  }
}
class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = "李白";
  final String _title = '七七七';

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '< $_title > —— $_author 一二三四五六七，七六五四三二一',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
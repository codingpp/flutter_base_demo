import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = '网络图片';

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(8),
              child: new Image.network(
                  'https://pic2.zhimg.com/80/v2-2431f4b21609d842faa582b24b5c9d8b_720w.jpg')),
          Container(
            padding: const EdgeInsets.all(8),
            child: new FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    'https://pic2.zhimg.com/80/v2-2431f4b21609d842faa582b24b5c9d8b_720w.jpg'),
          ),
          Container(
              padding: const EdgeInsets.all(8),
              child: new CachedNetworkImage(
                placeholder: (context, url) => CircularProgressIndicator(),
                imageUrl:
                    'https://pic2.zhimg.com/80/v2-2431f4b21609d842faa582b24b5c9d8b_720w.jpg',
              )),
        ],
      ),
    );
  }
}

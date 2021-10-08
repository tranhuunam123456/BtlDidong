import 'package:flutter/material.dart';
import "../ui.dart";

class CardFeedStyle extends StatefulWidget {
  final int? numLine;
  final List<String> imagesList = [
    "assets/images/nature1.jpg",
    "assets/images/nature2.jpg",
    "assets/images/nature2.jpg",
    "assets/images/nature2.jpg",
    "assets/images/nature2.jpg",
    "assets/images/nature2.jpg",
  ];
  CardFeedStyle({Key? key, this.numLine = 5}) : super(key: key);

  @override
  _CardFeedStyleState createState() => _CardFeedStyleState();
}

class _CardFeedStyleState extends State<CardFeedStyle> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Widget FeedImagesContainer(imagesList) {
      switch (imagesList.length) {
        case 1:
          return Container(
              width: size.width - 40,
              height: size.height - 300,
              child: Image.asset("assets/images/nature1.jpg",
                  fit: BoxFit.contain));
          break;
        case 2:
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  color: Colors.black,
                  width: (size.width - 50) / 2,
                  height: (size.width - 50) / 2 * 5 / 3,
                  child: Image.asset("assets/images/nature5.jpg",

                      // color: Color.fromRGBO(255, 255, 255, 0.7),
                      colorBlendMode: BlendMode.modulate,
                      fit: BoxFit.contain)),
              Container(
                  color: Colors.black,
                  height: (size.width - 50) / 2 * 5 / 3,
                  width: (size.width - 50) / 2,
                  child: Image.asset("assets/images/nature2.jpg",
                      fit: BoxFit.fitHeight)),
            ],
          );
          break;
        case 3:
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  color: Colors.black38,
                  width: (size.width - 50) / 2,
                  height: size.width,
                  child: Image.network(
                      'https://image.winudf.com/v2/image/Y29tLmRldi5jdWlhcHAubmF0dXJlX3NjcmVlbnNob3RzXzFfYTM0ZjAyMTI/screen-1.jpg?fakeurl=1&type=.jpg',
                      fit: BoxFit.fitHeight, loadingBuilder:
                          (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  })),
              Container(
                width: (size.width - 50) / 2,
                height: size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        color: Colors.black38,
                        height: (size.width - 10) / 2,
                        width: (size.width - 50) / 2,
                        child: Image.asset("assets/images/nature1.jpg",
                            fit: BoxFit.fitWidth)),
                    Container(
                        color: Colors.black38,
                        height: (size.width - 10) / 2,
                        width: (size.width - 50) / 2,
                        child: Image.asset("assets/images/nature2.jpg",
                            fit: BoxFit.contain)),
                  ],
                ),
              )
            ],
          );
          break;
        case 4:
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  color: Colors.black38,
                  width: (size.width - 50) / 2,
                  height: size.width,
                  child: Image.network(
                      'https://image.winudf.com/v2/image/Y29tLmRldi5jdWlhcHAubmF0dXJlX3NjcmVlbnNob3RzXzFfYTM0ZjAyMTI/screen-1.jpg?fakeurl=1&type=.jpg',
                      fit: BoxFit.fitHeight, loadingBuilder:
                          (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  })),
              Container(
                width: (size.width - 50) / 2,
                height: size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        color: Colors.black38,
                        height: (size.width - 10) / 3,
                        width: (size.width - 50) / 2,
                        child: Image.asset("assets/images/nature1.jpg",
                            fit: BoxFit.fitWidth)),
                    Container(
                        color: Colors.black38,
                        height: (size.width - 10) / 3,
                        width: (size.width - 50) / 2,
                        child: Image.asset("assets/images/nature6.jpg",
                            fit: BoxFit.fitWidth)),
                    Container(
                        color: Colors.black38,
                        height: (size.width - 10) / 3,
                        width: (size.width - 50) / 2,
                        child: Image.asset("assets/images/nature2.jpg",
                            fit: BoxFit.fitWidth)),
                  ],
                ),
              )
            ],
          );
          break;
        default:
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  color: Colors.black38,
                  width: (size.width - 42) / 2,
                  height: size.width,
                  child: Image.network(
                      'https://image.winudf.com/v2/image/Y29tLmRldi5jdWlhcHAubmF0dXJlX3NjcmVlbnNob3RzXzFfYTM0ZjAyMTI/screen-1.jpg?fakeurl=1&type=.jpg',
                      fit: BoxFit.fitHeight, loadingBuilder:
                          (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  })),
              Container(
                width: (size.width - 50) / 2,
                height: size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        color: Colors.black38,
                        height: (size.width - 10) / 3,
                        width: (size.width - 50) / 2,
                        child: Image.asset("assets/images/nature1.jpg",
                            fit: BoxFit.fitWidth)),
                    Container(
                        color: Colors.black38,
                        height: (size.width - 10) / 3,
                        width: (size.width - 50) / 2,
                        child: Image.asset("assets/images/nature6.jpg",
                            fit: BoxFit.fitWidth)),
                    Stack(children: [
                      Container(
                          color: Colors.black38,
                          height: (size.width - 10) / 3,
                          width: (size.width - 50) / 2,
                          child: Image.asset("assets/images/nature2.jpg",
                              fit: BoxFit.fitWidth)),
                      Container(
                        color: Colors.black45,
                        height: (size.width - 10) / 3,
                        width: (size.width - 50) / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                                child: Text(
                              "+3",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            )),
                          ],
                        ),
                      ),
                    ]),
                  ],
                ),
              )
            ],
          );
          break;
      }
      return Container();
    }

    return Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Colors.orange[50],
          // border: Border.all(
          //   width: 1, //                   <--- border width here
          // ),
          borderRadius: BorderRadius.all(Radius.circular(16)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26.withOpacity(0.5),

              blurRadius: 4,
              offset: Offset(3, 6), // changes position of shadow
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisSize: MainAxisSize.max, children: [
                CircleAvatar(
                  radius: 24,
                ),
                Container(
                    width: size.width - 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Text(" Trà My",
                            style: AppStyles.h3
                                .copyWith(fontWeight: FontWeight.bold)),
                        new Text("    23/09"),
                      ],
                    )),
                TextButton(
                    style: ButtonStyle(
                      alignment: Alignment.topRight,
                    ),
                    onPressed: () {},
                    child: Text("...", style: AppStyles.h2.copyWith())),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 8),
              child: SizedBox(
                width: size.width - 150,
                child: Text(
                  "Rất tuyệt vời !",
                  maxLines: 4,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
            ),
            widget.imagesList.length != 0
                ? Center(
                    child: FeedImagesContainer(widget.imagesList),
                  )
                : Container(),
            widget.numLine! > 4
                ? Center(
                    heightFactor: 0.5,
                    child: TextButton(
                        onPressed: () {},
                        child: Icon(Icons.arrow_downward_outlined)),
                  )
                : Container(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.headset_sharp, color: Colors.red),
                    label: Text("Yêu thích")),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.message_outlined, color: Colors.red),
                    label: Text("Bình luận"))
              ],
            )
          ],
        ));

    ;
  }
}

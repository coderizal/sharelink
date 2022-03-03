import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShareLink Url"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green
              ),
              onPressed: (){
              _share(context);
            }, child: Text("Klik untuk Share Link",style: TextStyle(
              color: Colors.white
            ),))
          ],
        ),
      ),
    );
  }

  Future<void> _share(BuildContext context) async {
        final box = context.findRenderObject() as RenderBox?;
    await Share.share("klik ini www.youtube.com",
        subject: "ayo dicoba",
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  }
}
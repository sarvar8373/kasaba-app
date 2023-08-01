import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewState extends StatelessWidget {
  const NewState({
    Key key, this.image
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
   
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: EdgeInsets.only(right: 1),
        child: Image.asset(image, fit: BoxFit.fill,)
        ),
    );
  }
}
class NewHelmet extends StatelessWidget {
  
  const NewHelmet({
    Key key, this.text, this.urls
    
  }) : super(key: key);
  final String text, urls;
  
  @override
  
  Widget build(BuildContext context) {
     var defaultText = TextStyle(color: Colors.black);
    var linkText = TextStyle(color: Colors.blue);
    return Container(
      child: Padding(padding: EdgeInsets.all(10), 
        child:RichText(
          text: TextSpan(
            children: [
              TextSpan(
                style: linkText,
                 text: text,
                  recognizer: TapGestureRecognizer()..onTap =  () async{
                    var url = urls;
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                  }
              ),
              
            ]
        ))) 
    );
  }
}
import 'package:flutter/material.dart';
class Project extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ProjectList();

  }

}

class ProjectList extends State<Project> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20.5),
          crossAxisSpacing: 15,
          crossAxisCount: 3,
          scrollDirection: Axis.vertical,
          children: <Widget>[
               new Card(child: new Column( mainAxisSize: MainAxisSize.min,children: <Widget>[
                  new Text("اسید سرچشمه",style:new TextStyle(fontFamily:'Vazir',fontSize: 12),),
                  new Image.asset('assets/images/logo.jpg')
               ],)),
               new Card(child: new Column( mainAxisSize: MainAxisSize.min,children: <Widget>[
                  new Text("اسید خاتون آباد",style:new TextStyle(fontFamily:'Vazir',fontSize: 12),),
                  new Image.asset('assets/images/logo.jpg')
               ],)),
               new Card(child: new Column( mainAxisSize: MainAxisSize.min,children: <Widget>[
                  new Text("توسعه ذوب",style:new TextStyle(fontFamily:'Vazir',fontSize: 12),),
                  new Image.asset('assets/images/logo.jpg')
               ],)),
               new Card(child: new Column( mainAxisSize: MainAxisSize.min,children: <Widget>[
                  new Text("فلوتاسیون",style:new TextStyle(fontFamily:'Vazir',fontSize: 12),),
                  new Image.asset('assets/images/logo.jpg')
               ],)),
          ],
        );
  }
}
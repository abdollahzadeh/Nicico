import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

     return new SplashScreen(seconds: 14,navigateAfterSeconds:new AfterSplash(),
       backgroundColor: Colors.white,
       image:new Image.asset('assets/images/logo.jpg',fit: BoxFit.fill),
       title: new Text(''),
       photoSize: 100.0

       
     );
  }
}
class AfterSplash extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return new DefaultTabController(length: 8,initialIndex: 1, child:
        Scaffold(appBar:new AppBar(
          title: new Text('مجتمع مس سرچشمه - معاونت توسعه و برنامه ریزی',style: new TextStyle(fontFamily: 'Vazir'),),
          centerTitle: true,
          leading: new Icon(Icons.arrow_back),
          actions: <Widget>[
            new IconButton(icon:new Icon(Icons.menu), onPressed:(){Scaffold.of(context).openDrawer();})
          ],
          bottom: new TabBar(labelStyle: TextStyle(fontFamily: 'Vazir'),tabs:[
            new Tab(text: 'پروژه ها',),
            new Tab(text: 'اخبار',),
            new Tab(text: 'مزایده ها',),
            new Tab(text: 'مناقصه ها',),
            new Tab(text: 'فروشگاه',),

          ],isScrollable: true,indicatorColor: Colors.blue,),
        ),

          endDrawer:new Drawer(
             child: new Text('fff')
        ), 
         body:
         TabBarView(children:<Widget> [
          new Text('ffff'),
          new Text('oppp'),
          new Text('mnnmn'),
          new Text('099090'),
          new Text('ytty'),
        ]),)
    );
  }
}
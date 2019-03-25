import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginpage(),
      theme: new ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.grey,
        accentColor: Colors.blue
      ),
      
    );
  }
}
class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage>  with SingleTickerProviderStateMixin{
 AnimationController _iconAnimationController;
 Animation <double> _iconAnimation;
 @override
 void initState(){
   super.initState();
   _iconAnimationController=new AnimationController(
     vsync: this,
     duration: new Duration(milliseconds: 500)
   );
   _iconAnimation= new CurvedAnimation(
     curve: Curves.easeOut,
     parent: _iconAnimationController
   );
   _iconAnimation.addListener(()=>this.setState((){}));
   _iconAnimationController.forward();
 }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
           new Image(
             image: new AssetImage("assets/thug.png"),
             fit: BoxFit.cover,
             color: Colors.black87,
             colorBlendMode: BlendMode.darken,

           ),
           new Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               new FlutterLogo(
                 size: _iconAnimation.value*100,
                 colors: Colors.blue,
               ),
              new Form(
              
                child: new Theme(
                  data: new ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
              

                  ),
                                  child: Container(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new TextFormField(
                        decoration: InputDecoration(
                          labelText: "Apna naam daaal",
                          labelStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal,fontSize: 30.0)

                        ),
                        keyboardType: TextInputType.text
                      ),
                      new TextFormField(
                        decoration: InputDecoration(
                          labelText: "Apna passswd daaal",
                          labelStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal,fontSize: 30.0)

                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      new MaterialButton(
                        color: Colors.teal,
                        textColor: Colors.white,
                        child: new Icon(Icons.arrow_right),
                        onPressed: ()=>{},
                        splashColor: Colors.red,
                      )
                    ],
              ),
                  ),
                ),)
             ],
             
           )
        ],
      ),
      
    );
  }
} 
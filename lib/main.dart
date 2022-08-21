import 'package:bmi_caculator/input_page.dart';
import 'package:flutter/material.dart';
void main() => runApp(   BMICaculator());
class BMICaculator extends StatelessWidget {
  // const BMICaculator({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme:   AppBarTheme(
            backgroundColor: Color(0xFF101427),
          ),
       scaffoldBackgroundColor: Color(0xFF0d101f),
        // scaffoldBackgroundColor: Color(0xFF293362),
        accentColor: Colors.pink,
        textTheme: TextTheme (
          bodyText2: TextStyle(color: Color(0xFFffffff),),
        ),

      ),
      home:  InputPage(key: UniqueKey()),
    );
  }
}

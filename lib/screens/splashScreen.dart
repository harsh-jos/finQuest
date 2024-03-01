import 'package:fin_quest/screens/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> const Login(),),);
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white,
          image: DecorationImage(image: AssetImage('assets/images/splash_bg.png'),fit: BoxFit.cover)
        ),
        child: Center(
            child: Column(
              children: [
                const Spacer(flex: 3,),
      
                Expanded(
                  flex: 5,
                    child:Image.asset('assets/images/app_logo.png'),
                ),
                const Spacer(flex: 2,),
      
                Expanded(
                    flex: 2,
                    child: Column(
                  children: [
                    Text('From', style: TextStyle(color:Colors.black,fontFamily: 'Inter',fontSize: 11.2,fontWeight: FontWeight.w100),),
                    Text('Blue-Ocean' ,style: TextStyle(color:Colors.purpleAccent,fontFamily: 'Fredoka',fontSize: 30,fontWeight: FontWeight.bold),),
                  ],
                )),
              ],
            ),
      
        ),
      ),
    );
  }
}

import 'package:fin_quest/widgets/formTextfield.dart';
import 'package:fin_quest/widgets/loginButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.orange,
          //decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/login_bg.png'),fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(flex: 2,),
                Expanded(flex:2,child: Text('Login', style: TextStyle(fontFamily: 'Dongle',fontWeight: FontWeight.w400,fontSize: 63),)),
                Spacer(flex: 2,),
                FormTextfield(hintText: 'E-mail Address', icon: Icons.email_outlined),
                Spacer(),
                FormTextfield(hintText: 'Password', icon: Icons.key),
                Spacer(),
                LoginButton(),
                SizedBox(height: 5,),
                Text('Forgot Password?', style: TextStyle(fontFamily: 'Dongle',fontWeight: FontWeight.w400,fontSize: 25),),
                Spacer(flex: 5,),
                Text('or Connect with:', style: TextStyle(fontFamily: 'Dongle',fontWeight: FontWeight.w400,fontSize: 25),),
                SizedBox(height: 10,),
                Expanded(child: Row(
                  children: [
                    Spacer(),
                    Expanded(child: IconButton(icon: FaIcon(FontAwesomeIcons.google),onPressed: (){},)),
                    Spacer(),
                    Expanded(child: IconButton(icon: FaIcon(FontAwesomeIcons.facebook),onPressed: (){},)),
                    Spacer(),
                    Expanded(child: IconButton(icon: FaIcon(FontAwesomeIcons.twitter),onPressed: (){},)),
                    Spacer(),
                  ],
                ),),
                Spacer(),
                Expanded(child: Row(
                  children: [
                    Spacer(),
                    Text("Don't have an account?", style: TextStyle(fontFamily: 'Dongle',fontWeight: FontWeight.w400,fontSize: 25),),
                    GestureDetector(onTap: (){},child: Text('Sign Up', style:TextStyle(fontFamily: 'Dongle',fontWeight: FontWeight.w400,fontSize: 25) ,),),
                    Spacer(),

                  ],
                )),
                Spacer(flex: 3,),

              ],
            ),
          ),
    );
  }
}

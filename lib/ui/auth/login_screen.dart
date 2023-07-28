import 'package:flutter/material.dart';
import 'package:it_momo_wala/ui/home_screen.dart';
import 'package:it_momo_wala/utils/default_colors.dart';
import 'package:it_momo_wala/widgets/round_button.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

   ValueNotifier<bool> toggle = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {

    final _formKey = GlobalKey<FormState>();

    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
        backgroundColor: DefaultColor.delault_color,

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Image.asset("assets/images/logo.jpeg"),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText:  "enter your email",
                              hintStyle: TextStyle(color: Colors.white70,fontSize: 16,fontFamily: "Raleway",fontWeight: FontWeight.w600),
                              prefixIcon: Icon(Icons.email_outlined,color: Colors.white,),

                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: DefaultColor.white,),
                                borderRadius:  BorderRadius.circular( 20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: DefaultColor.white,),
                                borderRadius:  BorderRadius.circular(20),
                              ),
                            ),

                            validator: (value){
                              if(value!.isEmpty){
                                return 'Enter email';
                              }
                              return null;
                            },
                          ),

                          SizedBox(height: 20,),

                          ValueListenableBuilder(
                            valueListenable: toggle,
                            builder: (context, value, child) {
                              return TextFormField(
                                controller: passwordController,
                                obscureText: toggle.value,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: "Enter your Password",
                                  hintStyle: TextStyle(color: Colors.white70, fontSize: 16, fontFamily: "Raleway", fontWeight: FontWeight.w600),
                                  prefixIcon: Icon(Icons.lock_outline_rounded, color: Colors.white),
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      toggle.value = !toggle.value;
                                    },
                                    child: Icon(
                                      toggle.value ? Icons.visibility_off_outlined : Icons.visibility,
                                      color: Colors.white,
                                      size: 19,
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16), // Adjust padding as needed
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      width: 1,
                                      color: DefaultColor.white,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      width: 1,
                                      color: DefaultColor.white,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter password';
                                  }
                                  return null;
                                },
                              );
                            },
                          )


                        ],
                      ),

                    ),


                    SizedBox(height: 60,),

                    RoundButton(
                      title: "Login",
                      style: TextStyle(fontSize: 16,color: DefaultColor.delault_color),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                      },
                    ),
                    SizedBox(height: 10,),

                  ],),
              ],
            ),
          ),
        )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:it_momo_wala/ui/home_screen.dart';
import 'package:it_momo_wala/utils/default_colors.dart';
import 'package:it_momo_wala/widgets/custom_teft_filed.dart';

class UserCart extends StatefulWidget {
  final Image image;
  final String name;
  final String vanNo;
  final String phoneNo;

  const UserCart({Key? key, required this.image,required this.name, required this.vanNo, required this.phoneNo}) : super(key: key);

  @override
  State<UserCart> createState() => _UserCartState();
}

class _UserCartState extends State<UserCart> {


  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: DefaultColor.bg_color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius:0.4,
                blurRadius: 5,
                offset: Offset(0, 1), // vertical offset
              ),
            ],
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 55,
                    width: 55,
                    child:
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                          child: widget.image),
                    ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(widget.name, style: const TextStyle(fontSize: 15, fontFamily: "Inter",color: Colors.white, fontWeight: FontWeight.w600),),
                        SizedBox(width: 5,),
                        Icon(Icons.circle_rounded,color: Colors.green,size: 13,)
                      ],
                    ),
                    Text(widget.phoneNo, maxLines: null, style: TextStyle(fontSize: 14,color: Colors.white70,fontFamily: "Poppins",),),
                    Text("van Id: "+ widget.vanNo, maxLines: null, style: TextStyle(fontSize: 14,color: Colors.white54,fontFamily: "Poppins",),),
                  ],
                ),

                 Spacer(),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  [
                    InkWell(
                      onTap:()=> _passwordChange(context),
                        child: Icon(Icons.lock_outline_sharp,color: Colors.white54,size: 15,)),
                    SizedBox(width: 7,),
                    Icon(Icons.edit,color: Colors.white54,size: 15,),
                    SizedBox(width: 7,),
                    InkWell(
                      onTap: (){
                        _blockedUser(context);
                      },
                        child: Icon(Icons.block,color: Colors.white54,size: 15,)),

                  ],
                ),


              ],
            )
          ]),
        )

    );
  }



  void _blockedUser(BuildContext context){
    showDialog(context: context,
        builder:(BuildContext context) {
          return AlertDialog(
            backgroundColor: DefaultColor.bg_color,
            title: Text("Are You sure You want to Block this user?",style: TextStyle(color: Colors.white)),
            actions: [
              TextButton(onPressed: (){}, child: Text("Yes",style: TextStyle(color: Colors.white,fontSize: 16),)),
              TextButton(onPressed: (){Navigator.pop(context);}, child: Text("No",style: TextStyle(color: Colors.white,fontSize: 16),)),
            ],
          );
        }, );

  }

 void _passwordChange(BuildContext context) {
    showDialog(context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: DefaultColor.bg_color,
            title: Text("Change Password",style: TextStyle(color: Colors.white)),
            content: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [


                  Form(
                    key: _form,
                    child: Container(
                      height: 55,
                      child: TextFormField(
                        controller: _pass,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline_rounded),
                          prefixIconColor: Colors.grey.shade500,
                          hintText: "New Password",
                          hintStyle: TextStyle(fontSize: 17, color: Color(0xffA6A6A6)),
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Color(0xffD0D0D0), width: 1),
                          //   borderRadius: BorderRadius.circular(15.0),
                          // ),
                          // enabledBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                          //   borderRadius: BorderRadius.circular(15.0),
                          // ),
                        ),

                        validator: (val){
                          if (val!.isEmpty) {
                            return 'Password cannot be empty';
                          } else if (val.length < 4) {
                            return 'Password too weak';
                          } else if (val.length == 4) {
                            return 'Good';
                          }
                          else {
                            return null;
                          }
                        },

                      ),
                    ),
                  ),

                  SizedBox(height: 10,),

                  Container(
                    height: 55,
                    child: TextFormField(
                      controller: _confPass,



                      autovalidateMode: AutovalidateMode.onUserInteraction,


                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        prefixIconColor: Colors.grey.shade500,
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(fontSize: 17, color: Color(0xffA6A6A6)),
                        // focusedBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(color: Color(0xffD0D0D0), width: 1),
                        //   borderRadius: BorderRadius.circular(15.0),
                        // ),
                      //   enabledBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                      //     borderRadius: BorderRadius.circular(15.0),
                      //   ),
                      ),

                        validator: (val){
                          if(val!.isEmpty)
                            return 'Empty';
                          if(val != _pass.text)
                            return 'Not Match';
                          return null;
                        }

                    ),
                  ),


                ],
              ),
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text("Update",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.white),))
            ],
          );
        },);
  }
}

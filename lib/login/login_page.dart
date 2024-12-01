




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_task/home/home_page.dart';
import 'package:interview_task/theme/color_theme.dart';

import '../main.dart';

class LoginScreenPage extends ConsumerStatefulWidget {
  const LoginScreenPage({super.key});

  @override
  ConsumerState<LoginScreenPage> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends ConsumerState<LoginScreenPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final visibility = StateProvider(
        (ref) => true,
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

          backgroundColor: Palette.lightBlackColor,

          title:Padding(
            padding:  EdgeInsets.all(w*0.2),
            child: Center(child: Text("Login",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white,fontSize: w*0.09),)),
          )
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Padding(
              padding:  EdgeInsets.only(top: w*0.3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SizedBox(

                height: h*0.1,),
                  Center(
                    child: Container(
                      width: w * 0.9,
                      height: h*0.5,
                      child: Column(

                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: w * 0.06, right: w * 0.06),
                                  child: TextFormField(

                                    style:  GoogleFonts.poppins(color: Palette.blackColor,fontSize: 14),
                                    controller: emailController,
                                    autofillHints: [AutofillHints.name],
                                    cursorColor: Palette.greyColor,
                                    validator: (value) {
              if (value == null || value.isEmpty) {
              return 'Please enter an UserName';
              } else if (!RegExp(r'user')
                  .hasMatch(value)) {
              return 'Please enter a valid username';
              }else{
              return null;}
              },
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            left: w * 0.05,
                                            bottom: w * 0.035,
                                            top: h * 0.025),
                                        labelText: "UserName",
                                        labelStyle: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                color: Palette.blackColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: h * 0.014)),
                                        hintText: "Enter your UserName",
                                        hintStyle: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                color: Palette.blackColor,
                                                fontWeight: FontWeight.w500,
                                                fontSize: h * 0.014)),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(w * 0.02),
                                          borderSide:
                                          const BorderSide(color: Palette.greyColor),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(w * 0.02),
                                          borderSide: const BorderSide(color: Colors.white),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(w * 0.02),
                                            borderSide:
                                            const BorderSide(color: Palette.greyColor)),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(w * 0.02),
                                          borderSide:
                                          const BorderSide(color: Palette.greyColor),
                                        )),
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: w * 0.07,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: w * 0.06, right: w * 0.06),
                                child: TextFormField(
                                  autofillHints: [AutofillHints.password],

                                  style:  GoogleFonts.poppins(
                                      color: Palette.blackColor,
                                      fontWeight: FontWeight.w500, fontSize: 14),
                                  controller: passwordController,
                                  cursorColor: Palette.blackColor,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    } else if (value.length < 6) {
                                      return 'Password must be at least 8 characters long';
                                    }
                                    return null;
                                  },
                                  obscureText: ref.watch(visibility),
                                  decoration: InputDecoration(
                                    suffixIcon: ref.watch(visibility)
                                        ? Bounce(
                                      duration: Duration(milliseconds: 110),
                                      onPressed: (){
                                        ref
                                            .watch(visibility.notifier)
                                            .update((state) => false);
                                      },
                                      child: const Icon(
                                        Icons.lock,
                                        color: Palette.blackColor,
                                      ),
                                    )
                                        : Bounce(
                                      duration: Duration(milliseconds: 110),
                                      onPressed: (){
                                        ref
                                            .watch(visibility.notifier)
                                            .update((state) => true);
                                      },
                                      child: const Icon(Icons.lock_open,
                                          color: Palette.blackColor),
                                    ),
                                    contentPadding: EdgeInsets.only(
                                        left: w * 0.05,
                                        bottom: w * 0.035,
                                        top: h * 0.025),
                                    labelText: "Password",

                                    labelStyle: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Palette.blackColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: h * 0.014)),
                                    hintText: "Enter your password",
                                    hintStyle: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Palette.blackColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: h * 0.014)),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(w * 0.02),
                                      borderSide: const BorderSide(color: Palette.greyColor),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(w * 0.02),
                                      borderSide: const BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(w * 0.02),
                                        borderSide: const BorderSide(color: Palette.greyColor)),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(w * 0.02),
                                      borderSide: const BorderSide(color: Palette.greyColor),
                                    ),
                                  ),
                                ),
                              ),


                              SizedBox(
                                height: w * 0.02,
                              ),



                            ],
                          ),


                          SizedBox(height: h*0.05,),
                          GestureDetector(
                            onTap: () {
                              if(
                              emailController.text!=""&&
                                  passwordController.text!=""&&
                                  _formKey.currentState!.validate()
                              )
                              {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ));
                              }else{
                                emailController.text=="" ? ScaffoldMessenger.of(context).
                                showSnackBar(SnackBar(content: Text("please enter your username"))):
                                passwordController.text=="" ? ScaffoldMessenger.of(context).
                                showSnackBar(SnackBar(content: Text("please enter password"))):
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(content: Text("enter your valid details")));
                              }
                            },
                            child: Container(
                              height: h*0.07,
                              width: w*0.8,

                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(w*0.03),color: Palette.lightBlackColor,),

                              child: Center(
                                child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: w*0.05),),
                              ),
                            ),
                          ),
                          SizedBox(height: h*0.05,),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
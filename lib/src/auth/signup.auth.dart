import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 40, right: 24, bottom: 24, left: 24),
          child: Column(
            children: [
              // Logo, Title & Sub-Title
              Column(
                children: [
                  Image(
                    height: 150,
                    image: AssetImage("assets/logos/welcom_logo.png"),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Angkor",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[900],
                    ),
                  ),
                  Text(
                    "Online Shopping On Angkor App",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.orange[300],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              // Form Login
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32.0),
                  child: Column(
                    children: [
                      // Username
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Username",
                          errorMaxLines: 3,
                          labelStyle: const TextStyle()
                              .copyWith(fontSize: 14, color: Colors.black),
                          hintStyle: const TextStyle()
                              .copyWith(fontSize: 14, color: Colors.black),
                          errorStyle: const TextStyle()
                              .copyWith(fontStyle: FontStyle.normal),
                          floatingLabelStyle: const TextStyle()
                              .copyWith(color: Colors.black.withOpacity(0.8)),
                          prefixIcon: Icon(Iconsax.user_edit),
                          prefixIconColor: Colors.grey,
                          suffixIconColor: Colors.grey,
                          border: OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          enabledBorder: const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                const BorderSide(width: 1, color: Colors.grey),
                          ),
                          focusedBorder: const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(
                                width: 1, color: Colors.black12),
                          ),
                          errorBorder: const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                const BorderSide(width: 1, color: Colors.red),
                          ),
                          focusedErrorBorder:
                              const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(
                                width: 2, color: Colors.orange),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Email
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "E-Mail",
                          errorMaxLines: 3,
                          labelStyle: const TextStyle()
                              .copyWith(fontSize: 14, color: Colors.black),
                          hintStyle: const TextStyle()
                              .copyWith(fontSize: 14, color: Colors.black),
                          errorStyle: const TextStyle()
                              .copyWith(fontStyle: FontStyle.normal),
                          floatingLabelStyle: const TextStyle()
                              .copyWith(color: Colors.black.withOpacity(0.8)),
                          prefixIcon: Icon(Iconsax.direct),
                          prefixIconColor: Colors.grey,
                          suffixIconColor: Colors.grey,
                          border: OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          enabledBorder: const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                const BorderSide(width: 1, color: Colors.grey),
                          ),
                          focusedBorder: const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(
                                width: 1, color: Colors.black12),
                          ),
                          errorBorder: const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                const BorderSide(width: 1, color: Colors.red),
                          ),
                          focusedErrorBorder:
                              const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(
                                width: 2, color: Colors.orange),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Password
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Password",
                          errorMaxLines: 3,
                          labelStyle: const TextStyle()
                              .copyWith(fontSize: 14, color: Colors.black),
                          hintStyle: const TextStyle()
                              .copyWith(fontSize: 14, color: Colors.black),
                          errorStyle: const TextStyle()
                              .copyWith(fontStyle: FontStyle.normal),
                          floatingLabelStyle: const TextStyle()
                              .copyWith(color: Colors.black.withOpacity(0.8)),
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash),
                          prefixIconColor: Colors.grey,
                          suffixIconColor: Colors.grey,
                          border: OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          enabledBorder: const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                const BorderSide(width: 1, color: Colors.grey),
                          ),
                          focusedBorder: const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(
                                width: 1, color: Colors.black12),
                          ),
                          errorBorder: const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                const BorderSide(width: 1, color: Colors.red),
                          ),
                          focusedErrorBorder:
                              const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(
                                width: 2, color: Colors.orange),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Confirm Password
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Confrim Password",
                          errorMaxLines: 3,
                          labelStyle: const TextStyle()
                              .copyWith(fontSize: 14, color: Colors.black),
                          hintStyle: const TextStyle()
                              .copyWith(fontSize: 14, color: Colors.black),
                          errorStyle: const TextStyle()
                              .copyWith(fontStyle: FontStyle.normal),
                          floatingLabelStyle: const TextStyle()
                              .copyWith(color: Colors.black.withOpacity(0.8)),
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash),
                          prefixIconColor: Colors.grey,
                          suffixIconColor: Colors.grey,
                          border: OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          enabledBorder: const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                const BorderSide(width: 1, color: Colors.grey),
                          ),
                          focusedBorder: const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(
                                width: 1, color: Colors.black12),
                          ),
                          errorBorder: const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                const BorderSide(width: 1, color: Colors.red),
                          ),
                          focusedErrorBorder:
                              const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(
                                width: 2, color: Colors.orange),
                          ),
                        ),
                      ),

                      SizedBox(height: 5),
                      // --Remember Me & Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // -Remember Me
                          Row(
                            children: [
                              SizedBox(
                                child: Checkbox(
                                  value: true,
                                  onChanged: (val) {},
                                  activeColor: Colors.blue, //color of box
                                  checkColor: Colors.white, //color of tick
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Already have an account ? ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Sign In",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orange[700]),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      // --Create Button
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Create Account"),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            disabledBackgroundColor: Colors.grey,
                            disabledForegroundColor: Colors.grey,
                            side: BorderSide(color: Colors.grey),
                            textStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              // Divider & // Footer
              Row(
                children: [
                  Flexible(
                    child: Divider(
                      color: Colors.grey[400],
                      thickness: 1,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    "Thank You",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  Flexible(
                    child: Divider(
                      color: Colors.grey[400],
                      thickness: 1,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForetPasswordState();
}

class _ForetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
            Text(
              "Forget Password",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orange[700],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Don't worry sometimes people can forget too, enter your  email and we will send yor a password reset link.",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey[500],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            //TextField
            TextField(
              decoration: InputDecoration(
                //labelText: "E-Mail",
                label: Text(
                  "E-Mail",
                  style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                ),
                errorMaxLines: 3,
                labelStyle: const TextStyle()
                    .copyWith(fontSize: 14, color: Colors.black),
                hintStyle: const TextStyle()
                    .copyWith(fontSize: 14, color: Colors.black),
                errorStyle:
                    const TextStyle().copyWith(fontStyle: FontStyle.normal),
                floatingLabelStyle: const TextStyle()
                    .copyWith(color: Colors.black.withOpacity(0.8)),
                prefixIcon: Icon(Iconsax.direct_right),
                prefixIconColor: Colors.grey,
                suffixIconColor: Colors.grey,
                border: OutlineInputBorder().copyWith(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                enabledBorder: const OutlineInputBorder().copyWith(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(width: 1, color: Colors.grey),
                ),
                focusedBorder: const OutlineInputBorder().copyWith(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(width: 1, color: Colors.black12),
                ),
                errorBorder: const OutlineInputBorder().copyWith(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(width: 1, color: Colors.red),
                ),
                focusedErrorBorder: const OutlineInputBorder().copyWith(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(width: 2, color: Colors.orange),
                ),
              ),
            ),

            // Submit
            SizedBox(height: 40),
            // --Sign In Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Submit"),
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
    );
  }
}

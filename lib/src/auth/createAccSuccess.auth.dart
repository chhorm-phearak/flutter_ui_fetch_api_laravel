import 'package:flutter/material.dart';

class CreateAccSuccess extends StatefulWidget {
  const CreateAccSuccess({super.key});

  @override
  State<CreateAccSuccess> createState() => _CreateAccSuccessState();
}

class _CreateAccSuccessState extends State<CreateAccSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(height: 100),
              // Image
              Image(
                height: 180,
                image: AssetImage("assets/images/tick_success_two.png"),
              ),
              SizedBox(height: 20),

              /// Title & SubTitle
              Text(
                "Create Account Success",
                style: TextStyle(
                  color: Colors.blue[500],
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Welcome to Your Ultimate Shopping Destination: Your Account is Created, Unleash the Joy of Seamless Online Shopping !",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),

              /// Button Dibe
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Continue"),
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
    );
  }
}

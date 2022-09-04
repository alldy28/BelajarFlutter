import 'package:flutter/material.dart';
import 'package:splashscreen2/theme.dart';
import 'package:fluttertoast/fluttertoast.dart';

class signinpage extends StatefulWidget {
  const signinpage({Key? key}) : super(key: key);

  @override
  State<signinpage> createState() => _signinpageState();
}

class _signinpageState extends State<signinpage> {
  late FToast fToast;
  final emailcontroller = TextEditingController(text: '');
  final passwordcontroller = TextEditingController(text: '');
  bool isshowpassworderror = false;
  bool isrememberme = false;
  bool isloading = false;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          emailimput(),
          passwordimput(),
          remembercheckbox(),
          loginbutton(),
          Center(
            child: Container(
              margin: EdgeInsets.only(
                top: 14,
              ),
              child: Text(
                'OR',
                style: kColor6style.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
            ),
          ),
          loginwithgoolgebutton(),
          registerbotton(),
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 84),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login to your\naccount',
            style: kColor3Style.copyWith(
              fontSize: 20,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 87,
                height: 4,
                margin: EdgeInsets.only(right: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: kColor3),
              ),
              Container(
                width: 8,
                height: 4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: kColor3),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget emailimput() {
    return Container(
      margin: EdgeInsets.only(
        top: 48,
      ),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kColor2,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        controller: emailcontroller,
        decoration: InputDecoration.collapsed(
          hintText: 'Email',
          hintStyle: kColor6style.copyWith(
            fontSize: 16,
            fontWeight: semibold,
          ),
        ),
      ),
    );
  }

  Widget passwordimput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 32,
          ),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: kColor2,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  obscureText: true,
                  controller: passwordcontroller,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Password',
                    hintStyle: kColor6style.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.visibility_outlined,
              ),
            ],
          ),
        ),
        if (isshowpassworderror)
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text('Password kamu salah', style: kColor7style),
          ),
      ],
    );
  }

  Widget remembercheckbox() {
    return Container(
      margin: EdgeInsets.only(top: 32),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Checkbox(
              value: isrememberme,
              onChanged: (value) {
                setState(() {
                  isrememberme = value!;
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            'Remember me',
          ),
        ],
      ),
    );
  }

  Widget loginbutton() {
    return Container(
      height: 56,
      width: double.infinity,
      margin: EdgeInsets.only(top: 32),
      child: TextButton(
        onPressed: () {
          setState(() {
            isloading = true;
          });

          Future.delayed(Duration(seconds: 2), () {
            setState(() {
              isloading = false;
            });
            if (passwordcontroller.text != '123123') {
              setState(() {
                isshowpassworderror = true;
              });
              fToast.showToast(
                child: errortoast(),
                toastDuration: Duration(seconds: 2),
                gravity: ToastGravity.BOTTOM,
              );
            } else {
              Navigator.pushNamed(context, '/home');
            }
          });
        },
        style: TextButton.styleFrom(
          backgroundColor: kColor3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: isloading
            ? CircularProgressIndicator(
                color: kColor4,
                backgroundColor: kColor6,
              )
            : Text(
                'Login',
                style: kColor4Style.copyWith(
                  fontSize: 18,
                  fontWeight: semibold,
                ),
              ),
      ),
    );
  }

  Widget loginwithgoolgebutton() {
    return Container(
      height: 56,
      width: double.infinity,
      margin: EdgeInsets.only(top: 21),
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Login With Google',
          style: kColor3Style.copyWith(
            fontSize: 18,
            fontWeight: semibold,
          ),
        ),
      ),
    );
  }

  Widget registerbotton() {
    return Container(
      margin: EdgeInsets.only(top: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don`t have an account?',
            style: kColor6style.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'register',
                style: kColor5Style.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ))
        ],
      ),
    );
  }

  Widget errortoast() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kColor7,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        'Password salah',
        style: kColor4Style.copyWith(
          fontSize: 16,
          fontWeight: semibold,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool checkBoxValue = false;
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          SizedBox(
            height: 25,
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(hintText: 'email Address'),
          ),
          SizedBox(
            height: 25,
          ),
          TextField(
            obscureText: showPassword,
            decoration: InputDecoration(
                hintText: 'password',
                suffixIcon: InkWell(
                    onTap: () {
                      showPassword = !showPassword;
                      setState(() {});
                    },
                    child: Icon(showPassword
                        ? Icons.visibility_off
                        : Icons.remove_red_eye))),
          ),
          SizedBox(
            height: 25,
          ),
          CheckboxListTile(
              value: checkBoxValue,
              title: Text('Agree Conditnon'),
              onChanged: (val) {
                checkBoxValue = val;
                setState(() {});
              }),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
              onPressed: () {
                if (checkBoxValue) {
                  print(
                      'Name : ${nameController.text} , email : ${emailController.text}');
                } else {
                  print('You have to accept conditinos');
                }
              },
              child: Text('Submit'))
        ],
      ),
    );
  }
}

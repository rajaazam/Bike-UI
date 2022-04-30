import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/pages/form.dart';
import 'package:myapp/pages/screen_page2.dart';
import 'package:myapp/pages/screenfourpae.dart';
import 'package:myapp/widget/my_field.dart';
import 'package:myapp/widget/mybuttom.dart';
import 'package:flutter/services.dart';
import 'package:myapp/widget/new_my_field.dart';

class RegisterPage extends StatefulWidget {
  //final String name,email,phone;
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late DateTime pickedDate;

  //final TextEditingController mycontrol = TextEditingController(text: )
  TextEditingController _firstname = TextEditingController();
  TextEditingController _lastname = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _cander = TextEditingController();

  TextEditingController _date = TextEditingController();
  // TextEditingController _email = TextEditingController();
  // TextEditingController _phone = TextEditingController();

  _pickedDate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: pickedDate,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));
    if (date != null)
      setState(() {
        pickedDate = date;
      });
  }

  @override
  void initState() {
    pickedDate = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register form'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            //1
            Padding(padding: EdgeInsets.all(20)),
            Center(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    // border:Border.all(),
                    // color: Colors.amber,
                    //borderRadius: BorderRadius.circular(30)
                    ),
                child: MyField(
                  icon: Icon(Icons.person),
                  controller: _firstname,
                  hintText: 'firstname',
                ),
              ),
            ),
            // Container(
            //   margin: EdgeInsets.all(20),
            //   // height: 300,
            //   // width: 200,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //   ),
            //   child: TextField(
            //     controller: _firstname,
            //     // controller: _name,
            //     decoration: InputDecoration(hintText: 'First_Name'
            //         // helperText: 'First_Name'
            //         ),
            //   ),
            // ),

            //TextField(),
            SizedBox(
              height: 30,
            ),
            //2
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.circular(20)
                  // border: Border.all()
                  ),
              child: MyField(
                icon: Icon(Icons.person),
                controller: _lastname,
                hintText: 'lastname',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //3
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  // border: Border.all()
                  ),
              child: MyField(
                  maxLength: 10,
                  keyboardType: TextInputType.phone,
                  hintText: 'Phone',
                  controller: _phone,
                  autocorrect: true,
                  icon: Icon(Icons.phone),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly]),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    // border: Border.all()
                    ),
                child: NewMyField(
                    controller: _email,
                    icon: Icon(Icons.email),
                    hintText: 'Email')),
            // Container(
            //     height: 50,
            //     width: 200,
            //     child: NewMyField(
            //         controller: _cander,
            //         hintText: 'Calander',
            //         icon: Icon(Icons.calendar_today_rounded),
            //         keyboardType: TextInputType.phone,
            //         onTap: _pickedDate)
            //         ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  //border: Border.all()
                  ),
              child: ListTile(
                title: Text(
                    'date: ${pickedDate.year}-${pickedDate.month}-${pickedDate.day}'),
                leading: Icon(Icons.calendar_today_rounded),
                onTap: _pickedDate,
              ),
            ),
            // TextField(
            //   onTap: _pickedDate,
            //   decoration:InputDecoration(
            //     icon: Icon(Icons.calendar_today_rounded),
            //     hintText: 'Date',

            //     labelText: 'Date ${pickedDate.year},${pickedDate.month},${pickedDate.day}'
            //   ) ,
            // ),
            //btn
            SizedBox(
              height: 30,
            ),
            Container(
                height: 50,
                width: 200,
                child: MyButton(
                    title: 'NextPage',
                    onTap: () {
                      Navigator.push(
                          context,
                          (MaterialPageRoute(
                              builder: (context) => WelcomePage(
                                    firstname: _firstname.text,
                                    lastname: _lastname.text,
                                    phone: _phone.text,
                                    email: _email.text,
                                  ))));
                    }
                    //=>display(),
                    //{

                    // Navigator.push(context,
                    //     (MaterialPageRoute(builder: (_) => ScreenPage2())));
                    // setState(() {
                    //   print('object');
                    //}

                    )),
          ],
        ),
      ),
    );
  }

  // @override
  // void dispose() {
  //   _firstname.dispose();
  //   _lastname.dispose();
  //   _phone.dispose();
  //   super.dispose();
  // }
}

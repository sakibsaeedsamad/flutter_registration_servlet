import 'package:flutter/material.dart';
import 'package:retrofit/retrofit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();

  DateTime? _selectedDate = null;

  //Method for showing the date picker
  void _pickDateDialog() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            //which date will display when user open the picker
            firstDate: DateTime(1950),
            //what will be the previous supported year in picker
            lastDate: DateTime
                .now()) //what will be the up to supported date in picker
        .then((pickedDate) {
      //then usually do the future job
      if (pickedDate == null) {
        //if user tap cancel then this function will stop
        return;
      }
      setState(() {
        //for rebuilding the ui
        _selectedDate = pickedDate;
      });
    });
  }

  String dropdownValue = 'Trainee Software Engineer';

  List<String> spinnerItems = ['Trainee Software Engineer', 'Assistant Software Engineer', 'Jr Software Engineer', 'Software Engineer', 'Sr Software Engineer'];
  int _radioSelected = 1;
  String? _radioVal = null;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' User Registration'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Form(
              key: _formStateKey,
              autovalidate: true,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter User Name';
                        }
                        if (value.trim() == "")
                          return "Only Space is Not Valid!!!";
                        return null;
                      },
                      onSaved: (value) {
                        //_employeeName = value;
                      },
                      // controller: _employeeNameController,
                      decoration: InputDecoration(
                          focusedBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(
                                  color: Colors.purple,
                                  width: 2,
                                  style: BorderStyle.solid)),
                          // hintText: "User Name",
                          labelText: "User Name",
                          icon: Icon(
                            Icons.business_center,
                            color: Colors.purple,
                          ),
                          fillColor: Colors.white,
                          labelStyle: TextStyle(
                            color: Colors.purple,
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Mobile no';
                        }
                        if (value.trim() == "")
                          return "Only Space is Not Valid!!!";
                        return null;
                      },
                      onSaved: (value) {
                        //_employeeName = value;
                      },
                      // controller: _employeeNameController,
                      decoration: InputDecoration(
                          focusedBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(
                                  color: Colors.purple,
                                  width: 2,
                                  style: BorderStyle.solid)),
                          // hintText: "Mobile No",
                          labelText: "Mobile No",
                          icon: Icon(
                            Icons.business_center,
                            color: Colors.purple,
                          ),
                          fillColor: Colors.white,
                          labelStyle: TextStyle(
                            color: Colors.purple,
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Email';
                        }
                        if (value.trim() == "")
                          return "Only Space is Not Valid!!!";
                        return null;
                      },
                      onSaved: (value) {
                        //_employeeName = value;
                      },
                      // controller: _employeeNameController,
                      decoration: InputDecoration(
                          focusedBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(
                                  color: Colors.purple,
                                  width: 2,
                                  style: BorderStyle.solid)),
                          // hintText: "Email",
                          labelText: "Email",
                          icon: Icon(
                            Icons.business_center,
                            color: Colors.purple,
                          ),
                          fillColor: Colors.white,
                          labelStyle: TextStyle(
                            color: Colors.purple,
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(Icons.business_center,
                                        color: Colors.purple),
                                    Text(_selectedDate != null? "Birth Date: $_selectedDate" : "Birth Date: "),
                                  ]
                              )
                            ]),
                        Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              RaisedButton(
                                  child: Text('DoB'),
                                  onPressed: _pickDateDialog),
                              SizedBox(height: 20),
                            ]),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(Icons.business_center,
                                        color: Colors.purple),
                                    Text("Gender:"),
                                    ]
                              )

                            ]),
                        Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text('Male'),
                              Radio(
                                value: 1,
                                groupValue: _radioSelected,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  setState(() {
                                    _radioSelected = value.hashCode;
                                    _radioVal = 'male';
                                  });
                                },
                              ),
                              Text('Female'),
                              Radio(
                                value: 2,
                                groupValue: _radioSelected,
                                activeColor: Colors.pink,
                                onChanged: (value) {
                                  setState(() {
                                    _radioSelected = value.hashCode;
                                    _radioVal = 'female';
                                  });
                                },
                              )

                            ]),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Address';
                        }
                        if (value.trim() == "")
                          return "Only Space is Not Valid!!!";
                        return null;
                      },
                      onSaved: (value) {
                        //_employeeName = value;
                      },
                      // controller: _employeeNameController,
                      decoration: InputDecoration(
                          focusedBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(
                                  color: Colors.purple,
                                  width: 2,
                                  style: BorderStyle.solid)),
                          // hintText: "Address",
                          labelText: "Address",
                          icon: Icon(
                            Icons.business_center,
                            color: Colors.purple,
                          ),
                          fillColor: Colors.white,
                          labelStyle: TextStyle(
                            color: Colors.purple,
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                            mainAxisSize: MainAxisSize.min,

                            children: <Widget>[
                              Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(Icons.business_center,
                                        color: Colors.purple),
                                    Text("Role: "),
                                  ]
                              )

                            ]),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            DropdownButton<String>(
                              value: dropdownValue,
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 24,
                              elevation: 16,
                              style: TextStyle(color: Colors.red, fontSize: 18),
                              underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),
                              onChanged: (value) {
                                setState(() {
                                  dropdownValue  = value!;
                                });
                              },
                              items: spinnerItems.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[

                              RaisedButton(
                                color: Colors.purple,
                                child: Text("Register"
                                ),
                                onPressed:  () {},
                              ),
                            ]),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            RaisedButton(
                              color: Colors.purple,
                              child: Text("Show user"
                              ),

                              onPressed:  () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

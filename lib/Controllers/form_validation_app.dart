import 'package:flutter/material.dart';

class FormValidationApp extends StatefulWidget {
  const FormValidationApp({super.key});

  @override
  _FormValidationAppState createState() => _FormValidationAppState();
}

class _FormValidationAppState extends State<FormValidationApp>{

  // we have initiated the form key with super class Formstate
  // in futre, this key will be used to identify the form instance

  final _formkey = GlobalKey<FormState>();

  String yourName='';
  String yourAge='';
  final _cities = ["Calcutta", "Delhi", "Chennai", "Bangalore"];
  String _youHaveSelected = '';
  String _displayText = '';

  @override
  void initState() {
    super.initState();
    
    _youHaveSelected = _cities[0];
  }

  TextEditingController textOfAge = TextEditingController();
  TextEditingController textOfName = TextEditingController();

  void selectedDropDownItem(String theValueSelected) {
    setState(() {
      _youHaveSelected = theValueSelected;
    });
  }

  String displayAllSelectedValue() {

    String name = textOfName.text;
    int age = int.parse(textOfAge.text);
    String city = _youHaveSelected;

    String displayAllSelectedValues = 'Your name is $name, your age is $age and you live in $city ';

    return displayAllSelectedValues; 
  }  

  void _resetButton() {

    textOfName.text = '';
    textOfAge.text = '';
    _youHaveSelected = _cities[0];
    _displayText = '';
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      //we have changed the previous container widget to form
      // since Form does not allow margin, we need to add some padding around ListView

      body: Form(
        // later this key will act as an identifier
        // and it will let us know the curent status of the form
        key: _formkey,
        child: Padding(padding: const EdgeInsets.all(8.0),

          child: ListView(children: <Widget>[
          const Padding(padding: EdgeInsets.all(10.0),
          child: Text('Type your Name, Age and Select the City form the Drop Down Menu below', style: TextStyle(fontSize: 25),
          ),
          ),
          // we will change the TextField to TextFormField so that we can use the validator

          TextFormField(keyboardType: TextInputType.text,
          controller: textOfName,
          validator: (String? validationValue){if(validationValue==null){
            return 'Please fill up the form with correct input';
          }
return null;
          },
          style: const TextStyle(fontSize: 16.0, color: Colors.blue),
          // because we are using TextFormField, and. Use the validation
          // we can customise the error style
          decoration: InputDecoration(labelText: 'Your Name',
          hintText: 'In text...',
          labelStyle: const TextStyle(fontSize: 17, color: Colors.red),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0),
          ),
          errorStyle: const TextStyle(color: Colors.deepPurple, fontSize: 20.0)
          ),
          
          ),

          const SizedBox(height: 10.0,),
          TextFormField(keyboardType: TextInputType.text,
          controller: textOfAge,
          validator: (String? validationValue){if(validationValue==null){
            return 'Please fill up the form with correct input';
          }
return null;
          },
          style: const TextStyle(fontSize: 16.0, color: Colors.blue),
          decoration: InputDecoration(labelText: 'Your Age',
          hintText: 'In number...',
          labelStyle: const TextStyle(fontSize: 17, color: Colors.red),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0),
          ),
          errorStyle: const TextStyle(color: Colors.deepPurple, fontSize: 20.0),
          ),
          ),

          const SizedBox(height: 10.0,),
          Padding(padding: const EdgeInsets.only(left: 32, top: 10.0),
          child: DropdownButton<String>(items: _cities.map((String nameOfCities){
            return DropdownMenuItem<String>(value: nameOfCities,child: Text(nameOfCities),);
          }).toList(),
          onChanged: (String? theValueSelected){selectedDropDownItem(theValueSelected??'');
          },

          value: _youHaveSelected,
          iconSize: 50.0,

          ),
          ),

          const SizedBox(height: 100.0,),
          Row(
            children: <Widget>[
              SizedBox(
                width: 150.0,
                child: ElevatedButton(child: const Text('Press', style: TextStyle(fontSize: 25, backgroundColor: Colors.white24),),
                
                onPressed: (){setState(() {
                  // if the form's current state validates, only then proceed
                  if (_formkey.currentState!.validate()){_displayText=displayAllSelectedValue();}
                });
                },
                ),
              ),

              Container(width: 25.0,),
              SizedBox(
                width: 150.0,
                child: ElevatedButton(
                  child: const Text('Reset', style: TextStyle(fontSize: 25.0),),
                  onPressed: () {setState(() {
                    _resetButton();
                  });
                  },
                ),
              )
            ],
          ),

          Padding(padding: const EdgeInsets.all(8.0),
            child: Text(_displayText,
            style: const TextStyle(fontSize: 30.0, color: Colors.blueAccent),
            ),
            )
        ],
        )
        ),
      ),
    );
  }
}
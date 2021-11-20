import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _etStudentName = TextEditingController();
  TextEditingController _etStudentPhoneNumber = TextEditingController();
  TextEditingController _etStudentAddress = TextEditingController();

  var _color1 = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Center(
              child: Text('Adhésion',
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold)),
            ),
            TextFormField(
              controller: _etStudentName,
              keyboardType: TextInputType.text,
              style: TextStyle(color: _color1),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: _color1, width: 2.0)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: _color1),
                ),
                labelText: 'Prénom',
                labelStyle: TextStyle(color: _color1),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _etStudentPhoneNumber,
              keyboardType: TextInputType.phone,
              style: TextStyle(color: _color1),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: _color1, width: 2.0)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: _color1),
                ),
                labelText: 'Nom',
                labelStyle: TextStyle(color: _color1),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _etStudentPhoneNumber, // à changer
              keyboardType: TextInputType.phone,
              style: TextStyle(color: _color1),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: _color1, width: 2.0)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: _color1),
                ),
                labelText: 'Téléphone',
                labelStyle: TextStyle(color: _color1),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _etStudentPhoneNumber, // à changer
              keyboardType: TextInputType.visiblePassword,
              style: TextStyle(color: _color1),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: _color1, width: 2.0)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: _color1),
                ),
                labelText: 'Mot de passe',
                labelStyle: TextStyle(color: _color1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 9, 0, 9),
              child: TextFormField(
                controller: _etStudentPhoneNumber, // aussi
                keyboardType: TextInputType.phone,
                style: TextStyle(color: _color1),
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: _color1, width: 2.0)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: _color1),
                  ),
                  labelText: 'Numéro carte electeur',
                  labelStyle: TextStyle(color: _color1),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child:
                  Text('Sexe', style: TextStyle(fontSize: 16, color: _color1)),
            ),
            ToggleButtons(
              color: Colors.grey,
              selectedColor: Colors.white,
              fillColor: _color1,
              selectedBorderColor: _color1,
              borderRadius: BorderRadius.circular(4),
              children: <Widget>[
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Homme')),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Femme')),
              ],
              onPressed: (int index) {
/*                   setState(() {
                      for (int buttonIndex = 0; buttonIndex < _isSelectGender.length; buttonIndex++) {
                        if (buttonIndex == index) {
                          _isSelectGender[buttonIndex] = true;
                        } else {
                          _isSelectGender[buttonIndex] = false;
                        }
                      }
                    }); */
              },
              isSelected: [true, false],
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _etStudentAddress,
              maxLines: null,
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: _color1, width: 2.0)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: _color1),
                  ),
                  labelText: 'Commune',
                  labelStyle: TextStyle(color: _color1)),
            ),
            SizedBox(height: 40),
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) => _color1,
                  ),
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
                ),
                onPressed: () {
                  //   _studentBloc.add(AddStudent(sessionId: '5f0e6bfbafe255.00218389', studentName: _etStudentName.text, studentPhoneNumber: _etStudentPhoneNumber.text, studentGender: _isSelectGender[0]?'male':'female', studentAddress: _etStudentAddress.text, apiToken: apiToken));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    'S\'inscrire',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

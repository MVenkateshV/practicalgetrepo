import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SampleBasicWidgetsExamples extends StatefulWidget {
  const SampleBasicWidgetsExamples({super.key});

  @override
  State<SampleBasicWidgetsExamples> createState() =>
      _SampleBasicWidgetsExamplesState();
}

class _SampleBasicWidgetsExamplesState
    extends State<SampleBasicWidgetsExamples> {
  List<List<String>> listsData = [
    ['Item 1', 'Item 2', 'Item 3'],
    ['Item A', 'Item B', 'Item C', 'Item D'],
    ['Item X', 'Item Y', 'Item Z'],
    ['Item P', 'Item Q', 'Item R'],
    ['Item M', 'Item N', 'Item O'],
  ];

  List<String> listsData1 = [
    'Venkatesh 1',
    'Venkatesh 2',
    'venkatesh 3',
    'venkatesh 4'
  ];

  List<Map<String, dynamic>> listsData2 = [
    {
      "key0": "assets/cock.jpg",
      "key1": 'Item 1',
      "key2": 'Item 2',
      "key3": 'Item 3'
    },
    {
      "key0": "assets/cock.jpg",
      "key1": 'Item A',
      "key2": 'Item B',
      "key3": 'Item C'
    },
    {
      "key0": "assets/cock.jpg",
      "key1": 'Item X',
      "key2": 'Item Y',
      "key3": 'Item Z'
    },
    {
      "key0": "assets/cock.jpg",
      "key1": 'Item P',
      "key2": 'Item Q',
      "key3": 'Item R'
    },
    {
      "key0": "assets/cock.jpg",
      "key1": 'Item M',
      "key2": 'Item N',
      "key3": 'Item O'
    },
    {
      "key0": "assets/cock.jpg",
      "key1": 'Item M',
      "key2": 'Item N',
      "key3": 'Item O'
    },
    {
      "key0": "assets/cock.jpg",
      "key1": 'Item M',
      "key2": 'Item N',
      "key3": 'Item O'
    },
    {
      "key0": "assets/cock.jpg",
      "key1": 'Item M',
      "key2": 'Item N',
      "key3": 'Item O'
    },
    {
      "key0": "assets/cock.jpg",
      "key1": 'Item M',
      "key2": 'Item N',
      "key3": 'Item O'
    },
  ];

  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sample Example",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 2,
              )),
          actions: const [
            Icon(Icons.add),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.access_alarm),
            )
          ],
        ),
        body: SafeArea(
            child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ///textformfield
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    filed(emailValidator),
                    filed(nameValidator),
                  ],
                ),

                ///list of list items accessing with listview.builder example
                /*Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: listsData.length,
                    itemBuilder: (context, index) {
                      return ListView.builder(
                          shrinkWrap: true,
                          itemCount: listsData[index].length,
                          itemBuilder: (context, idx) {
                            return ListTile(
                              title: Text("${listsData[index][idx]}"),
                            );
                          });
                    },
                  ),
                )*/

                ///horizontal scrolling in listview.builder with list of data accessing
                /*  SizedBox(
            width: Get.width,
            height: 100,
            child: ListView.builder(
                itemCount: listsData1.length,
                  scrollDirection:Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                      width: 200,
                      height: 100,
                      child: ListTile(title:Text("${listsData1[index]}")));
                },
            ),
        )*/

                ///list of objects like map objects accesing in flutter with the help ogf listtile
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: listsData2.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        leading: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                //add colors to colors array
                                colors: [
                                  Colors.red,
                                  Colors.yellow,
                                ],
                              ),
                            ),
                            child: Padding(
                                padding: EdgeInsets.all(4.0), // stroke
                                child: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage('https://picsum.photos/200'),
                                  radius: 50, // resize radius
                                ))),
                        title: Text(listsData2[index]['key1']),
                        subtitle: Text("User -ID"),
                        trailing: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween, // added line
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                listsData2[index]['key2'],
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                ),
                              ),
                            ]));
                  },
                ),

                ///listview
                /*   ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    Text('List 1'),
                    Text('List 2'),
                    Text('List 3'),
                  ],
                ),*/

                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      final isValid = _formKey.currentState!.validate();
                      if (isValid) {
                        ///Api call
                      }
                      Fluttertoast.showToast(
                          msg: "plz fill all details",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                    child: Text("Click me")),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )));
  }

  String? emailValidator(String? value) {
    if (value!.isEmpty ||
        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
      return 'Enter a valid email!';
    }
    return null;
  }

  String? nameValidator(String? value) {
    if (value!.isEmpty) {
      return 'Enter a valid name!';
    }
    return null;
  }

  Widget filed(String? Function(String?)? validator) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text('First Name'),
            ),
            TextFormField(
              style: TextStyle(color: Colors.black),
              onSaved: (String? value) {},
              validator: validator,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'First Name',
                labelText: 'First Name',
                labelStyle: TextStyle(color: Colors.black),
                hintStyle: TextStyle(color: Colors.black, fontSize: 16),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: const BorderRadius.all(Radius.circular(
                      10.0,
                    ))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(
                      10.0,
                    ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

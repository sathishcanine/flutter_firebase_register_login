import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trippledee/pages/college_details.dart';

import '../model/college_model.dart';
import '../services/api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  late List<CollegeModel>? _userModel = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  final user = FirebaseAuth.instance.currentUser!;

// Sign user  out method

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }


  void _getData() async {
    _userModel = (await ApiService().getUsers())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: signUserOut, icon: const Icon(Icons.logout))
      ], title: Text(user.email.toString())),
      body: _userModel == null || _userModel!.isEmpty
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: _userModel!.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () => {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CollegeDetails(item: _userModel![index])),
              ),
            },
              child: Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("College :${_userModel![index].name}",
                          style: const TextStyle(fontWeight: FontWeight.w800)),
                      const SizedBox(height: 8,),
                      Text("Website : ${_userModel![index].webPages}",
                          style: const TextStyle(fontWeight: FontWeight.w800,
                              color: Colors.blue)),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
// body: Center(child: Text("Logged in As :  ${user.email!}" )),
    );
  }
}

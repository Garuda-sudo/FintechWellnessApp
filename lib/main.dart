import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Musubi Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Firebase Connection'),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => FirebaseFirestore.instance
        //       .collection('testing')
        //       .add({'timestamp': Timestamp.fromDate(DateTime.now())}),
        // ),
        // body: StreamBuilder(
        //   stream: FirebaseFirestore.instance.collection('testing').snapshots(),
        //   builder: (
        //     BuildContext context,
        //     AsyncSnapshot<QuerySnapshot> snapshot,
        //   ) {
        //     if (!snapshot.hasData) return const SizedBox.shrink();
        //     return ListView.builder(
        //         itemCount: snapshot.data.docs.length,
        //         itemBuilder: (BuildContext context, int index) {
        //           final docData = snapshot.data.docs[index].data();
        //           final dateTime = (docData['timeStamp'] as Timestamp).toDate();
        //           return ListTile(
        //             title: Text(dateTime.toString()),
        //           );
        //         });
        //   },
        // ),
      ),
    );
  }
}

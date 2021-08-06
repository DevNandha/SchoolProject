import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pradharaj/data.dart';
import 'package:pradharaj/lesson.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home(),
    theme: ThemeData(primarySwatch: Colors.grey),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List <DataOfSubjects> sub = DataOfSubjects.getSubDetails();
  final List<DataOfLessons> les = DataOfLessons.getLesDetails();
  TextStyle bold =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        elevation: 5,
        title: Text(
          "12th Syllabus",
          style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),
        ),
        centerTitle: true,
      ),
      body:
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 10),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: sub.length,
                itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.all(7),
                      height: 100,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Lessons(sub[index].image,les[index],sub[index].subName)));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          elevation: 10,
                          child: Stack(
                            children: [
                              Opacity(
                                opacity: 0.2,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "${sub[index].image}"))),
                                ),
                              ),
                              Center(
                                child: ListTile(
                                  title: Text(
                                    "${sub[index].subName}",
                                    style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold,fontSize: 15),
                                  ),
                                  subtitle: Text("12th Portion ",style: GoogleFonts.ubuntu()),
                                  trailing: Column(
                                    children: [
                                      Container(
                                          height: 15,
                                          width: 50,
                                          child: FittedBox(
                                              child: Text(
                                            "Number of",
                                            style: bold,
                                          ))),
                                      Container(
                                          height: 15,
                                          width: 35,
                                          child: FittedBox(
                                              child: Text(
                                            "chapters",
                                            style: bold,
                                          ))),
                                      Container(child: Text("${les[index].lesNum.length}",style: GoogleFonts.ubuntu(),))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
          ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:pradharaj/data.dart';
import 'package:google_fonts/google_fonts.dart';


class Lessons extends StatelessWidget {
  final String subName;
 final String imageLink;
 final DataOfLessons obj;
  Lessons(this.imageLink,this.obj,this.subName);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(color: Colors.white,icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: (){
          Navigator.pop(context);
        },),
        backgroundColor: Colors.black54,
        title: Text("${subName}",style: GoogleFonts.ubuntu(color: Colors.white),),
      ),
      body: ListView.builder(itemCount: obj.lessonName.length,itemBuilder: (context,index)=>Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
        height: 100,
        margin: EdgeInsets.all(10),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Stack(
            children: [
              Opacity(
                opacity: 0.2,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      image: NetworkImage(imageLink),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              Center(
                child: ListTile(
                  tileColor: Colors.transparent,
                  title: Row(
                    children: [
                      Text("${obj.lesNum[index]}.",style: GoogleFonts.roboto(fontWeight: FontWeight.bold),),
                      SizedBox(width: 20,),
                      Flexible(child: Text("${obj.lessonName[index]}",style: GoogleFonts.ubuntu(shadows: [Shadow(offset: Offset(2,3),blurRadius: 3,color: Colors.black26)]),)),
                    ],
                  ),

                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

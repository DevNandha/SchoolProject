class DataOfSubjects{
   String subName;
   int numOfLessons;
   String image;
   DataOfSubjects(this.numOfLessons,this.subName,this.image);
   static List<DataOfSubjects> getSubDetails()=>[
     DataOfSubjects(10,"Computer Science","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnKAV3Bh7iB17vLG6pxYaC9Da_svHNkGe2WCImdi2qRLjN6YgYGO7rNSLihTcAKweVUxY&usqp=CAU"),
     DataOfSubjects(18, "Maths","https://cdn3.vectorstock.com/i/1000x1000/43/82/math-formulas-and-crayons-drawn-on-a-chalkboard-vector-21724382.jpg"),
     DataOfSubjects(15, "Physics","https://image.shutterstock.com/image-vector/sketch-physics-lab-working-little-260nw-1810404688.jpg"),
     DataOfSubjects(10, "Chemistry","https://www.thoughtco.com/thmb/XuJo7-P3gRDQshW69iFDNkFdS1U=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-545286316-433dd345105e4c6ebe4cdd8d2317fdaa.jpg"),
     DataOfSubjects(10, "English","https://st2.depositphotos.com/3591429/5244/i/600/depositphotos_52449961-stock-photo-peoples-arms-holding-word-english.jpg"),
     DataOfSubjects(10, "Tamil","https://pbs.twimg.com/media/CKE3Pc-UwAAVizg.png"),
   //  DataOfSubjects(10, "French","https://image.shutterstock.com/image-vector/french-language-hand-drawn-doodles-260nw-1255488661.jpg")
  ];
}
class DataOfLessons{
  List<String> lessonName;
  List<int> lesNum;
  DataOfLessons(this.lesNum,this.lessonName);
  static List<DataOfLessons> getLesDetails()=>[
    DataOfLessons([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16],["Function","Data Abstraction","Scoping","Algorithmic Strategies","Python Variables and Operators","Control Structures",
        "Python Functions","Strings and String Manipulations","Lists,Tuples,Sets and Dictionary"
    ,"Python Classes and Objects","Database Concepts","Structured Query Language","Python and CSV files",
      "Importing C++ programs in Python ","Data Manipulation through SQL","Data Visualization using Pyplot : line chart,Pie,chartand bar chart"
    ]),
    DataOfLessons([1,2,3,4,5,6,7,8,9,10,11,12], ["Applications of Matrices and Determinants","Complex Numbers",
    "Theory of Equations","Inverse Trigonometric Functions","Two Dimensional Analytical Geometry","Applications of Vector Algebra",
    "Applications of Differential Calculus","Differentials and Partial Derivatives Ex 8.1","Applications of Integration",
    "Ordinary Differential Equations","Probability Distributions","Discrete Mathematics"],),
    DataOfLessons([1,2,3,4,5,6,7,8,9,10,11], ["Electrostatics","Current Electricity","Magnetism and Magnetic Effects of Electric Current",
      "Electromagnetic Induction and Alternating Current","Electromagnetic Waves","Optics","Dual Nature of Radiation and Matter",
    "Atomic and Nuclear Physics","Semiconductor Electronics","Communication Systems","Recent Developments in Physics"]),
    DataOfLessons([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], ["Metallurgy","p-Block Elements – I","p-Block Elements – II","Transition and Inner Transition Elements","Coordination Chemistry",
    "Solid State","Chemical Kinetics","Ionic Equilibrium","Electro Chemistry","Surface Chemistry","Hydroxy Compounds and Ethers",
    "Carbonyl Compounds and Carboxylic Acids","Organic Nitrogen Compounds","Biomolecules","Chemistry in Everyday Life"],),
    DataOfLessons([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18], ["Two Gentlemen of Verona","A Nice Cup of Tea","In Celebration of Being Alive","The Summit"
    ,"The Status of Tamil as a Classical Language","On the Rule of the Road","The Castle","Our Casuarina Tree","All the World’s a Stage"
    ,"Ulysses","A Father to his Son","Incident of the French Camp","God Sees the Truth, But Waits","Life of Pi",
    "The Hour of Truth (Play)","The Midnight Visitor","All Summer in a Day","Remember Caesar (Play)"],),
    DataOfLessons([1,2,3,4,5,6,7,8], ["உயிரினும் ஓம்ப படும்","பொய்யென பெய்யும் மழை","சூத்திரதா கண்ணே உள","செல்வதுள் எல்லம் தலை",
    "நாடென்ப நாட்டின் தலை","சிறுகை அளவிய கூல்","அருமை உடைய செயல்","எல்ல உயிரும் தொழும்"]),
   // DataOfLessons([10], []),
   //DataOfLessons([10], []),


  ];
}
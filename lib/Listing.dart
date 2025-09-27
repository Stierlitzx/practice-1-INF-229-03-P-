import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice_1/archive.dart';

class Listing extends StatelessWidget {
  final String title;
  final String company;
  final String salary;
  final String payType;
  final String logo;
  final JobStatusType statusType;

  const Listing({
    super.key,
    required this.title,
    required this.company,
    required this.salary,
    required this.payType,
    required this.logo,
    required this.statusType,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.transparent,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    
    return Scaffold(
      backgroundColor: Color(0xffb8dacd),
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back, 
            color: Colors.black87,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Image(
              image: AssetImage("assets/favorite_border.png"),
              width: 20.0,
              height: 20.0,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
              padding: const EdgeInsets.only(top: 24.0, left: 24.0, bottom: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[ 
                    Image(
                      image: AssetImage(logo),
                      width: 60.0,
                      height: 60.0,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        fontSize: 24.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      company,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                        color: Color(0xff434545),
                      ),
                    ),
                    Text(
                      "Posted on 3 March",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                        color: Color(0xff434545),
                      ),
                    ),
                  ]
                ),
              ),
            ),
            SizedBox(height: 5.0,),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsetsGeometry.all(24.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                              "APPLY BEFORE",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0,
                                color: Color(0xff434545),
                                ),
                              ),
                              SizedBox(height: 6.0,),
                              Text(
                                "03 June, 2022",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                  color: Colors.black,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start, 
                            children: [
                              Text(
                              "JOB NATURE",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0,
                                color: Color(0xff434545),
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffb8dacd),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0, bottom: 2.0),
                                  child: Text(
                                    "Full-time",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                              "SALARY RANGE",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0,
                                color: Color(0xff434545),
                                ),
                              ),
                              SizedBox(height: 6.0,),
                              Text(
                                salary,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                  color: Colors.black,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start, 
                            children: [
                              Text(
                              "JOB LOCATION",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0,
                                color: Color(0xff434545),
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                              "Work from anywhere",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0,
                                color: Color(0xff434545),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 5.0),

            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "JOB DESCRIPTION ",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        color: Color(0xff434545),
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      "Can you bring creative human-centered ideas to life and make great things happen beyond what meets the eye?\nWe believe in teamwork, fun, complex projects, diverse perspectives, and simple solutions. How about you? We're looking for a like-minded",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      children: [
                        Text(
                          "See more",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            color: Color(0xff0FAC74),
                            fontSize: 12.0,
                          ),
                        ),
                        SizedBox(width: 3.0),
                        Image(
                          image: AssetImage("assets/dropdown.png"),
                          fit: BoxFit.cover,
                          width: 6.0,
                          height: 6.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 5.0), 

            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsetsGeometry.only(left: 24.0, top: 24.0, bottom: 24.0, right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ROLES AND RESPONSIBILITIES",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        color: Color(0xff434545),
                        fontSize: 12.0,
                      ),
                    ),

                    SizedBox(height: 16.0),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        
                        Row(
                          children: [
                            Text(
                              "  •  \n",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Drive the design process with cross-functional partners and design leads.",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "  •  \n",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Design new experiences and patterns in a complex ecosystem and across platforms.",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "  •  \n",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Partner with UX Research and Content Strategists through the design process.",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "  •  \n",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Work closely with Product and Engineering to ensure a high quality implementation.",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
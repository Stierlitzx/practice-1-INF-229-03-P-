import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice_1/Listing.dart';


class Archive extends StatelessWidget {
  const Archive({super.key});

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
      backgroundColor: const Color(0xffb8dacd),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      "assets/Avatar.png",
                      width: 50.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Image.asset(
                    "assets/notification.png",
                    width: 26.0,
                    height: 26.0,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 10.0),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DESIGNER",
                      style: TextStyle(
                        color: Color(0xff434545),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    
                    JobCard(
                      title: 'Junior UX Designer',
                      company: 'Canva',
                      salary: '\$40-60k/yearly',
                      payType: 'Paystack',
                      logo: 'assets/canva.png',
                    ),
                    
                    const SizedBox(height: 12),
                    
                    JobCard(
                      title: 'Junior Product Designer',
                      company: 'Canva',
                      salary: '\$40-60k/yearly',
                      payType: 'Paystack',
                      logo: 'assets/canva.png',
                      statusType: JobStatusType.applied,
                    ),
                    
                    const SizedBox(height: 12),
                    
                    JobCard(
                      title: 'Middle motion Designer',
                      company: 'Canva',
                      salary: '\$40-60k/yearly',
                      payType: 'Paystack',
                      logo: 'assets/canva.png',
                      statusType: JobStatusType.expiresSoon,
                    ),
                    
                    const SizedBox(height: 24),
                    
                    const SectionHeader(title: 'ANDROID'),
                    const SizedBox(height: 12),
                    
                    JobCard(
                      title: 'Junior Android developer',
                      company: 'Kotlin, Java',
                      salary: '\$40-60k/yearly',
                      payType: 'Paystack',
                      logo: 'assets/canva.png',
                    ),
                    
                    const SizedBox(height: 12),
                    
                    JobCard(
                      title: 'Middle Android developer',
                      company: 'Kotlin, Java',
                      salary: '\$40-60k/yearly',
                      payType: 'Paystack',
                      logo: 'assets/canva.png',
                      statusType: JobStatusType.expiresSoon,
                    ),
                    
                    const SizedBox(height: 12),
                    
                    JobCard(
                      title: 'Junior UX Designer',
                      company: 'Canva',
                      salary: '\$40-60k/yearly',
                      payType: 'Paystack',
                      logo: 'assets/canva.png',
                      statusType: JobStatusType.expiresSoon,
                    ),
                    
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  
  const SectionHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.black54,
        letterSpacing: 1.2,
        fontFamily: 'Poppins',
      ),
    );
  }
}

enum JobStatusType { none, applied, expiresSoon }

class JobCard extends StatelessWidget {
  final String title;
  final String company;
  final String salary;
  final String payType;
  final String logo;
  final JobStatusType statusType;

  const JobCard({
    super.key,
    required this.title,
    required this.company,
    required this.salary,
    required this.payType,
    required this.logo,
    this.statusType = JobStatusType.none,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Listing(
              title: title,
              company: company,
              salary: salary,
              payType: payType,
              logo: logo,
              statusType: statusType,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 16.0, left: 16.0, top: 16.0),
        decoration: BoxDecoration(
          color: Colors.white,  
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 24.0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        
        child: Column(
          children: [
            Row(
              children: [
                Image(
                  image: AssetImage("assets/canva.png"),
                  width: 34.0,
                  height: 34.0,
                  fit: BoxFit.cover,
                  alignment: AlignmentGeometry.topCenter,
                ),
                
                const SizedBox(width: 12),
                
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0D0D0D),
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        company,
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: Color(0xff434545),
                          fontSize: 12.0
                        ),
                      ),
                    ],
                  ),  
                ),
                
                if (statusType != JobStatusType.none)
                  _buildStatusBadge(),
              ],
            ),
            SizedBox(height: 11.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 4.0, bottom: 4.0, right: 8.0, left: 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xff12AA73).withValues(alpha: 0.18),
                  ),
                  child: Text(
                    payType,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xff53595F),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),   
                Padding(
                  padding: const EdgeInsets.only(right: 16.0), 
                  child: Text(
                    salary,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                      color: Color(0xff434545),
                    ),
                  ),
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusBadge() {
    String text;
    Color backgroundColor;
    Color textColor;
    String icon;

    switch (statusType) {
      case JobStatusType.applied:
        text = 'Applied';
        backgroundColor = Color(0xff07864B);
        textColor = Colors.white;
        icon = "assets/done_circular.png";
        break;
      case JobStatusType.expiresSoon:
        text = 'Expires Soon';
        backgroundColor = Color(0xffDAA400);
        textColor = Colors.white;
        icon = "assets/info.png";
        break;
      default:
        return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4),
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
        child: Row(
          children: [
            Image(
              image: AssetImage(icon,),
              height: 12.0,
              width: 12.0,
              fit: BoxFit.cover,
            ),
      
            SizedBox(width: 4.0,),
      
            Text(
              text,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: textColor,
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
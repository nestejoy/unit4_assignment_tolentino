import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyProfileApp());
}

double avatarRadius = 40.0;

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75.0),
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 176, 196, 177),
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 140.0, top: 20.0), 
                  child: Text(
                    'Neste Joy Tolentino',
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 160.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

             Row(
              children: [
                CircleAvatar(
                  radius: avatarRadius, 
                  backgroundImage: AssetImage('assets/profilePicture.png'),
                ),
                SizedBox(width: 50),
                Text(
                  'Neste Joy Tolentino',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
              SizedBox(height: 20),

            Container(
              width: 800,
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
                margin:const EdgeInsets.symmetric(horizontal: 40, vertical: 3),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(116, 247, 225, 215), 
                  borderRadius: BorderRadius.circular(10.0),
                ),
              child: InfoRow(icon: Icons.calendar_month, label: 'Birthday', data: 'May 26, 2004'),
            ),

            Container(
               width: 800,
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
                margin:const EdgeInsets.symmetric(horizontal: 40, vertical: 3),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(116, 247, 225, 215), 
                  borderRadius: BorderRadius.circular(10.0),
                ),
              child: InfoRow(icon: Icons.email, label: 'Email', data: 'nestejoytolentino@gmail.com'),
            ),

            Container(
              width: 800,
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
                margin:const EdgeInsets.symmetric(horizontal: 40, vertical: 3),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(116, 247, 225, 215), 
                  borderRadius: BorderRadius.circular(10.0),
                ),
              child: InfoRow(icon: Icons.location_on, label: 'Address', data: 'Iloilo, Philippines'),
            ),

            Container(
               width: 800,
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
                margin:const EdgeInsets.symmetric(horizontal: 40, vertical: 3),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(116, 247, 225, 215), 
                  borderRadius: BorderRadius.circular(10.0),
                ),
              child: InfoRow(icon: Icons.favorite, label: 'Hobbies', data: 'Reading, Sleeping'),
            ),

            Container(
               width: 800,
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
                margin:const EdgeInsets.symmetric(horizontal: 40, vertical: 3),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(116, 247, 225, 215), 
                  borderRadius: BorderRadius.circular(10.0),
                ),
              child: InfoRow(icon: Icons.school, label: 'Major', data: 'Information Technology'),
            ),

              SizedBox(height: 20),

             Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30.0), 
                child: Text(
                  'My Biography',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              SizedBox(height: 15, width: 30,),

              Container(
                width: 800,
                padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5),
                margin:const EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(249, 222, 219, 210), 
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Text(
                  'My name is Neste, and I am an Information Technology student specializing in Software Technology. I '
                  'm focusing on mastering Flutter to extend my abilities in developing apps '
                  'and have an interest in innovative design techniques for websites and applications.',
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String data;

  InfoRow({required this.icon, required this.label, required this.data});

  @override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
    child: Row(
      children: [
        Icon(icon, color: const Color.fromARGB(255, 74, 87, 89)),
        SizedBox(width: 30),
        Expanded(
          child: Row( 
            mainAxisAlignment: MainAxisAlignment.start, 
            children: [
              Text(
                '$label:',
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              SizedBox(width: 35),
              Text(
                data,
                style: GoogleFonts.poppins(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
}

import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            //picture of the doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(37.5),
              child: Image.asset(
                'lib/images/doctor-1.jpg',
                height:75,
              ),
            ),
            SizedBox(height: 10,),
            // rating
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow[600],),
                Text("4.8")],
            ),
            SizedBox(height: 4,),
            //doctor name
            Text("Dr. John Doe", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            SizedBox(height: 4,),
            //doctor title
            Text("Therapistm 7 y.e.")
          ],
        ),
      ),
    );
  }
}

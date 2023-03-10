import 'package:doctor_app/HOME/constent.dart';

import 'package:doctor_app/HOME/models.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:doctor_app/Auth/Controller.dart';

import '../Card/Doctor_card_requset.dart';

class DoctorResponse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double s = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.only(right: kDefaultPadding),
                    icon: Icon(
                      Icons.arrow_back_ios_sharp,
                    ),
                    onPressed: () {
                      Authcontroller.instance.gohome();
                    },
                  ),
                  Text(
                    "Back",
                    style: GoogleFonts.alike(
                        textStyle:
                            TextStyle(fontSize: 15, color: Colors.black87)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 44,
            ),
            Container(
              // margin: EdgeInsetsDirectional.only(start: 19),
              width: s * 0.8,
              padding: EdgeInsetsDirectional.only(start: 18),
              height: 30,
              decoration: BoxDecoration(
                color: Colors.teal.shade100,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                  topLeft: Radius.circular(18),
                ),
              ),
              child: Text(
                "All Reservation response you will see It here .",
                style: GoogleFonts.alumniSans(
                    textStyle: TextStyle(fontSize: 20, color: Colors.black87)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                  topLeft: Radius.circular(18),
                ),
                color: Colors.grey.shade300,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 12,
                      color: Colors.black12),
                ],
              ),
              //   margin: EdgeInsetsDirectional.only(start: 7),
              height: y * 0.7,
              width: s * 0.9,
              child: Container(
                child: ListView.builder(
                    itemCount: ResponseIT.length,
                    itemBuilder: (context, index) => Doctor_Card_Requst(
                          ResponeIT: ResponseIT[index],
                          y: y,
                          s: s,
                        )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

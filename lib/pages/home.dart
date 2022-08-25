import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:socialappui/utils/constant.dart';
import 'package:socialappui/widget/status_user.dart';

import '../widget/post_user.dart';

class UserHome extends StatelessWidget {
  final List abonne = [
    ['kevin Nimi', 'https://images.pexels.com/photos/6147209/pexels-photo-6147209.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'],
     ['kevin Nimi', 'https://images.pexels.com/photos/6147209/pexels-photo-6147209.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'],
      ['kevin Nimi', 'https://images.pexels.com/photos/6147209/pexels-photo-6147209.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'],
       ['kevin Nimi', 'https://images.pexels.com/photos/6147209/pexels-photo-6147209.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'],
        ['kevin Nimi', 'https://images.pexels.com/photos/6147209/pexels-photo-6147209.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'],
  ];

  // ]['kevin', 'nimi', 'ngwe', 'sisi', 'vivi', 'keke'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(
            FontAwesomeIcons.bell,
            color: Colors.black,
          ),
          title: Text('Home', style: TextStyle(color: Colors.black)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.photo_camera,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
             //padding: EdgeInsets.symmetric(vertical:20),
              height: 130,
              color: Colors.grey[200],
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: abonne.length,
                  itemBuilder: (context, index) {
                    return StatutUser(userName: abonne[index][0],
                    imagestorie: abonne[index][1],);
                  }),
            ),

            SizedBox(height: 20),

            UserPost(
              userProfil: 'https://images.pexels.com/photos/8977598/pexels-photo-8977598.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              namepost: 'kevin',
              ville: 'belgique',
              lien:
                  'https://images.pexels.com/photos/8977598/pexels-photo-8977598.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            ),

            UserPost(
              userProfil: 'https://images.pexels.com/photos/8977598/pexels-photo-8977598.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              namepost: 'Jordan ',
              ville: 'Kinshasa',
              lien:
                  'https://images.pexels.com/photos/1006222/pexels-photo-1006222.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            ),

            UserPost(
              userProfil: 'https://images.pexels.com/photos/8977598/pexels-photo-8977598.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              namepost: 'kevin',
              ville: 'belgique',
              lien:
                  'https://thefilmstage.com/wp-content/uploads/2022/03/The-Worst-Person-in-the-World-1.jpeg',
            ),

            UserPost(
              userProfil: 'https://images.pexels.com/photos/8977598/pexels-photo-8977598.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              namepost: 'kevin',
              ville: 'belgique',
              lien:
                  'https://thefilmstage.com/wp-content/uploads/2022/03/The-Worst-Person-in-the-World-1.jpeg',
            ),

            UserPost(
              userProfil: 'https://images.pexels.com/photos/8977598/pexels-photo-8977598.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              namepost: 'kevin',
              ville: 'belgique',
              lien:
                  'https://thefilmstage.com/wp-content/uploads/2022/03/The-Worst-Person-in-the-World-1.jpeg',
            ),

            UserPost(
              userProfil: 'https://images.pexels.com/photos/8977598/pexels-photo-8977598.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              namepost: 'kevin',
              ville: 'belgique',
              lien:
                  'https://thefilmstage.com/wp-content/uploads/2022/03/The-Worst-Person-in-the-World-1.jpeg',
            ),



            //kuna
          ],
        )));
  }
}

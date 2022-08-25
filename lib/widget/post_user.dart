import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserPost extends StatelessWidget {
  final String namepost;
  final String ville;
  final lien;
   final userProfil;

  const UserPost({Key? key, required this.namepost,
  required this.ville,
  required this.lien,
  required this.userProfil,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 40,
                      width: 40,
                      child: CachedNetworkImage(imageUrl: userProfil,
                      fit: BoxFit.cover,),
                      decoration: BoxDecoration(
                          color: Colors.grey[300], shape: BoxShape.circle),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        namepost,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(ville)
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz),
            ],
          ),
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(20),
                color: Colors.grey[400],
              ),
             child: CachedNetworkImage(imageUrl: lien,
             fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.blue),
                      SizedBox(width: 10),
                      Text('22.4k')
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.commentDots,
                      ),
                      SizedBox(width: 10),
                      Text('2.4k')
                    ],
                  ),
                ],
              ),

               Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.share,
                      ),
                      SizedBox(width: 10),
                      Text('Send tip')
                    ],
                  ),
                  
            ],
          ),

SizedBox(height: 20),
        ],
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatutUser extends StatelessWidget {
  final String userName;
  final imagestorie;
  const StatutUser(
      {Key? key, required this.userName, required this.imagestorie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            
             borderRadius: BorderRadius.circular(50),
             
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
               
                
                //color: Colors.grey[400],
              ),
              child:
                  CachedNetworkImage(imageUrl: imagestorie, fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 10),
          Text(
            userName,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}

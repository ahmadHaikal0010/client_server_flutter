import 'package:client_server_flutter/model/user_model.dart';
import 'package:flutter/material.dart';

class DetailUserView extends StatelessWidget {
  final ModelUsers user;
  const DetailUserView({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail User')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.name ?? '',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.purple,
            ),
          ),
          Text(user.username ?? ''),
          Text(user.email ?? ''),
          Text(
            'Address:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(user.address.street ?? ''),
          Text(user.address.suite ?? ''),
          Text(user.address.city ?? ''),
          Text(user.address.zipcode ?? ''),
          Text(
            'Geo:',
            style: TextStyle( fontSize: 13),
          ),
          Text(user.address.geo.lat ?? ''),
          Text(user.address.geo.lng ?? ''),
          Text(user.phone ?? ''),
          Text(user.website ?? ''),
          Text(
            'Company:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(user.company.name ?? ''),
          Text(user.company.catchPhrase ?? ''),
          Text(user.company.bs ?? ''),
        ],
      ),
    );
  }
}

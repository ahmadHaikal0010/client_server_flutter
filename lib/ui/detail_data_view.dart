import 'package:client_server_flutter/model/model_data_user.dart';
import 'package:flutter/material.dart';

class DetailDataView extends StatelessWidget {
  final DataUser listData;
  const DetailDataView({super.key, required this.listData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Data User')),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                listData.avatar ?? '',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
              ),
            ),
            SizedBox(height: 10),
            Text(
              '${listData.firstName} ${listData.lastName}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 5),
            Text(
              listData.email ?? '',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

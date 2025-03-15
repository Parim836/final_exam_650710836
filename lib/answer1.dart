import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String email;
  final String imageUrl;

  const ProfileCard({
    required this.name,
    required this.email,
    required this.imageUrl,
  
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(radius: 40, backgroundImage: NetworkImage(imageUrl)),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(email, style: TextStyle(fontSize: 14, color: Colors.grey)),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue),
            title: Text("การตั้งค่า"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.key, color: Colors.blue),
            title: Text("เปลี่ยนรหัสผ่าน"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip, color: Colors.blue),
            title: Text("ความเป็นส่วนตัว"),
            onTap: () {},
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("แก้ไขโปรไฟล์")),
              );
            },
            child: Text('แก้ไขโปรไฟล์'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("ออกจากระบบ")),
              );
            },
            child: Text('ออกจากระบบ'),
          ),
        ],
      ),
    );
  }
}

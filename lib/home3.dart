import 'package:flutter/material.dart';

#name : muaazshoaib
# password : muaaz.shoaib
class UserProfileScreen extends StatelessWidget {
  final String name;
  final String introduction;
  final int followers;
  final int following;
  final bool isFollowing;

  UserProfileScreen({
    required this.name,
    required this.introduction,
    required this.followers,
    required this.following,
    required this.isFollowing,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(
                  Icons.account_circle,
                  size: 80,
                  color: Colors.purple,
                ),
                SizedBox(width: 16),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text('Followers: $followers'),
                SizedBox(width: 16),
                Text('Following: $following'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your logic for "Hire me" button
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: Text('Hire me'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    // Add your logic for "Follow" button
                  },
                  style: ElevatedButton.styleFrom(
                    primary: isFollowing ? Colors.grey : Colors.green,
                  ),
                  child: Text(isFollowing ? 'Following' : 'Follow'),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                introduction,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz2/home3.dart';

# name : muaaz shoaib
# password : muaaz.shoaib
class AccountScreen extends StatelessWidget {
  // List of friends' names and emails (you can replace this with your actual data)
  final List<Map<String, String?>> friends = [
    {'name': 'Abdullah Mazher', 'email': 'abd@yahoo.com'},
    {'name': 'Syed Fraz', 'email': 'syedfraz@gmail.com'},
    {'name': 'Ali Akbar', 'email': 'akbar.ali@gmail.com'},
    {'name': 'Saad Haider', 'email': 'saad@gmail.com'},
    {'name': 'Aftab Ali', 'email': 'aftab@gmail.com'},
    {'name': 'Umar Ghous', 'email': 'umar@gmail.com'},
    {'name': 'Hafiz Yasir', 'email': 'h.yasir@gmail.com'},
    {'name': 'Hussnain Choudary', 'email': 'h.c@gmail.com'},
    {'name': 'Abbas', 'email': 'abbas@gmail.com'},
    {'name': 'Abdul Mateen', 'email': 'abd_m@gmail.com'},
    // Add more friends as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friends'),
      ),
      body: Column(
        children: friends.map((friend) {
          return FriendListItem(friend: friend);
        }).toList(),
      ),
    );
  }
}

class FriendListItem extends StatefulWidget {
  final Map<String, String?> friend;

  FriendListItem({required this.friend});

  @override
  _FriendListItemState createState() => _FriendListItemState();
}

class _FriendListItemState extends State<FriendListItem> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = true;
        });

        Future.delayed(Duration(milliseconds: 500), () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserProfileScreen(
                name: widget.friend['name'] ?? '',
                introduction: 'Hi i am a professional flutter developer. Hire me for your Project...!',
                followers: 1000, // Replace with the actual number of followers
                following: 2000, // Replace with the actual number of following
                isFollowing: true, // Replace with the actual following status
              ),
            ),
          );
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          border: Border.all(
            color: isTapped ? Colors.red : Colors.transparent,
          ),
        ),
        child: ListTile(
          leading: Icon(
            Icons.account_circle,
            size: 40,
            color: Colors.blue,
          ),
          title: Text(widget.friend['name'] ?? ''),
          subtitle: Text(
            widget.friend['email'] ?? '',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          trailing: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            transform: Matrix4.rotationZ(isTapped ? 3.1415926 : 0),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

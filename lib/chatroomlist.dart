import 'package:circuit_flutter/chatroom.dart';
import 'package:flutter/material.dart';

class ChatRoomList extends StatelessWidget {
  const ChatRoomList({super.key});
  static const String content = 'asdf';

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatRoom()),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.black.withOpacity(0.1)),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Image(
                    image: AssetImage('img1.png'),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '이름',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 15),
                        ),
                        Text(
                          content,
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  child: Text(
                    '오전 90:13',
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.4)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

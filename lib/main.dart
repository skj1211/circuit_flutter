import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ChatPage(),
        bottomNavigationBar: MyBanner(),
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          NavBar(),
          Expanded(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 25, bottom: 25),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '채팅',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 20),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Icon(Icons.search, size: 30),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 20),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Icon(Icons.forum, size: 30),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Icon(Icons.add_comment, size: 30),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ChatList(),
                        ChatList(),
                        ChatList(),
                        ChatList(),
                        ChatList(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 채팅목록
class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        '채팅내용~~~이 길어지면 어떻게 될까?ㅁㄴㅇㄹ홈ㄴㅇㄹ',
                        style: TextStyle(
                            fontSize: 13, color: Colors.black.withOpacity(0.7)),
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
    );
  }
}

// 광고배너
class MyBanner extends StatelessWidget {
  const MyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: SizedBox(
          height: 150,
          child: Row(
            children: [
              Image(image: AssetImage('img1.png')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '여기는 광고배너',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '브라운 이미지',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 네비 바
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      height: double.infinity,
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    mouseCursor: MaterialStateProperty.all<MouseCursor>(
                        SystemMouseCursors.click),
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                  ),
                  child: Icon(Icons.person, size: 35),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Icon(Icons.chat_bubble_outline, size: 35),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Icon(Icons.more_horiz, size: 35),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 30),
                child: Icon(Icons.notifications_none, size: 35),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 30),
                child: Icon(Icons.settings, size: 35),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//  친구 목록
class FriendPage extends StatelessWidget {
  const FriendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

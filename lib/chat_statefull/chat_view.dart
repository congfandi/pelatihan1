import 'package:aberchat/aberchat.dart';
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];
  final String appId = "631ae2ed3a4f071fd104365a";
  final String apiKey =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiZmFiMGNkYWItMDA3My00ZDY0LTg4OTItYjNlODg4YWMyYTJkIiwiaWF0IjoxNjYyNzA2NDEzLCJhdWQiOiJodHRwOi8vbG9jYWxob3N0In0.0lBM1iZkfcdC5yXL3y5qnFYpwKvtT20-s0W2WsBe02w";

  void _sendMessage() {
    setState(() {
      _messages.add(_controller.text);
      _controller.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat View'),
      ),
      body: RoomPage(
        aberchatConfig:
            AberchatConfig(appId: appId, apiKey: apiKey, roomId: "sample-room"),
        onReceivedEvent: (event) {},
        // child: Column(
        //   children: [
        //     Expanded(
        //       child: ListView.builder(
        //         itemBuilder: (c, i) {
        //           return Text(_messages.reversed.elementAt(i));
        //         },
        //         reverse: true,
        //         itemCount: _messages.length,
        //       ),
        //     ),
        //     Container(
        //       color: Colors.grey,
        //       child: Row(
        //         children: [
        //           Expanded(
        //             child: TextField(
        //               controller: _controller,
        //               decoration: const InputDecoration(
        //                 hintText: 'Type your message',
        //               ),
        //             ),
        //           ),
        //           IconButton(
        //             onPressed: _sendMessage,
        //             icon: const Icon(Icons.send),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

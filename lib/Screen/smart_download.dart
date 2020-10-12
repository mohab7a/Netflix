import 'package:flutter/material.dart';

class SmartDownload extends StatefulWidget {
  static String routeName ="SmartDownload";
  @override
  _SmartDownloadState createState() => _SmartDownloadState();
}

class _SmartDownloadState extends State<SmartDownload> {
  bool switchValue = true;
  static const answerTextStyle = TextStyle(
    fontSize: 14,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          "Smart Downloads",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          Switch(
              activeColor: Colors.white,
              activeTrackColor: Colors.blue,
              inactiveTrackColor: Colors.grey,
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              })
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            QuestionTitle(
              question: "What is Smart Downloads?",
            ),
            Text(
                "Spend less time managing downloads and more time \nwatching.Smart Downloads gets the next episodes \ndownloaded for you and deletes those you've already \nWatched.Only on Wi-Fi.",
                style: answerTextStyle),
            QuestionTitle(
              question: "How does it Work? ",
            ),
            OrderAnsNum(
                answer: "1.You finish watching an episode you've\ndownloaded.",
                answerTextStyle: answerTextStyle),
            OrderAnsNum(
                answer:
                    "2.The next time you're on Wi-Fi, the app \nautomatically deletes that episode and downloads\nthe next available one.",
                answerTextStyle: answerTextStyle),
            OrderAnsNum(
                answer: "3.Once the download completes,you're ready to \nwatch",
                answerTextStyle: answerTextStyle),
            QuestionTitle(
              question: "How does it use phone space?",
            ),
            Text(
              "Smart Downloads deletes an episode for ever\nepisode it downloads. it won't take up extra space\nbeyond what you've already downloaded.",
              style: answerTextStyle,
            ),
            QuestionTitle(
              question: "Does Smart Downloads use my\ncellular date?",
            ),
            Text(
              "Nope.it only works when you're connected to WiFi.",
              style: answerTextStyle,
            )
          ],
        ),
      ),
    );
  }
}

class OrderAnsNum extends StatelessWidget {
  const OrderAnsNum({this.answerTextStyle, this.answer});
  final String answer;
  final TextStyle answerTextStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 8),
      child: Text(answer, style: answerTextStyle),
    );
  }
}

class QuestionTitle extends StatelessWidget {
  const QuestionTitle({this.question});
  final String question;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, bottom: 8),
      child: Text(
        question,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

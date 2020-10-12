import 'package:flutter/material.dart';

import 'dealoption.dart';

class DealCard extends StatefulWidget {
  DealCard({this.radioItem,this.cardNum,this.dealTitle,this.priceText,this.cardName,this.chipText,this.userNum,this.subtitle,this.color});
   String radioItem;
   String cardNum;
  String dealTitle;
  String priceText;
  String cardName;
  String chipText;
  String userNum;
  String subtitle;
  Color color;


  @override
  _DealCardState createState() => _DealCardState();
}

class _DealCardState extends State<DealCard> {


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 3,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10, vertical: 15),
              child: Row(
                children: [
                  Transform.scale(
                    scale: 1.25,
                    child: Radio(
                      activeColor: Colors.blue,
                      hoverColor: Colors.blue,
                      value: widget.cardNum,
                      autofocus: true,
                      groupValue: widget.radioItem,
                      onChanged: (value) {
                        setState(() {
                          widget.radioItem = value;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                        widget.dealTitle,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.priceText,
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Divider(
                thickness: 1,
                color: Colors.grey.shade300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                       widget.cardName,
                        style: TextStyle(
                            color:  widget.color,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24),
                        child: Chip(
                            backgroundColor: widget.color,
                            label: Text(
                              widget.chipText,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      Text(
                     widget.userNum,
                        style: TextStyle(
                            color:  widget.color,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text(
                  widget.subtitle,
                      style: TextStyle(
                    fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ExpansionTile(
                trailing: Icon(
                  Icons.expand_more,
                  color:  widget.color,
                ),
                title: Text(
                  "See more",
                  style: TextStyle(color:  widget.color,fontWeight: FontWeight.bold),
                ),
                children: [
                  DealOption(
                    dealText: "Unlimited TV shows and movies",
                    checkColor:widget.color,
                  ),
                  DealOption(
                    dealText: "Watch on any device",
                    checkColor:widget.color,
                  ),
                  DealOption(
                    dealText: "No ads",
                    checkColor:widget.color,
                  ),
                  DealOption(
                    dealText: "Cancel anytime",
                    checkColor:widget.color,
                  ),
                  DealOption(
                    dealText: "New releases every week",
                      checkColor:widget.color,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

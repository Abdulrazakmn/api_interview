import 'package:flutter/material.dart';

class Suggestioncard extends StatelessWidget {
  final String avathar;
  final String rate;
  final String details;
  const Suggestioncard(
      {required this.avathar, required this.rate, required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, height: 550, margin: EdgeInsets.only(left: 5, right: 5),

      child: Stack(
        children: [suggestionImage(), suggestionDetails()],
      ),

//child:stack(children: [Container(child: Image(image: AssetImage(dulquer)),)],));
    );
  }

  Widget suggestionDetails() {
    return Positioned(
        left: 0,
        bottom: 0,
        right: 0,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          height: 110,
          child: Column(
            children: [
              ListTile(
                title: Text(rate != "null" ? rate : ""),
                subtitle: Text(details != "null" ? details : ""),
              ),
              // Container(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       SizedBox(
              //         height: 30,
              //         child: TextButton.icon(
              //           style: ButtonStyle(
              //               backgroundColor:
              //                   MaterialStatePropertyAll(Colors.blueAccent)),
              //           onPressed: (() {
              //             print("you have pressed button");
              //           }),
              //           icon: Icon(
              //             color: Colors.white,
              //             Icons.account_box,
              //             size: 15,
              //           ),
              //           label: Text(
              //             "Add Friend",
              //             textAlign: TextAlign.center,
              //             style: TextStyle(
              //                 color: Color.fromARGB(255, 225, 216, 216),
              //                 fontSize: 10),
              //           ),
              //         ),
              //       ),
              //       SizedBox(
              //         height: 30,
              //         child: TextButton(
              //             style: ButtonStyle(
              //                 backgroundColor:
              //                     MaterialStatePropertyAll(Colors.grey[500])),
              //             onPressed: () {
              //               print("you have pressed");
              //             },
              //             child: Text(
              //               "Remove",
              //               style: TextStyle(color: Colors.white),
              //             )),
              //       )
              //     ],
              //   ),
              // )
            ],
          ),
        ));
    Widget suggestionButton() {}
  }

  Widget suggestionImage() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            child: avathar != "null"
                ? Image.asset(
                    height: 300,
                    avathar,
                    fit: BoxFit.cover,
                  )
                : SizedBox()));
  }
}


import 'package:api_interview/asset.dart';
import 'package:flutter/material.dart';

import '../widget/suggestion.dart';



class Suggestionsection extends StatelessWidget {
  const Suggestionsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ListTile(
            title: Text("verified properties"),
            trailing: IconButton(
                onPressed: (() {
                  print("you pressed section icon");
                }),
                icon: Icon(
                  Icons.more,
                  color: Colors.grey[700],
                )),
          ),
          Container(
            child: SizedBox(
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Suggestioncard(
                    avathar: dulquer,
                    rate: '₹15000',
                   details: 'Nirala Estate\nTecjzone-4,Greater \nNoida west,Up',
                  ),
                   Suggestioncard(
                    avathar: dulquer,
                    rate: '₹15000',
                   details: 'Nirala Estate\nTecjzone-4,Greater \nNoida west,Up',
                  ),
                  Suggestioncard(
                    avathar: dulquer,
                    rate: '₹15000',
                   details: 'Nirala Estate\nTecjzone-4,Greater \nNoida west,Up',
                  ),
                      Suggestioncard(
                    avathar: dulquer,
                    rate: '₹15000',
                   details: 'Nirala Estate\nTecjzone-4,Greater \nNoida west,Up',
                  ),
                    Suggestioncard(
                    avathar: dulquer,
                    rate: '₹15000',
                   details: 'Nirala Estate\nTecjzone-4,Greater \nNoida west,Up',
                  ),
                   Suggestioncard(
                    avathar: dulquer,
                    rate: '₹15000',
                   details: 'Nirala Estate\nTecjzone-4,Greater \nNoida west,Up',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
    // Container(
    //   child: ListView(
    //     scrollDirection: Axis.horizontal,
    //     children: [Suggestioncard()],
    //   ),
    // )
  }
}

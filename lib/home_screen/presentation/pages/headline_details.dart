import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

class HeadlineDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 11,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          height: 261,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/virat_kohli.jpg'),
                            ),
                          ),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 5, left: 5),
                                  padding: const EdgeInsets.all(8.0),
                                  child: LineIcon(
                                    Icons.arrow_back_ios_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ))),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                            'Virat Kohli becomes first batsman to complete 6,000 runs in  IPL',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                            'IPL 2021: Royal Challengers Bangalore (RCB) skipper skipper Virat Kohli on Thursday became the first batsman to complete 6,000 runs in the Indian Premier League(IPL).Playing in his 196th IPL match at the Wankhede Stadium,Kohli achieved the feat in the 13th over against Rajasthan Royals.Kohli (72*) and Opener Devdutt Padikkal (101*), who scored an elegant hundred,put up a dominating show to power RCB to a 10 wicket crushing win over RR while chasing 178.Kohli(6021) is leading the IPL highest run getter followed by Suresh Raina (5448),Shikhar Dhawan(5428),David Warner(5384) and Rohit Sharma(5368).Kohli was just 51 runs behind the milestone figure before the match.As soon he hit his 51st run of the innings he became the first better to do so in the IPL',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.white70,
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        LineIcon(Icons.thumb_up),
                        Icon(Icons.bookmark),
                        Icon(Icons.send),
                        Icon(Icons.message),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

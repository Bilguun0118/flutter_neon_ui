import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 390,
        decoration: const BoxDecoration(
            color: Color(0xff19191B),
            image: DecorationImage(
              image: AssetImage('assets/homeBackground.png'),
              fit: BoxFit.cover,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 254,
              child: Text(
                "What would you like to watch?",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 38,
            ),
            Container(
              width: 343,
              height: 36,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(343 / 2)),
              child: Container(
                color: Color(0xff27262a),                    
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Color(0xff767680),
                    ),
                    Text(
                      "Search",
                      style: TextStyle(
                          color: Color(0xff767680),
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(Icons.mic, color: Color(0xff767680))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 36),

            //New Movies
            Container(
              child: Row(
                children:  [
                  Text("New movies",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                  ),),

                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/movieBackground.png'
                        ),
                        fit: BoxFit.cover,
                      )
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 36,),
            //Upcoming movies
            Container(
              child: Row(
                children:  [
                  Text("New movies",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                  ),),

                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/movieBackground.png'
                        ),
                        fit: BoxFit.cover,
                      )
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Paperpage extends StatelessWidget {
  const Paperpage({super.key});
  static late double width;
  static late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Column(
          children: [
            /**
                 * first container
               */
            Container(
              width: width,
              height: height * 0.45,
              color: Color(0xfff7f5f5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * .05,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * .03),
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(.8),
                        ),
                        child: Icon(
                          Icons.arrow_back_rounded,
                          size: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * .03),
                    child: Center(
                      child: Image(
                        width: width * 0.5,
                        image: AssetImage(
                          "assets/paper_box.png",
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            /**
                 * second container
               */

            Container(
              width: width,
              height: height * 0.55,
              decoration: BoxDecoration(
                color: Color(0xfffefefc),
              ),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Divider(
                    thickness: 10,
                    endIndent: 37,
                    indent: 35,
                    color: Color(0xffebece6),
                  ),
                  SizedBox(
                    height: height * .03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Text(
                        "How to recycle paper",
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),

                  /**
                 * first tip to how to recycle paper
                  */

                  SizedBox(
                    height: width * .04,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                      top: height * .001,
                      left: width * .03,
                      right: width * .02,
                    ),
                    leading: Text(
                      "1.",
                      style: TextStyle(
                          color: Color(0xffa0cc00),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    title: Text(
                      "Find out the difference between recyclable and non-recyclable paper. Such paper as waxed, laminated or painted is not recyclable.But you can recycle newspapers, magazines, packaging, cardboard, envelopes , office paper and any other paper of this type .",
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 122, 116, 116),
                      ),
                    ),
                  ),

                  /**
                 * Second tip to how to recycle paper
                  */

                  SizedBox(
                    height: width * .04,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                      top: height * .001,
                      left: width * .03,
                      right: width * .02,
                    ),
                    leading: Text(
                      "2.",
                      style: TextStyle(
                          color: Color(0xffa0cc00),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    title: Text(
                      "Remove all dirty or greasy paper. The paper is recycled using water. In the presence of pollutants , they can spoil the entire batch, regardless of whether they are soluble in water or not.",
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 122, 116, 116),
                      ),
                    ),
                  ),

                  /**
                 * Third tip to how to recycle paper
                  */

                  SizedBox(
                    height: width * .04,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                      top: height * .001,
                      left: width * .03,
                      right: width * .02,
                    ),
                    leading: Text(
                      "3.",
                      style: TextStyle(
                          color: Color(0xffa0cc00),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    title: Text(
                      "Sort the paper . Different types of paper have a different fiber length, and thus a different quality. That's why it's important to have them sorted by type. Cardboard goes to cardboard, office paper goes to office paper, etc.",
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 122, 116, 116),
                      ),
                    ),
                  ),

                  /**
                 * Third tip to how to recycle paper
                  */
                  SizedBox(
                    height: width * .04,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                      top: height * .001,
                      left: width * .03,
                      right: width * .02,
                    ),
                    leading: Text(
                      "4.",
                      style: TextStyle(
                          color: Color(0xffa0cc00),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    title: Text(
                      "Bring your sorted paper to the closest recycling centre.",
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 122, 116, 116),
                      ),
                    ),
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

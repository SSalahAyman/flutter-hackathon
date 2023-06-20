import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainPage extends StatelessWidget {
  static late double width;
  static late double height;
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              context: context,
              builder: (BuildContext) {
                return Container(
                  width: width,
                  height: height * 0.45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 9,
                        indent: width * 0.3,
                        endIndent: width * 0.3,
                      ),
                      const Text(
                        "Transaction Done",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                      Lottie.asset(
                          "assets/animated_icon/33886-check-okey-done.json",
                          height: height * 0.2),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Items :",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "2 Plastic ,",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            " 2 Cans ,",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            " 10 Points",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 45),
                              primary: Color(0xffdc9c41),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.qr_code,
                              color: Colors.black,
                            ),
                            label: Text(
                              "Rescan",
                              style: TextStyle(fontSize: height * 0.02),
                            ),
                          ),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 45),
                              primary: Color(0xff4cd18c),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.check,
                              color: Colors.black,
                            ),
                            label: Text(
                              "I'm done",
                              style: TextStyle(fontSize: height * 0.02),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              });
        },
        child: const Text("Go to bottom sheet"),
      ),
    );
  }
}

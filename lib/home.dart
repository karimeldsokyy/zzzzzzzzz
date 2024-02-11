import 'package:flutter/material.dart';
import 'apple.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Fortune AI Predictor'),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Instructions:',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '1. You must open your account on 1xbet.',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '2. Copy your ID and put it in this field.',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '3. Make sure that you open the betting application and the Fortune Predictor application on the same network, preferably Wi-Fi, so that the IP is unified.',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '4. Enjoy the great Predictions!',
              style: TextStyle(fontSize: 20.0),
            ),
            Spacer(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter your ID here',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    margin: EdgeInsets.only(bottom: 220.0),
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20.0), // Adjust the value as needed
                              ),
                              child: Container(
                                height: 450.0, // Set the height directly
                                width: 220.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Same as the Dialog shape
                                  child: Image.asset(
                                    'assets/robot.gif',
                                    fit: BoxFit
                                        .cover, // Adjust the BoxFit as needed
                                  ),
                                ),
                              ),
                            );
                          },
                        );

                        Future.delayed(Duration(seconds: 20), () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ApplePage(),
                            ),
                          );
                        });
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            Size(200.0, 50.0)), // Set the width and height
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(179, 0, 106,
                                187)), // Set the background color of the button
                      ),
                      child: Text('Give Robot Access'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Add spacing between the button and footer
            Footer(), // Adding the Footer widget
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 233, 222, 222),
    );
  }
}

// Footer widget to display copyright notice
class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.grey[300], // Background color for the footer
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '© ',
            style: TextStyle(fontSize: 15, color: Colors.black), // Yellow color
          ),
          Text(
            '2024 ',
            style: TextStyle(fontSize: 15, color: Colors.black), // Yellow color
          ),
          Text(
            'Fortune AI Predictor. ',
            style: TextStyle(fontSize: 15, color: Colors.black), // Yellow color
          ),
          Text(
            'All rights reserved.',
            style: TextStyle(fontSize: 15, color: Colors.black), // Red color
          ),
        ],
      ),
    );
  }
}

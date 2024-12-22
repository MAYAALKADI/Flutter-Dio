import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us',
          style: TextStyle(
            color: Color(0xff8B0000),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.grey[350],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    //  'images/985584de-8fac-4e82-aa48-b5ffde08d311.jpg',
                    'images/logo.jpg',
                    height: 170,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Our Company',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff8B0000),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Our Story',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Founded in 2020, our company aims to provide high-quality products at affordable prices. We believe that shopping should be an enjoyable and easy experience for everyone.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Text(
              'Our Values',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'We are committed to offering high-quality products and excellent customer service. We strive for innovation and always bring the latest trends to our customers.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Text(
              'Our Team',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Our team consists of dedicated professionals who are passionate about their work and always aim to provide the best service possible.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Text(
              'Sustainability & Social Responsibility',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'We are committed to sustainability and ensure that all our products are eco-friendly. We also participate in various social initiatives to support the community.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Email: contact@DreamStore.com\nPhone: +963 4568 7890\nAddress: Syria,Damascus,Alhamra Street',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),

          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const FirstHomeWork());
}

class FirstHomeWork extends StatelessWidget {
  const FirstHomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                color: Color(0xffE4F3FE),
              ),
              Container(height: 20),
              Row(
                children: [
                  Container(height: 40, width: 40, color: Color(0xffE0E0E0)),
                  Container(width: 10),
                  Container(height: 40, width: 325, color: Color(0xffE0E0E0)),
                ],
              ),
              Container(height: 20),
              Divider(thickness: 1),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 150,
                        color: Color(0xffA5D6A7),
                      ),
                      Container(height: 10),
                      Container(
                        height: 70,
                        width: 150,
                        color: Color(0xffA5D6A7),
                      ),
                    ],
                  ),
                  Container(width: 20),

                  Container(height: 150, width: 95, color: Color(0xffFFCC80)),
                  Container(width: 10),
                  Container(height: 150, width: 95, color: Color(0xffFFCC80)),
                ],
              ),
              Container(height: 10),
              Container(  
                height: 120,
                width: double.infinity,
                color: Color(0xffF3E5F6),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 100,
                      color: Color(0xffE1BEE8),
                    ),
                    Container(width: 10),
                    Column(
                      children: [
                        Container(
                          height: 55,
                          width: 100,
                          color: Color(0xffCF93D9),
                        ),
                        Container(height: 9),
                        Container(
                          height: 55,
                          width: 100,
                          color: Color(0xffCF93D9),
                        ),
                      ],
                    ),
                    Container(width: 20),
                    Container(
                      height: double.infinity,
                      width: 120,
                      color: Color(0xffE1BEE8),
                    ),
                  ],
                ),
              ),
              Container(height: 20),
              Row(
                children: [
                  Container(height: 60, width: 182, color: Color(0xffB2DFDC)),
                  Container(width: 10),
                  Container(height: 60, width: 182, color: Color(0xffB2DFDC)),
                ],
              ),
              Container(height: 20),
              Container(
                height: 70,
                width: double.infinity,
                color: Color(0xffE0E0E0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

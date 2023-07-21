import 'package:flutter/material.dart';

class TextFied extends StatelessWidget {
  const TextFied(this.input, {super.key});
  final String input;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 69, 133, 165),
        appBar: AppBar(
          title: const Text('Text field'),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            const Text(
              'Learn text flutter',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 3.0,
                wordSpacing: 2.0,
              ),
            ),

            Padding(
              //! --> ĐẶT 2 MÀU TEXT KHÁC NHAU TRÊN 1 DÒNG
              padding: const EdgeInsets.all(3.0),
              child: RichText(
                text: const TextSpan(
                    text: 'Text 1',
                    style: TextStyle(color: Colors.blue),
                    children: [
                      TextSpan(
                          text: 'text2',
                          style: TextStyle(
                            color: Colors.black,
                          ))
                    ]),
              ),
            ),

            const Padding(
              //! tạo input nhập vào giá trị
              padding: EdgeInsets.all(16.0),
              child: TextField(
                // obscureText: true, --> tùy chọn cho ô nhập vào là mật khẩu
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Size kí tự',
                  hintText: 'giá trị nhập vào',
                ),
              ),
            )
          ],
        ));
  }
}

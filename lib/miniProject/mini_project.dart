import 'package:flutter/material.dart';

class MiniProject extends StatelessWidget {
  const MiniProject({super.key});
  // List<String> checkdata;
  int printCL() {
    return 10;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: const Text(
          ' Sign In App Flutter',
        ),
        leading: const Icon(Icons.home),
        backgroundColor: const Color.fromARGB(255, 204, 47, 47),
      ),
      body: Column(
        children: [
          Center(
            //! căn giữa theo hàng ngang box container
            child: Container(
              margin: const EdgeInsets.all(40),

              width: 150,
              height: 150,
              // padding: const EdgeInsets.fromLTRB(left, top, right, bottom),
              decoration: BoxDecoration(
                // boxShadow: List.from(bool.hasEnvironment(val)),
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(100), //! 100: hình tròn
                border: Border.all(color: Colors.white, width: 5.0),
              ),
              child: const Center(
                child: Text(
                  'VJR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          // ! box TĐN
          Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email or number phone ',
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          
          // ! Box password--------------
          Container(
              
            // margin: const EdgeInsets.all(20),
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                  icon: Icon(
                    Icons.key,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
// ! tạo button = container (C1)
          // Container(
          //   margin: const EdgeInsets.fromLTRB(30, 30, 30, 10),
          //   decoration: BoxDecoration(
          //     color: Colors.red,
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //   child: const Padding(
          //     padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          //     child: Text(
          //       'Đăng nhập',
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontWeight: FontWeight.w500,
          //       ),
          //     ),
          //   ),
          // ),

          // ! TẠO BUTTON SIGN IN = WIDGET BUTTON : child TEXT -> ĐẶT Ở CUỐI CÙNG trong box button
          // TextButton(
          //   onPressed: () {
          //     ..//
          //   },
          //   style: const ButtonStyle(
          //     padding:
          //         MaterialStatePropertyAll(EdgeInsets.fromLTRB(20, 10, 20, 10)),
          //     foregroundColor: MaterialStatePropertyAll(Colors.white),
          //     backgroundColor: MaterialStatePropertyAll(Colors.green),
          //   ),
          //   child: const Text(
          //     'Sign in',
          //     style: TextStyle(fontWeight: FontWeight.w400),
          //   ),
          // ),

          const SizedBox(
            height: 30,
          ),

          ElevatedButton(
            onPressed: () {
              // ....
            },
            style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.white),
              backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
            ),
            child: const Text(
              'Update',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}

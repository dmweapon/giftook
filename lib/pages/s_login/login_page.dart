import 'package:firebase_auth/firebase_auth.dart';
import 'package:giftook/services/auth_service.dart';

import '../0_routes/app_routes.dart';
import '../s_login/login_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginPageController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final authService = AuthService();
    User? user = authService.currentUser();

    return Scaffold(
      appBar: AppBar(
        title: Text("로그인화면"),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  user == null ? "로그인해 주세요 🙂" : "${user.email}님 안녕하세요 👋",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 32),

              /// 이메일
              TextField(
                controller: emailController,
                decoration: InputDecoration(hintText: "이메일"),
              ),

              /// 비밀번호
              TextField(
                controller: passwordController,
                obscureText: false, // 비밀번호 안보이게
                decoration: InputDecoration(hintText: "비밀번호"),
              ),
              SizedBox(height: 32),

              /// 로그인 버튼
              ElevatedButton(
                child: Text("로그인", style: TextStyle(fontSize: 21)),
                onPressed: () {
                  // 로그인
                  authService.signIn(
                    email: emailController.text,
                    password: passwordController.text,
                    onSuccess: () {
                      // 로그인 성공
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("로그인 성공"),
                      ));
                      // HomePage로 이동
                      Get.offNamed(AppRoutes.APPMAIN);
                    },
                    onError: (err) {
                      // 에러 발생
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(err),
                      ));
                    },
                  );
                },
              ),

              /// 회원가입 버튼
              ElevatedButton(
                child: Text("회원가입", style: TextStyle(fontSize: 21)),
                onPressed: () {
                  // 회원가입
                  authService.signUp(
                    email: emailController.text,
                    password: passwordController.text,
                    onSuccess: () {
                      // 회원가입 성공
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("회원가입 성공"),
                      ));
                      Get.offNamed(AppRoutes.APPMAIN);
                    },
                    onError: (err) {
                      // 에러 발생
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(err),
                      ));
                    },
                  );
                },
              ),
              SizedBox(height: 36),
              Text("테스트용 계정"),
              Text("test@naver.com  //  test1234"),
            ],
          ),
        ),
      ),
    );
  }
}

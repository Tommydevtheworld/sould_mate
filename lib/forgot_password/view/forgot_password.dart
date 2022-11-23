import 'package:flutter/material.dart';
import 'package:sould_mate/common/widgets/ButtonForm.dart';
import 'package:sould_mate/common/widgets/InputForm.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
          color: Colors.black45,
          image: DecorationImage(
            opacity: 0.8,
            image: AssetImage('assets/image/login.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 105,
            ),
            Text(
              'Forgot password',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Please enter your email address. You will receive a link to create a new password via email.',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(
              height: 41,
            ),
            const InputForm(hintText: 'Your Email'),
            const SizedBox(
              height: 40,
            ),
            ButtonForm(
              text: 'SEND',
              action: () => {},
            ),
          ],
        ),
      ),
    );
  }
}

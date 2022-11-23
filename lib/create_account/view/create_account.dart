import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:sould_mate/common/widgets/ButtonForm.dart';
import 'package:sould_mate/common/widgets/InputForm.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

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
            Text(
              'Create an account',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 70,
            ),
            const InputForm(hintText: 'Username'),
            const SizedBox(
              height: 10,
            ),
            const InputForm(hintText: 'Email'),
            const SizedBox(
              height: 10,
            ),
            const InputForm(hintText: 'Phone'),
            const SizedBox(
              height: 10,
            ),
            TextField(
              onTap: () {
                DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    maxTime: DateTime.now(),
                    onChanged: (date) {},
                    onConfirm: (date) {},
                    currentTime: DateTime.now(),
                    locale: LocaleType.en);
              },
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'Date of birth',
                contentPadding: const EdgeInsets.only(left: 20),
                hintStyle: Theme.of(context).textTheme.displayMedium,
                filled: true,
                fillColor: Colors.white12,
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const InputForm(hintText: 'Password'),
            // TextButton(
            //   onPressed: () {
            //     DatePicker.showDatePicker(context,
            //         showTitleActions: true,
            //         maxTime: DateTime.now(),
            //         onChanged: (date) {},
            //         onConfirm: (date) {},
            //         currentTime: DateTime.now(),
            //         locale: LocaleType.en);
            //   },
            //   child: const Text('date'),
            // ),
            const SizedBox(
              height: 40,
            ),
            ButtonForm(
              text: 'SIGN UP',
              action: () => {},
            ),
          ],
        ),
      ),
    );
  }
}

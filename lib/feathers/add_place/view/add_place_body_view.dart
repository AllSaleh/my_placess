import 'package:flutter/material.dart';
import 'package:project/core/const.dart';
import 'package:project/core/validation.dart';
import 'package:project/feathers/admin/review/widgets/dropmenu_button.dart';
import 'package:project/feathers/admin/review/widgets/image_continer_adimn.dart';
import 'package:project/feathers/auth/widgets/auth_button.dart';
import 'package:project/feathers/auth/widgets/textformfiled.dart';

class AddPlaceBodyView extends StatelessWidget {
  const AddPlaceBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 117,
            ),
            const Text(
              'Add place',
              style: TextStyle(fontSize: 30, color: blackColor),
            ),
           CustomTextFiled(
                labe: 'Name',
                controller: TextEditingController(),
                validator: (name) {
                  return validation('name', name,3,20);
                }),
            CustomTextFiled(
                padding: 15,
                labe: 'Type',
                controller: TextEditingController(),
                validator: (type) {
                  return validation('type', type,3,20);
                }),
            CustomTextFiled(
                padding: 15,
                labe: 'Description',
                controller: TextEditingController(),
                validator: (description) {
                  return validation('Description', description,10,300);
                }),
            CustomTextFiled(
                padding: 15,
                labe: 'Google maps Link',
                controller: TextEditingController(),
                validator: (link) {
                  return validation('link', link,6,200);
                }),
            CustomTextFiled(
                padding: 15,
                labe: 'Phone .No',
                controller: TextEditingController(),
                validator: (phone) {
                  return validation('phone', phone,9,15);
                }),
            CustomTextFiled(
                padding: 15,
                labe: 'Rating',
                controller: TextEditingController(),
                validator: (rating) {
                  return validation('rating', rating,1,8);
                }),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Category',
                style: TextStyle(color: primaryColor, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomDropMenuButton(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Insert Photo',
                style: TextStyle(color: primaryColor, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...List.generate(3, (index) => const ImageContinerAdmin())
                ],
              ),
            ),
            const SizedBox(
              height: 51,
            ),
            AuthButton(
                horizontal: 50,
                onPressed: () {},
                title: 'Add',
                color: whiteColor,
                backgroundColor: primaryColor)
          ],
        ),
      ),
    );
  }
}

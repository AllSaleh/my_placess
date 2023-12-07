import 'package:flutter/material.dart';
import 'package:project/core/const.dart';
import 'package:project/core/validation.dart';
import 'package:project/feathers/admin/review/widgets/custom_row.dart';
import 'package:project/feathers/admin/review/widgets/dropmenu_button.dart';
import 'package:project/feathers/admin/review/widgets/image_continer_adimn.dart';
import 'package:project/feathers/auth/widgets/textformfiled.dart';

class DisplayBoddyView extends StatelessWidget {
  const DisplayBoddyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 58, bottom: 24, left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomRow(title: 'Add place'),
            const SizedBox(
              height: 58,
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
            )
          ],
        ),
      ),
    );
  }
}

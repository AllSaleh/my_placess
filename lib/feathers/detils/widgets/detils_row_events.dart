import 'package:flutter/material.dart';
import 'package:project/core/snackbar.dart';
import 'package:project/feathers/detils/widgets/custom_continer_detils.dart';

import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';

class DetilsRowEvents extends StatelessWidget {
  const DetilsRowEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomContinerDetils(
          onTap: () async {
            final Uri uri = Uri(scheme: 'tel', path: '+966531034431');
            await launchUrl(uri);
          },
          icon: Icons.phone,
          color: const Color(0xffF6F5F5),
        ),
        const SizedBox(
          width: 26,
        ),
        CustomContinerDetils(
          onTap: () async {
            // final String lat = '15.8328427';
            // final String lan = '48.9135515';
            // final String gg = 'comgooglemaps://?center=$lat,$lan';
            // final String app = 'https://maps.apple.com/?=$lat,$lan';
            // await launch(app);
          },
          icon: Icons.map,
          color: const Color(0xffF6F5F5),
        ),
        const SizedBox(
          width: 26,
        ),
        CustomContinerDetils(
          onTap: () {
            showDatePicker(
                    selectableDayPredicate: (day) {
                      return true;
                    },
                    initialEntryMode: DatePickerEntryMode.calendarOnly,
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.utc(2030))
                .then((value) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(customSnackBar(title: 'title'));
            });
          },
          icon: Icons.calendar_month_outlined,
          color: const Color(0xffF6F5F5),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:project/core/snackbar.dart';
import 'package:project/feathers/detils/cubit/approment/approment_cubit.dart';
import 'package:project/feathers/detils/cubit/detils_cubit.dart';
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
            final Uri uri = Uri(
                scheme: 'tel',
                path: BlocProvider.of<DetilsCubit>(context)
                    .data
                    .phone
                    .toString());
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
            String url =
                BlocProvider.of<DetilsCubit>(context).data.location.toString();

            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url));
            } else {
              debugPrint('Could not launch $url');
              throw 'Could not launch $url';
            }
          },
          icon: Icons.map,
          color: const Color(0xffF6F5F5),
        ),
        const SizedBox(
          width: 26,
        ),
        BlocConsumer<AppromentCubit, AppromentState>(
          listener: (context, state) {
            if (state is AppromentSucsess) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(customSnackBar(title: 'Addedd Sucssefully'));
            } else if (state is AppromentFailure) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(customSnackBar(title: 'An Error Try Again'));
            } else if (state is AppromentAdded) {
              ScaffoldMessenger.of(context).showSnackBar(customSnackBar(
                  title:
                      'This place is Alredy Added Calender In Chooses day!'));
            }
          },
          builder: (context, state) {
            return CustomContinerDetils(
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
                  if (value == null) {
                    return null;
                  } else {
                    BlocProvider.of<AppromentCubit>(context).dateTime = value;
                    BlocProvider.of<AppromentCubit>(context).appAppoment(
                        BlocProvider.of<DetilsCubit>(context).data.id!);
                  }
                });
              },
              icon: Icons.calendar_month_outlined,
              color: const Color(0xffF6F5F5),
            );
          },
        ),
      ],
    );
  }
}

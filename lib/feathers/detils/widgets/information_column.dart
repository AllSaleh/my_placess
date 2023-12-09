import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/detils/cubit/detils_cubit.dart';
import 'package:project/feathers/detils/widgets/detils_raring.dart';
import 'package:project/feathers/detils/widgets/uber_button.dart';
import 'package:project/main.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationColumn extends StatelessWidget {
  const InformationColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 9,
              ),
              const DetilsRating(),
              const SizedBox(
                height: 7,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .99,
                child: Text(
                  BlocProvider.of<DetilsCubit>(context).data.description!,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              UberButton(onPressed: () async {
                var location =
                    "https://www.google.com/maps/search/?api=1&query=${sharedPref.getDouble('lat')},${sharedPref.getDouble('long')}";

                final encodedURl = Uri.parse(location);
                AndroidIntent intent = AndroidIntent(
                  action: 'action_view',
                  data: location,
                );
                await intent.launch();

                // if (await canLaunchUrl(encodedURl)) {
                //   await launchUrl(encodedURl);
                // } else {
                //   print('Could not launch $encodedURl');
                //   throw 'Could not launch $encodedURl';
                // }
              })
            ],
          ),
        ),
      ),
    );
  }
}

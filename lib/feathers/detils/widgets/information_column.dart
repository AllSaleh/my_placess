import 'package:android_intent_plus/android_intent.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/detils/cubit/detils_cubit.dart';
import 'package:project/feathers/detils/widgets/detils_raring.dart';
import 'package:project/feathers/detils/widgets/uber_button.dart';

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
               

                var intent = AndroidIntent(
                    data: BlocProvider.of<DetilsCubit>(context)
                        .data
                        .location
                        .toString(),
                    package: "com.ubercab",
                    action: "action_view");
                intent.launch();
              })
            ],
          ),
        ),
      ),
    );
  }
}

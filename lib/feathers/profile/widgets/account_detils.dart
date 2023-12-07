import 'package:flutter/material.dart';

class AccountDetils extends StatelessWidget {
  final String name, email;
  const AccountDetils({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 60,
      bottom: 19,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .6,
        child: ListTile(
          title: Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            textAlign: TextAlign.center,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              email,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

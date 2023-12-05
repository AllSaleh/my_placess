import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class CustomRow extends StatelessWidget {
  final String title;
  const CustomRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Row(
            children: [
              InkWell(
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: Container(
                  height: 52,
                  width: 52,
                  decoration: const BoxDecoration(
                      color: Color(0xffF6F5F5), shape: BoxShape.circle),
                  child: const Icon(Icons.arrow_back_outlined),
                ),
              ),
              const SizedBox(
                width: 19,
              ),
               Text(
               title,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

goRouter({required String path, required Widget page,required String name}) {
  return GoRoute(
    name: name,
    path: path,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
      
        child: page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
         
          return SlideTransition(
            position: Tween<Offset>(
                    begin: const Offset(1, 0) ,
                    end:  Offset.zero)
                .animate(animation),
            child: child,
          );
        },
      );
    },
  );
}

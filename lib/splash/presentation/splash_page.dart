import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:note_auto_route/router/app_router.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  static var page;

  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      context.router.replace(const ItemDetailRoute());
    });
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

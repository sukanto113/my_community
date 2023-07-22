import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:my_community/src/routes/community_app_route.dart';

class CommunityApp extends StatelessWidget {
  const CommunityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "My Community",
      builder: EasyLoading.init(),
      routerConfig: CommunityAppRouterConfig().router,
    );
  }
}
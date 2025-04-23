import 'package:flutter/material.dart';
import 'package:StaffLink/utils/styles.dart';
import 'package:StaffLink/view_models/view_models.dart';
import 'package:StaffLink/widgets/bottom_nav.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ViewModel()),
      ],
      child: MaterialApp(
        title: 'StaffLink',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'DMSans',
          primaryColor: Styles.primaryColor,
          scaffoldBackgroundColor: Styles.primaryColor, // ✅ diperbaiki dari backgroundColor
        ),
        home: const BottomNav(),
      ),
    );
  }
}

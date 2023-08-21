import 'package:flutter/material.dart';
import 'package:flutter_appwrite_starter/core/presentation/router/router.dart';
import 'package:flutter_appwrite_starter/core/res/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlAppwrite Starter'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => context.goNamed(AppRoutes.profile),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20.0),
            SvgPicture.asset(AppAssets.logo),
            const SizedBox(height: 20.0),
            Text(
              "Welcome to FlAppwrite Starter template, your base to build awesome applications.",
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

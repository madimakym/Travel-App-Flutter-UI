import 'package:flutter/material.dart';
import 'package:travel_ui_app/pages/product/product_page.dart';
import 'pages/tabs_page.dart';
import 'pages/home/home_page.dart';
import 'widgets/custom_arguments.dart';
import 'widgets/custom_transition.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppPage();
  }
}

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  bool isAuth = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget child = TabsPage();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(color: Colors.white, child: child),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case "/home":
            return FadeTransitionRoute(widget: TabsPage());
          case "/product":
            CustomArguments args = settings.arguments as CustomArguments;
            return FadeTransitionRoute(
                widget: ProductPage(params: args.params));
          default:
            return MaterialPageRoute(builder: (_) => const HomePage());
        }
      },
    );
  }
}

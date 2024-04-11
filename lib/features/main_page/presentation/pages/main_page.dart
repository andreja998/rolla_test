import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:rolla_zadatak/config/router.gr.dart';
import 'package:rolla_zadatak/features/log_page/presentation/pages/log_page.dart';
import 'package:rolla_zadatak/features/products_page/presentation/pages/products_page.dart';

@RoutePage(name: 'MainRouter')
class MainRouterPage extends AutoRouter {}

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [];
  late int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    pages = [const ProductsPage(), const LogPage()];
    WidgetsFlutterBinding.ensureInitialized();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AutoTabsScaffold(
          // backgroundColor: Colors.white,
          // body: pages[_selectedPageIndex],
          routes: [
            const ProductsRouter(),
            const LogRouter(),
          ],
          bottomNavigationBuilder: (context, tabsRouter) {
            context.watchRouter.addListener(() {});
            return SizedBox(
              height: 80,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                  top: BorderSide(width: 1, color: Colors.black),
                )),
                child: BottomNavigationBar(
                    backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                    unselectedItemColor: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
                    selectedItemColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
                    currentIndex: tabsRouter.activeIndex,
                    onTap: tabsRouter.setActiveIndex,
                    type: BottomNavigationBarType.fixed,
                    items: [
                      BottomNavigationBarItem(
                          activeIcon: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Image(
                                image: const AssetImage(
                                  'assets/icons/home-icon.png',
                                ),
                                width: 30,
                                height: 30,
                                color: Theme.of(context).bottomNavigationBarTheme.selectedItemColor),
                          ),
                          icon: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Image(
                              image: const AssetImage(
                                'assets/icons/home-icon.png',
                              ),
                              width: 30,
                              height: 30,
                              color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
                            ),
                          ),
                          label: 'Home'),
                      BottomNavigationBarItem(
                          activeIcon: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Image(
                                image: const AssetImage(
                                  'assets/icons/exposures-icon.png',
                                ),
                                width: 30,
                                height: 30,
                                color: Theme.of(context).bottomNavigationBarTheme.selectedItemColor),
                          ),
                          icon: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Image(
                              image: const AssetImage(
                                'assets/icons/exposures-icon.png',
                              ),
                              width: 30,
                              height: 30,
                              color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
                            ),
                          ),
                          label: 'Logs'),
                    ]),
              ),
            );
          }),
    );
  }
}

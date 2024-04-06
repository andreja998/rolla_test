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
  List pages=[];
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
        backgroundColor: Colors.white,
        // body: pages[_selectedPageIndex],
        routes: [
          ProductsRouter(),
          LogRouter(),
        ],
        bottomNavigationBuilder: (context, tabsRouter) { 
          context.router.addListener(() {
            print('PROMENA RUTE');
            // context.router.
            // print('ROUTE CHILD: ${context.router.current.router.currentPath}');
          },);
          context.tabsRouter.addListener(() {
            print('TAB PROMENA');
          },);
          context.watchRouter.addListener(() {
    
          });
          return SizedBox(
          height: 80,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 1, color: Colors.black),
                
              )),
            child: BottomNavigationBar(
              selectedLabelStyle: const TextStyle(fontSize: 10, color: Colors.blue),
              unselectedLabelStyle: const TextStyle(fontSize: 10, color: Colors.black),
              backgroundColor: Colors.white,
              unselectedItemColor: Colors.black,
                selectedItemColor: Colors.blue,
                currentIndex: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    activeIcon: Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Image(
                          image: AssetImage('assets/icons/home-icon.png',),
                          width: 30,
                          height: 30,
                          color: Colors.blue),
                    ),
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Image(
                        image: AssetImage('assets/icons/home-icon.png',),
                        width: 30,
                        height: 30,
                        color: Colors.black,
                      ),
                    ),
                    label: 'Home'),
                   BottomNavigationBarItem(
                    activeIcon: Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Image(
                          image: AssetImage('assets/icons/exposures-icon.png',),
                          width: 30,
                          height: 30,
                          color: Colors.blue),
                    ),
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Image(
                        image: AssetImage('assets/icons/exposures-icon.png',),
                        width: 30,
                        height: 30,
                        color: Colors.black,
                      ),
                    ),
                    label: 'Exposures'),
                ]),
          ),
        );}
      ),
    );
  }
}
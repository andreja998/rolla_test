import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rolla_zadatak/config/router.gr.dart';
import 'package:rolla_zadatak/features/auth/domain/entities/user/user.dart';
import 'package:rolla_zadatak/features/common/widgets/primary_button.dart';
import 'package:rolla_zadatak/features/user_page/application/bloc/user_bloc.dart';
import 'package:rolla_zadatak/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage(name: 'UserRouter')
class UserRouterPage extends AutoRouter {}

@RoutePage()
class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<UserBloc>(context).add(const UserEvent.getUser());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        leadingWidth: 100,
       
      ),
      body: BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {
          
        },
        builder: (context, state) {
          return state.when(initial: () {
            return const CircularProgressIndicator();
          }, loaded: (user) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  const SizedBox(height: 64,),
                  Image.network(user.image, width: 100, height: 100,),
                  const SizedBox(height: 32,),
                  buildDescriptionName('First name', user.firstName, context),
                  const SizedBox(height: 8,),
                  buildDescriptionName('Last name', user.lastName, context),
                  const SizedBox(height: 8,),
                  buildDescriptionName('age', user.age != null ? user.age.toString() : '-', context),
                  const SizedBox(height: 8,),
                  buildDescriptionName('email', user.email, context),
                  const SizedBox(height: 32,),
                  PrimaryButton(child: const Text('Sign Out'), onClick: () async {
                    await getIt<SharedPreferences>().clear();
                    context.router.replaceAll([const LoginRouter()]);
                  })
                ],),
              ),
            );
          });
      }
      ));
  }
}

Row buildDescriptionName(String name, String description, BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text('$name: '),
                  Text(description, style: Theme.of(context).textTheme.bodyLarge,)
                ],);
  }
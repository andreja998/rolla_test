import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rolla_zadatak/features/log_page/application/bloc/log_bloc.dart';
import 'package:rolla_zadatak/features/log_page/domain/entities/log/log.dart';

@RoutePage(name: 'LogRouter')
class LogRouterPage extends AutoRouter {}

@RoutePage()
class LogPage extends StatefulWidget {
  const LogPage({super.key});

  @override
  State<LogPage> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<LogBloc>(context).add(LogEvent.getLogs());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LogBloc, LogState>(
        listener: (context, state) {
          
        },
        builder: (context, state) {
          return state.when(initial: () {
            return Center(child: CircularProgressIndicator(),);
          }, loaded: (log) {
            return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return buildLogItem(log[index]);
              }, 
              separatorBuilder: (context, index) {
                return Divider(color: Colors.grey[400],);
              }, 
              itemCount: log.length)
          );
          }, error: (err) {
            return Center(child: Text('Error'),);
          });

        }));
  }
}

Widget buildLogItem(Log log) {
  return Column(children: [
    Text(log.actor?.login),
    SizedBox(height: 6,),
    Text(log.type ?? 'Unknown')
  ],);
}

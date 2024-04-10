import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rolla_zadatak/features/products_page/application/bloc/product_details_bloc.dart';
import 'package:rolla_zadatak/features/products_page/application/bloc/product_details_bloc.dart';
import 'package:rolla_zadatak/features/products_page/domain/entities/products_model/product.dart';

@RoutePage(name: 'ProductsRouter')
class ProductsRouterPage extends AutoRouter {}

@RoutePage()
class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final scrolController = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrolController.addListener(() {
      if (scrolController.offset >= scrolController.position.maxScrollExtent &&
        !scrolController.position.outOfRange) {
      BlocProvider.of<ProductDetailsBloc>(context).add(ProductDetailsEvent.getProducts(''));
    }
    });
    
    BlocProvider.of<ProductDetailsBloc>(context).add(ProductDetailsEvent.getProducts(''));
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ProductDetailsBloc, ProductDetailsState>(
        listener: (context, state) {
          state.failureOrSuccessOption.fold(
              () {},
              (either) => either.fold((failure) {
                    FlushbarHelper.createError(
                        message: failure.map(
                      serverError: (_) => 'Server error',
                      // invalidEmailAndPasswordCombination: (_) =>
                      //     'Invalid email and password combination',
                    )).show(context);
                  }, (_) {
                    // context.replaceRoute(const MainRoute());
                    }));
        },
        builder: (context, state) {
          if (state.products.length != 0) {
            return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.separated(
              controller: scrolController,
              itemBuilder: (context, index) {
                if (index >= state.products.length) {
                  return Center(child: Column(
                    children: [
                      SizedBox(height: 45,),
                      CircularProgressIndicator(),
                    ],
                  ),);
                  
                } else {
                  return buildProductItem(state.products[index], context);
                }
              }, 
              separatorBuilder: (context, index) {
                return Container(height: 16.0,);
              }, 
              itemCount: state.isLoading ? state.products.length + 1 : state.products.length)
          );
          } else {
            state.failureOrSuccessOption.fold(
              () {},
              (either) { 
                either.fold((failure) {
                    return Padding(padding: EdgeInsets.all(16),
            child: Text('Error loading products'),);
                  }, (_) {
                    // context.replaceRoute(const MainRoute());
                    });});
                    return Container();
          }
          
//           state.failureOrSuccessOption.fold(() {
            
//           }, (either) {
//             either.fold((l) {
// return Padding(padding: EdgeInsets.all(16),
//             child: Text('Error loading products'),);
//             }, (r) {
//               return Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: ListView.separated(
//               itemBuilder: (context, index) {
//                 return buildProductItem(state.products[index]);
//               }, 
//               separatorBuilder: (context, index) {
//                 return Divider(color: Colors.grey[400],);
//               }, 
//               itemCount: state.products.length)
//           );
//             });
//           });
//         },
  }),
    );
  }
}

Widget buildProductItem(Product product, BuildContext context) {
  return Card(
    color: Theme.of(context).cardColor,
    child: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(product.title, style: Theme.of(context).textTheme.titleLarge,),
        SizedBox(height: 6,),
        Text(product.price.toString(), style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).primaryColor),),
        SizedBox(height: 6,),
        Text(product.description, style: Theme.of(context).textTheme.bodySmall, maxLines: 2, overflow: TextOverflow.fade,)
      ],),
    ),
  );
}

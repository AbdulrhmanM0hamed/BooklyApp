import 'package:bookly_app/Features/home/data/models/book_model/repos/home%20repo_impl.dart';
import 'package:bookly_app/Features/home/presentation/view_models/cubit/feature_books/feature_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view_models/cubit/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view_models/cubit/similar_books/similar_cubit.dart';
import 'package:bookly_app/core/resources/route_manger.dart';
import 'package:bookly_app/core/resources/theme_manger.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocater() ; 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBooksCubit(
            getIt.get<HomeRepoImpl>()
          ),
        ), 
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>()

          ),
           
        ) , 
        BlocProvider(
          create: (context) => SimilarCubit(
            getIt.get<HomeRepoImpl>()

          ),
           
        )
      ],
      child: MaterialApp.router(
        routerConfig: RouteManger.router,
        debugShowCheckedModeBanner: false,
        theme: getApplicationTheme(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'core/service_locator/service_locator.dart';
import 'features/home/data/repos/home_repo_impl.dart';
import 'features/home/presentation/manager/get_poducts_cubit.dart';
import 'features/home/presentation/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  ServiceLocator.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: BlocProvider(
        create: (context) => GetProductsCubit(ServiceLocator.getIt.get<HomeRepoImpl>())..getProducts(),
        child: const HomeView(),
      ),
    );
  }
}


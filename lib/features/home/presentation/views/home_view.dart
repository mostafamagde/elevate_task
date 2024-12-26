import 'package:elevate_task/features/home/presentation/views/widgets/product_list_view.dart';
import 'package:elevate_task/features/home/presentation/views/widgets/product_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../manager/get_poducts_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductsCubit, GetProductsState>(
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is GetProductsLoading,
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Home",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              centerTitle: true,
              backgroundColor: Colors.blue,
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProductListView(),
          
              ],
            ),
          ),
        );
      },
    );
  }
}

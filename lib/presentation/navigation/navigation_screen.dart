import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatware_task/presentation/navigation/cubit/navigation_cubit.dart';
import 'package:tatware_task/presentation/navigation/cubit/navigation_state.dart';

import '../../app/constants.dart';
import '../resources/assets_manager.dart';
import '../resources/colors_manager.dart';
import '../resources/values_manager.dart';

class NavigationScreen extends StatelessWidget {

  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: BlocConsumer<NavigationCubit,NavigationState>(
          builder: (context, state) {
            var cubit = NavigationCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                backgroundColor: ColorManager.white,
                elevation: AppSize.s1_5,
                actions: const [
                  Padding(
                      padding: EdgeInsets.all(AppSize.s10),
                      child: Image(image: AssetImage(ImageAssets.search)))
                ],
                title: const Image(image: AssetImage(ImageAssets.oranos)),
                leading: const Image(image: AssetImage(ImageAssets.person)),
              ),
              body: cubit.screens[cubit.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                  items: getBottomNavItems(),
                  onTap: (index) {
                    cubit.changeIndex(index: index);
                  },
                  currentIndex: cubit.currentIndex,
                  ),

                  
            );
          },
          listener: (context, state) {}),
    );
  }

}

List<BottomNavigationBarItem> getBottomNavItems() {
  return const [
    BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        label: Constants.empty),
    BottomNavigationBarItem(
        icon: Icon(Icons.star_border_outlined),
        label: Constants.empty),
    BottomNavigationBarItem(
        icon: Icon(Icons.account_balance_wallet_outlined),
        label: Constants.empty),
    BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        label: Constants.empty),
  ];

}

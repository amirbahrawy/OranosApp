import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modules/home/home_screen.dart';
import 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitialState());

  static NavigationCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  final screens =List.generate(4, (index) =>  HomeScreen());

  void changeIndex({required int index}){
    currentIndex = index;
    emit(ChangeIndexState());
  }

}
import 'package:flutter_bloc/flutter_bloc.dart';

import 'favourite_state.dart';

class FavouriteCubit extends Cubit<FavouriteStates> {
  FavouriteCubit() : super(FavouriteInitialState());
  static FavouriteCubit get(context) => BlocProvider.of(context);
  bool isLoved=false;

  void toggleIcon(){
    isLoved=!isLoved;
    emit(FavouriteChangedState());
  }
}

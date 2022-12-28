import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../resources/strings_manager.dart';
import '../chat_widgets.dart';
import 'chat_states.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitialState());

  static ChatCubit get(context) => BlocProvider.of(context);
  List<Widget> messages = [
    const BotMessageWidget(message: AppStrings.botMessage),
  ];

  int botMsgIndex = 1;
  String firstName = '';
  bool isFinished=false;

  void botReply(String message) {
    if (botMsgIndex == 1) {
      firstName = message;
      messages.add(
          BotMessageWidget(message: "Ok, $firstName what's your LastName?"));
      botMsgIndex++;
      emit(BotSecondMessageState());
    } else if (botMsgIndex == 2) {
      messages.add(BotMessageWidget(
          message: "Mr, $firstName $message, what's your Title?"));
      botMsgIndex++;
      emit(BotThirdMessageState());
    } else if (botMsgIndex == 3) {
      ++botMsgIndex;
      messages.add(const BotMessageWidget(
          message: "What Categories you will need expert in?",
          withCategory: true));
      emit(BotFourthMessageState());
      isFinished=true;
    }
  }

  void userSend(String msg) {
    messages.add(UserMessageWidget(msg));
    emit(UserAddMessageState());
    botReply(msg);
  }

  void isFinish(){
    emit(BotFinishedSuccessfullyState());
  }
}

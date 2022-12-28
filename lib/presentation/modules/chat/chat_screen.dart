import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatware_task/presentation/modules/chat/cubit/chat_cubit.dart';
import 'package:tatware_task/presentation/modules/chat/cubit/chat_states.dart';

import '../../../app/components.dart';
import '../../resources/colors_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';
import '../../resources/values_manager.dart';

class ChatScreen extends StatelessWidget {
  final TextEditingController msgController = TextEditingController();

  ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(),
      child: BlocConsumer<ChatCubit, ChatState>(builder: (context, state) {
        var cubit = ChatCubit.get(context);
        return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => cubit.messages[index],
                    separatorBuilder: (context, index) => const SizedBox(
                      height: AppSize.s10,
                    ),
                    itemCount: cubit.messages.length,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.p10),
                      child: defaultFormField(
                          context: context,
                          controller: msgController,
                          type: TextInputType.text,
                          validate: (String? value) {
                            return null;
                          },
                          label: AppStrings.typeThing,
                          prefix: Icons.language,
                          suffix: Icons.keyboard_voice),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {
                          String msg = msgController.text;
                          if (cubit.isFinished) {
                            cubit.isFinish();
                          }
                          else if (msg.isNotEmpty) {
                            cubit.userSend(msg);
                            msgController.clear();
                          }

                        },
                        icon: const Icon(
                          Icons.send,
                          color: ColorManager.primary,
                        ),
                      ))
                ],
              )
            ],
          ),
        );
      }, listener: (context, state) {
        if (state is BotFinishedSuccessfullyState) {
          navigateAndFinish(context, Routes.navigationRoute);
        }
      }),
    );
  }
}

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [],
    );
  }
}

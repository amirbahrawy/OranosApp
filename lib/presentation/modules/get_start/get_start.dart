import 'package:flutter/material.dart';
import 'package:tatware_task/app/components.dart';
import 'package:tatware_task/presentation/modules/chat/chat_screen.dart';
import 'package:tatware_task/presentation/resources/values_manager.dart';

import '../../resources/assets_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';

class GetStartScreen extends StatefulWidget {
  const GetStartScreen({Key? key}) : super(key: key);

  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: AppPadding.p40),
            child: Center(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  const Image(image: AssetImage(ImageAssets.getStart)),
                  Padding(
                    padding: const EdgeInsets.only(right: AppPadding.p40),
                    child: RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.titleLarge,
                            children: [
                          const TextSpan(text: AppStrings.myName),
                          TextSpan(
                              text: AppStrings.oranobot,
                              style: Theme.of(context).textTheme.headlineLarge),
                          const TextSpan(text: AppStrings.oranobotIntro)
                        ])),
                  )
                ],
              ),
            ),
          ),
          const Image(image: AssetImage(ImageAssets.getStart2)),
          const SizedBox(
            height: AppSize.s14,
          ),
          SizedBox(
              width: 147,
              height: 53,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    navigateAndFinish(context, Routes.chatRoute);
                  });
                },
                child: const Text(AppStrings.next),
              ))
        ],
      ),
    );
  }
}

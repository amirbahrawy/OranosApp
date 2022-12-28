import 'package:flutter/material.dart';
import '../../../app/components.dart';
import '../../resources/assets_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';
import '../../resources/values_manager.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageAssets.onBoardingBackGround),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage(ImageAssets.onBoardingLogo),
                      width: 170,
                      height: 40,
                    ),
                    const SizedBox(
                      height: AppSize.s27,
                    ),
                    Text(AppStrings.onBoardingTitle,
                        style: Theme.of(context).textTheme.titleMedium),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: AppPadding.p20, right: AppPadding.p20),
                      child: SizedBox(
                        height: 55,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            navigateAndFinish(context, Routes.getStartRoute);
                          },
                          child: const Text(
                            AppStrings.getStarted,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.s20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: AppPadding.p20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppStrings.haveAccount,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            AppStrings.signUp,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )));
  }
}

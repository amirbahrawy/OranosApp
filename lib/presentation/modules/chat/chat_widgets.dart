import 'package:flutter/material.dart';
import 'package:tatware_task/domain/models.dart';

import '../../../app/components.dart';
import '../../resources/assets_manager.dart';
import '../../resources/colors_manager.dart';
import '../../resources/strings_manager.dart';
import '../../resources/values_manager.dart';

class BotMessageWidget extends StatelessWidget {
  final String message;
  final bool withCategory;

  const BotMessageWidget(
      {required this.message, this.withCategory = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundColor: ColorManager.circleGrey,
              child: Image(image: AssetImage(ImageAssets.chatIcon)),
            ),
            const SizedBox(
              width: AppSize.s10,
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              height: 48.0,
              width: 308.0,
              decoration: BoxDecoration(
                  color: ColorManager.chatGrey,
                  borderRadius: BorderRadius.circular(AppSize.s8)),
              child: Text(
                message,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            )
          ],
        ),
        const SizedBox(
          height: AppSize.s10,
        ),
        if (withCategory) const CheckBoxWidget()
      ],
    );
  }
}

class UserMessageWidget extends StatelessWidget {
  final String msg;

  const UserMessageWidget(this.msg, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(AppSize.s16),
          width: 260.0,
          height: 48.0,
          decoration: BoxDecoration(
              color: ColorManager.primary,
              borderRadius: BorderRadius.circular(AppSize.s8)),
          child: Text(msg,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: ColorManager.white)),
        ),
        const SizedBox(
          width: AppSize.s20,
        ),
        const Image(image: AssetImage(ImageAssets.seenIcon))
      ],
    );
  }
}

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  List<bool> checks = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customCheckBox(
          context: context,
          value: checks[0],
          onChanged: (bool? value) {
            setState(() {
              checks[0] = value!;
            });
          },
          title: AppStrings.security,
        ),
        customCheckBox(
          context: context,
          value: checks[1],
          onChanged: (bool? value) {
            setState(() {
              checks[1] = value!;
            });
          },
          title: AppStrings.supplyChain,
        ),
        customCheckBox(
          context: context,
          value: checks[2],
          onChanged: (bool? value) {
            setState(() {
              checks[2] = value!;
            });
          },
          title: AppStrings.informationTechnology,
        ),
        customCheckBox(
          context: context,
          value: checks[3],
          onChanged: (bool? value) {
            setState(() {
              checks[3] = value!;
            });
          },
          title: AppStrings.humanResource,
        ),
        customCheckBox(
          context: context,
          value: checks[4],
          onChanged: (bool? value) {
            setState(() {
              checks[4] = value!;
            });
          },
          title: AppStrings.businessResearch,
        ),
        const SizedBox(
          height: AppSize.s6,
        ),
        Text(
          AppStrings.doneOrSend,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}

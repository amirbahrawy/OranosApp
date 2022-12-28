import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatware_task/presentation/modules/home/cubit/favourite_bloc.dart';
import 'package:tatware_task/presentation/modules/home/cubit/favourite_state.dart';
import '../../../domain/models.dart';
import '../../resources/colors_manager.dart';
import '../../resources/styles_manager.dart';
import '../../resources/values_manager.dart';

class ExpertWidget extends StatelessWidget {
  final CategoryModel? categoryModel;

  const ExpertWidget(this.categoryModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppSize.s10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s10),
          border: Border.all(
            width: 1,
            color: ColorManager.black.withOpacity(0.3),
          )),
      child: ListTile(
        leading: Image(image: NetworkImage(categoryModel!.image)),
        title: Text(categoryModel!.categoryName,
            style: Theme.of(context).textTheme.bodyLarge),
        subtitle: Text(
          '${categoryModel!.numOfExperts}',
          style: getRegularStyle(color: ColorManager.subTitle),
        ),
      ),
    );
  }
}

class RecommendedWidget extends StatelessWidget {
  final RecommendedExpertModel model;

  const RecommendedWidget(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200.0,
        height: 200.0,
        padding: const EdgeInsets.only(left: AppPadding.p4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s14),
            border:
                Border.all(width: 1.0, color: Colors.black.withOpacity(0.3))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(AppSize.s8),
                  topRight: Radius.circular(AppSize.s8)),
              child: Image(
                image: NetworkImage(model.img),
                fit: BoxFit.fill,
                height: 160,
                width: 200,
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: ColorManager.yellow,
                ),
                Text(
                  '(${model.rating})',
                  style: getMediumStyle(
                      fontSize: AppSize.s10, color: ColorManager.textTitle),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    FavouriteCubit().toggleIcon();
                  },
                  icon: const Icon(Icons.favorite_border),
                )
              ],
            ),
            Text(
              model.name,
              style: getMediumStyle(
                  fontSize: AppSize.s14, color: ColorManager.black),
            ),
            Text(
              model.description,
              style: getMediumStyle(
                  fontSize: AppSize.s12, color: ColorManager.textTitle),
            ),
          ],
        ));
  }
}

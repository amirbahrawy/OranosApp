import 'package:flutter/material.dart';
import 'package:tatware_task/presentation/resources/styles_manager.dart';

import '../../../data/response/responses.dart';
import '../../../domain/models.dart';
import '../../resources/assets_manager.dart';
import '../../resources/colors_manager.dart';
import '../../resources/strings_manager.dart';
import '../../resources/values_manager.dart';
import 'home_widgets.dart';

class HomeScreen extends StatelessWidget {
  final List<CategoryModel> categoryModels = getCategoryModels();
  final List<RecommendedExpertModel> recommendedModels = getRecommendedModels();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: AppSize.s10, right: AppSize.s10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.recommendedExperts,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.linear_scale)),
                ],
              ),
            ),
            const SizedBox(
              height: AppSize.s10,
            ),
            SizedBox(
              height: 270.0,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: recommendedModels.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      Padding(
                        padding: const EdgeInsets.all(AppSize.s8),
                        child: RecommendedWidget(recommendedModels[index]),
                      )),
            ),
            const SizedBox(height: AppSize.s20,),
            Padding(
              padding:
                  const EdgeInsets.only(left: AppSize.s10, right: AppSize.s10),
              child: Text(
                AppStrings.onlineExperts,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const SizedBox(height: AppSize.s20,),
            SizedBox(
              height: 150.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(AppSize.s8),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: const [
                              CircleAvatar(
                                backgroundColor: ColorManager.circleGrey,
                                radius: 35.0,
                              ),
                              Padding(
                                padding: EdgeInsets.all(AppSize.s4),
                                child: CircleAvatar(
                                  backgroundColor: ColorManager.green,
                                  radius: 5,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: AppSize.s10,
                          ),
                          Text(
                            'Lance',
                            style:
                                getRegularStyle(color: ColorManager.textTitle),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: AppSize.s10,
            ),
          ],
        ),
        DraggableScrollableSheet(
            minChildSize: 0.05,
            maxChildSize: 0.65,
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: ListView(
                  controller: scrollController,
                  children: [
                    const Image(image: AssetImage(ImageAssets.bottom)),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: categoryModels.length,
                        itemBuilder: (context, index) =>
                            ExpertWidget(categoryModels[index]))
                  ],
                ),
              );
            })
      ],
    );
  }
}

List<CategoryModel> getCategoryModels() => Responses.getCategories();

List<RecommendedExpertModel> getRecommendedModels() =>
    Responses.getRecommendedExperts();

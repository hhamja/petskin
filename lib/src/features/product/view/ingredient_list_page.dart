import 'package:flutter/material.dart';
import 'package:petskin/src/config/constant/app_color.dart';
import 'package:petskin/src/core/component/default_layout/default_layout.dart';
import 'package:petskin/src/core/component/icon_button/custom_back_icon_bt.dart';
import 'package:petskin/src/core/component/text_button/custom_outline_text_button.dart';
import 'package:petskin/src/features/product/component/ingredient_composition.dart';
import 'package:petskin/src/features/product/component/ingredient_list_tile.dart';
import 'package:petskin/src/features/product/model/ingredient_model.dart';

class IngredientListPage extends StatefulWidget {
  final List<IngredientModel> ingredientList;

  const IngredientListPage({
    super.key,
    required this.ingredientList,
  });

  @override
  State<IngredientListPage> createState() => _IngredientListPageState();
}

class _IngredientListPageState extends State<IngredientListPage> {
  late List<String> undeterminedRisk;
  late List<String> lowRiskEwgList;
  late List<String> mediumRiskEwgList;
  late List<String> highRiskEwgList;
  late Color color;

  // ewg 4개의 등급으로 리스트 분할
  void splitEwgList(list) async {
    // ewg만 추출한 List
    final List<String> ewgList = widget.ingredientList.map((ingredient) {
      final int dashIndex = ingredient.ewg.indexOf('-');
      if (dashIndex != -1) {
        // '-' 이후 문자열 추출
        return ingredient.ewg.substring(dashIndex + 1);
      } else {
        // 그대로 반환
        return ingredient.ewg;
      }
    }).toList();

    // 등급 별로 4개의 ewg list 세분화
    ewgList.forEach((e) {
      if (e == '0') {
        undeterminedRisk.add(e);
      } else if (e == '1' || e == '2') {
        lowRiskEwgList.add(e);
      } else if (e == '3' || e == '4' || e == '5' || e == '6') {
        mediumRiskEwgList.add(e);
      } else {
        highRiskEwgList.add(e);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    undeterminedRisk = [];
    lowRiskEwgList = [];
    mediumRiskEwgList = [];
    highRiskEwgList = [];
    splitEwgList(widget.ingredientList);
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    return DefaultLayout(
      leading: const CustomBackButton(),
      title: const Text(
        '성분',
      ),
      actions: [
        InkWell(
          onTap: () async {
            // 성분에 대한 추가정보를 알려주는 info 아이콘
          },
          child: const Padding(
            padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
            child: Icon(Icons.info_outline),
          ),
        ),
      ],
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 34),
              child: IngredientComposition(
                undeterminedRisk: undeterminedRisk.length,
                lowRisk: lowRiskEwgList.length,
                mediumRisk: mediumRiskEwgList.length,
                highRisk: highRiskEwgList.length,
              ),
            ),
            const Divider(
              color: LIGHT_GREY_COLOR,
              thickness: 5,
            ),
            const SizedBox(height: 21),
            const Text(
              '전성분',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: TEXT_COLOR,
              ),
            ),
            ListView.separated(
              controller: controller,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                // ewg만 추출한 List
                final List<String> ewgList =
                    widget.ingredientList.map((ingredient) {
                  final int dashIndex = ingredient.ewg.indexOf('-');
                  if (dashIndex != -1) {
                    // '-' 이후 문자열 추출
                    return ingredient.ewg.substring(dashIndex + 1);
                  } else {
                    // 그대로 반환
                    return ingredient.ewg;
                  }
                }).toList();
                final String ewg = ewgList[index];
                if (ewg == '0') {
                  color = NO_EWG_COLOR;
                } else if (ewg == '1' || ewg == '2') {
                  color = LOW_EWG_COLOR;
                } else if (ewg == '3' ||
                    ewg == '4' ||
                    ewg == '5' ||
                    ewg == '6') {
                  color = MEDIUM_EWG_COLOR;
                } else {
                  color = HIGH_EWG_COLOR;
                }
                return IngredientListTile(
                  color: color,
                  ewg: widget.ingredientList[index].ewg,
                  name: widget.ingredientList[index].korName,
                  purpose: widget.ingredientList[index].blendingPurpose,
                );
              },
              itemCount: widget.ingredientList.length,
              separatorBuilder: (context, index) => const Divider(
                color: LIGHT_GREY_COLOR,
                thickness: 1,
                height: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 34.0),
              child: CustomOutlineTextButton(
                w: MediaQuery.of(context).size.width,
                h: 50,
                content: '성분 정보 수정 요청하기',
                onPressed: () {},
                color: TEXT_COLOR,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

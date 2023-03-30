import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/config/constant/app_color.dart';
import 'package:petskin/src/config/router/app_router.gr.dart';
import 'package:petskin/src/features/common/presentation/widget/text_form_field/custom_text_form_filed.dart';
import 'package:petskin/src/features/product/presentation/controller/search_controller.dart';

class SearchPageBody extends ConsumerStatefulWidget {
  const SearchPageBody({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchPageBodyState();
}

class _SearchPageBodyState extends ConsumerState<SearchPageBody> {
  final FocusNode focusNode = FocusNode();
  final TextEditingController textController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    ref.read(searchListProvider.notifier).getSearchList();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> searchList = ref.watch(searchListProvider);
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 34),
          const Text(
            '어떤 제품을 찾으시나요?',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 21),
          Container(
            height: 50,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: textController.text.isNotEmpty
                      ? PRIMARY_COLOR
                      : GREY_COLOR,
                ),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    maxLine: 1,
                    maxLength: 50,
                    focusNode: focusNode,
                    controller: textController,
                    // 확인 버튼 클릭시
                    onFieldSubmitted: textController.text == ''
                        ? null
                        : (value) async {
                            // 결과 페이지로 이동
                            context.router.push(
                                SearchResultRoute(query: textController.text));
                            // 최근검색어에 추가
                            ref
                                .read(searchListProvider.notifier)
                                .addSearchQuery(value);
                            // 입력 텍스트 비우기
                            textController.text = '';
                          },
                    onChanged: (value) => setState(() => value),
                    onTap: () => setState(() => focusNode.requestFocus()),
                    hintText: '검색어를 입력해주세요',
                  ),
                ),
                textController.text != ''
                    ? InkWell(
                        onTap: () => setState(() => textController.text = ''),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(16, 10, 0, 10),
                          child: Icon(
                            Icons.close_sharp,
                            size: 25,
                            color: GREY_COLOR,
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
          const SizedBox(height: 89),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '최근검색어',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              searchList.isNotEmpty
                  ? InkWell(
                      onTap: () async => ref
                          .read(searchListProvider.notifier)
                          .removeAllSearchIndex(),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(16, 10, 0, 10),
                        child: Text(
                          '전체삭제',
                          style: TextStyle(
                            fontSize: 14,
                            color: GREY_COLOR,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
          searchList.isNotEmpty
              ? ListView.builder(
                  shrinkWrap: true,
                  controller: scrollController,
                  itemCount: searchList.length,
                  itemBuilder: (context, index) => ListTile(
                    contentPadding: EdgeInsets.zero,
                    onTap: () async {
                      // 결과 페이지로 이동
                      context.router
                          .push(SearchResultRoute(query: searchList[index]));
                    },
                    title: Text(
                      searchList[index],
                      maxLines: 3,
                      style: const TextStyle(
                        fontSize: 18,
                        color: TEXT_COLOR,
                      ),
                    ),
                    trailing: InkWell(
                      onTap: () async => ref
                          .read(searchListProvider.notifier)
                          .removeSearchIndex(index),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(16, 10, 0, 10),
                        child: Icon(
                          Icons.close_sharp,
                          size: 21,
                          color: GREY_COLOR,
                        ),
                      ),
                    ),
                  ),
                )
              : const Padding(
                  padding: EdgeInsets.only(top: 55),
                  child: Center(
                    child: Text(
                      '최근 검색어가 없어요 :)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: GREY_COLOR,
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

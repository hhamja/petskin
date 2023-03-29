import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/config/constant/supabase_constant.dart';
import 'package:petskin/src/features/feedback/data/feedback_repository_interface.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

final feedbackRepositoryProvider = Provider<FeedbackRepository>((ref) {
  return FeedbackRepository();
});

class FeedbackRepository implements FeedbackRepositoryInterface {
  final _feedbackRef =
      Supabase.instance.client.from(SupabseConstant.feedbackRef);

  // 유저 제품 및 카테고리 추가 요청 서버에 저장
  @override
  Future addUserFeedback(content) async {
    await _feedbackRef.insert({'content': content});
  }
}

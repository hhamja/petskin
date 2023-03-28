import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/config/constant/supabase_constant.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

final feedbackRepositoryProvider = Provider<FeedbackRepository>((ref) {
  return FeedbackRepository();
});

class FeedbackRepository {
  final _feedbackRef =
      Supabase.instance.client.from(SupabseConstant.feedbackRef);

  // 유저 피드백 추가
  Future addUserFeedback(content) async {
    await _feedbackRef.insert({'content': content});
  }
}

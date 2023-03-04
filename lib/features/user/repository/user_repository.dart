import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateNotifierProvider = StateNotifierProvider<Counter, int>((ref) {
  return Counter();
});

class Counter extends StateNotifier<int> {
  Counter() : super(0);

  void increment() => state++;
  void decrement() => state--;
}

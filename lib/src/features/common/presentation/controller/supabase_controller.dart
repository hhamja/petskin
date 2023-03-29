import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/config/constant/supabase_constant.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

final productTable = Provider(
    (ref) => Supabase.instance.client.from(SupabseConstant.productRef));
final ingredientTable = Provider(
    (ref) => Supabase.instance.client.from(SupabseConstant.ingredientRef));
final productIngredientTable =
    Provider((ref) => SupabseConstant.productIngredientRef);

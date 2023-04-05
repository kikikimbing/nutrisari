import 'package:faker/faker.dart';

class GenerateRandomFood {
  static String generateFood() => Faker().food.dish();
}

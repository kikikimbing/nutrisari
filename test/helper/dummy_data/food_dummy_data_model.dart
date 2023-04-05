import 'package:nutrisari/data/models/food/food_model.dart';
import 'package:nutrisari/data/models/nutrients/nutrients_model.dart';
import 'package:nutrisari/data/models/serving_sizes/serving_sizes_model.dart';

const testNutrientsModel = NutrientsModel(
  enercKcal: 429,
  procnt: 14.289999961853027,
  fat: 14.289999961853027,
  chocdf: 71.43000030517578,
  fitbtg: 0.0,
);

const testServingSizesModel = ServingSizesModel(
  uri: "http://www.edamam.com/ontologies/edamam.owl#Measure_gram",
  label: "Gram",
  quantity: 7,
);

const testFoodModel = FoodModel(
  foodId: "food_bwtse5qbmme6vlamyw65bafxjpp1",
  label: "Caesar Salad Croutons, Caesar Salad",
  knownAs: "CAESAR SALAD CROUTONS, CAESAR SALAD",
  nutrients: testNutrientsModel,
  brand: "SALAD",
  category: "Packaged foods",
  categoryLabel: "food",
  foodContentsLabel:
      "ENRICHED FLOUR (WHEAT FLOUR; MALTED BARLEY FLOUR; NIACIN; REDUCED IRON; THIAMIN MONONITRATE; RIBOFLAVIN; FOLIC ACID); CANOLA AND/OR SUNFLOWER OIL (WITH ROSEMARY EXTRACT AND ASCORBIC ACID (TO PRESERVE FRESHNESS]); SUGAR; YEAST; 2% OR LESS OF SALT; WHEY; WHEAT GLUTEN; GARLIC POWDER; ROMANO CHEESE SOLIDS FROM COW'S MILK (PART SKIM MILK; CHEESE CULTURES; SALT; ENZYMES); DEHYDRATED PARSLEY; ONION POWDER; TORULA YEAST; YEAST EXTRACT; SPICES; NATURAL FLAVORS; CITRIC ACID; DISODIUM INOSINATE; DISODIUM GUANYLATE; ASCORBIC ACID; MALTODEXTRIN; ENZYMES; EXTRACTIVES OF ANNATTO AND TURMERIC (COLOR); ROSEMARY EXTRACT.",
  image:
      "https://www.edamam.com/food-img/5fa/5fab5f02c0372272b5e21a11fc41db7d.png",
  servingSizes: [testServingSizesModel],
  servingsPerContainer: 20.0,
);

const testListFoodModel = [testFoodModel];

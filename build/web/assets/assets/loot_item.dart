// loot_item.dart
class LootItem {
  final String name; //name of loot item
  final String diceRoll; // e.g. "1d6" or "2d8"
  final int dropChance;  // percent chance, e.g. 75

  LootItem({
    required this.name,
    required this.diceRoll,
    required this.dropChance,
  });
//convert the JSON list to be used by function
factory LootItem.fromJson(Map<String, dynamic> json) {
    return LootItem(
      name: json['name'],
      diceRoll: json['diceRoll'],
      dropChance: json['dropChance'],
    );
  }

}

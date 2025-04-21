import 'loot_item.dart';

// creature.dart
class Creature {
  final String name;
  final List<LootItem> lootTable;

  Creature({
    required this.name,
    required this.lootTable,
  });
//convert the JSON list to be used by function
  factory Creature.fromJson(Map<String, dynamic> json) {
    var lootJson = json['lootTable'] as List<dynamic>;
    List<LootItem> loot = lootJson.map((item) => LootItem.fromJson(item)).toList();

    return Creature(name: json['name'], lootTable: loot);
  }
}

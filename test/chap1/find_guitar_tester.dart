import 'package:flutter_test/flutter_test.dart';
import 'package:head_first_ooad/chap1/enum.dart';
import 'package:head_first_ooad/chap1/guitar.dart';
import 'package:head_first_ooad/chap1/guitar_spec.dart';
import 'package:head_first_ooad/chap1/inentory.dart';

void main() {
  Inventory inventory = Inventory();
  test('What Erin likes', () {
    initializeInventory(inventory);
    GuitarSpec whatErinLikes = GuitarSpec(GuitarBuilder.Fender, 'Stratocastor',
        Type.Electric, Wood.Alder, Wood.Alder, 12);

    List<Guitar>? matchingGuitars = inventory.search(whatErinLikes);
    if (matchingGuitars!.isNotEmpty) {
      for (int i = 0; i < matchingGuitars.length; i++) {
        Guitar guitar = matchingGuitars[i];
        GuitarSpec guitarSpec = guitar.getSpec;
        print("Erin, you might like this " +
            guitarSpec.getBuilder.toString() +
            " " +
            guitarSpec.getModel +
            " " +
            guitarSpec.getType.toString() +
            " guitar:\n   " +
            guitarSpec.getBackWood.toString() +
            " back and sides,\n   " +
            guitarSpec.getTopWood.toString() +
            " top.\nYou can have it for only \$" +
            guitar.getPrice.toString() +
            "!");
      }
    } else {
      print('Sorry, Erin, we have nothing for you.');
    }
  });
}

void initializeInventory(Inventory inventory) {
  inventory.addGuitar("11277", GuitarBuilder.Collins, "CJ", Type.Electric,
      Wood.IndianRosewood, Wood.Stika, 3999.95, 6);
  inventory.addGuitar("V95693", GuitarBuilder.Fender, "Stratocastor",
      Type.Electric, Wood.Alder, Wood.Alder, 1499.95, 6);
  inventory.addGuitar("V9512", GuitarBuilder.Fender, "Stratocastor",
      Type.Electric, Wood.Alder, Wood.Alder, 1549.95, 6);
  inventory.addGuitar("122784", GuitarBuilder.Martin, "D-18", Type.Acoustic,
      Wood.Mahogani, Wood.Adirodack, 5495.95, 6);
  inventory.addGuitar("76531", GuitarBuilder.Martin, "OM-28", Type.Acoustic,
      Wood.BrazilianRosewood, Wood.Adirodack, 6295.95, 6);
  inventory.addGuitar("70108276", GuitarBuilder.Gibson, "Les Paul",
      Type.Electric, Wood.Mahogani, Wood.Maple, 2295.95, 6);
  inventory.addGuitar("82765501", GuitarBuilder.Gibson, "SG '61 Reissue",
      Type.Electric, Wood.Mahogani, Wood.Mahogani, 1890.95, 6);
  inventory.addGuitar("77023", GuitarBuilder.Martin, "D-28", Type.Acoustic,
      Wood.BrazilianRosewood, Wood.Adirodack, 6275.95, 6);
  inventory.addGuitar("1092", GuitarBuilder.Olson, "SJ", Type.Acoustic,
      Wood.IndianRosewood, Wood.Cedar, 12995.95, 12);
  inventory.addGuitar("566-62", GuitarBuilder.Ryan, "Cathedral", Type.Acoustic,
      Wood.Cocobolo, Wood.Cedar, 8999.95, 12);
  inventory.addGuitar("6 29584", GuitarBuilder.Olson, "Dave Navarro Signature",
      Type.Electric, Wood.Mahogani, Wood.Maple, 2100.95, 6);
}

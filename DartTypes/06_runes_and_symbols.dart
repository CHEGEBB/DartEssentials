// Created by CHEGEBB
// Dart Runes (Unicode) and Symbols

void main() {
  var heart = '\u2665'; // Unicode for ♥
  print('Unicode symbol: $heart');

  Symbol sym = #myVariable;
  print('Symbol: $sym');
    // 🧙‍♀️ Summon emojis and symbols using runes
  Runes magicRunes = Runes('\u2764\u1F60A\u1F680');  // ❤️😊🚀

  // 🔮 Decoding the rune spell into a readable string
  String castedMagic = String.fromCharCodes(magicRunes);
  
  // 🔮 Output the magic!
  print("✨ Casting runes: $castedMagic"); 
}

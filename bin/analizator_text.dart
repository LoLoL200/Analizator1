// Створіть програму для аналізу введеного тексту
  // Порахуйте кількість слів, речень
  // Знайдіть найдовше слово
  // Створіть Set унікальних слів
  // Використайте цикли для обробки тексту
  // Зробіть Map частоти використання слів
import 'dart:io';

void main() {
  String Text1 = ("Ведіть текст:");
  print(Text1);
  dynamic Text = stdin.readLineSync();
  //Прибрав знаки пунктуації та залишив слова та пробіли
    String cleanedText = Text.replaceAll(RegExp(r'[^\wа-яА-ЯёЁ\s]'), '');

    // Разбиваємо текст на слова
    List<String> words = cleanedText.split(RegExp(r'\s+')).where((w) => w.isNotEmpty).toList();

    //Рахуємо кілкість слів
    int wordCount = words.length;

    //Рахуємо кілкість речень
    int sentenceCount = RegExp(r'[.!?]+').allMatches(Text).length;

    //найдовше слово
    String longestWord = words.isNotEmpty ? words.reduce((a, b) => a.length > b.length ? a : b) : "";
    
     //Set унікальних слів
     Set<String> uniqueWords = words.toSet();

     //Map частоти використання слів
     Map<String, int> wordFrequency = {};
     for (var word in words) {
    wordFrequency[word] = (wordFrequency[word] ?? 0) + 1;
     }


       //Вивід у консоль 
       print( "Кількість слів:$wordCount");
       print("Кількість речень:$sentenceCount");
       print("Найдовше слово:$longestWord");
       print("Set унікальних слів:$uniqueWords ");
       print('Map частоти використання слів:$wordFrequency');

       
}
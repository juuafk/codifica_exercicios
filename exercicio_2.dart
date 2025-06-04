import 'dart:io';
void main() {

  print("nome: ");
  String nome = stdin.readLineSync()!;
  print("idade: ");
  String idade = stdin.readLineSync()!;
  print("cidade: ");
  String cidade = stdin.readLineSync()!;

  String frase = "$nome tem $idade anos e mora em $cidade.";

  print(frase);

}
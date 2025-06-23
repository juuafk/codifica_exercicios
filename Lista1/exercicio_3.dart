import 'dart:io';
void main() {

  print("orçamento: ");
  String Orcamento = stdin.readLineSync()!;
  print("preço do item 1: ");
  String Preco1 = stdin.readLineSync()!;
  print("preço do item 2: ");
  String Preco2 = stdin.readLineSync()!;
  print("preço do item 3: ");
  String Preco3 = stdin.readLineSync()!;
  
  final double orcamento = double.parse(Orcamento);
  double preco1 = double.parse(Preco1);
  double preco2 = double.parse(Preco2);
  double preco3 = double.parse(Preco3);

  double total = preco1 + preco2 + preco3;

  String resultado = (orcamento >= total)
      ? "dentro do orçamento!"
      : "orçamento estourado!";

  print(resultado);
  print("custo total: $total");
}
import '../lib/produto_1.dart';

void main() {
  Produto p1 = Produto("12345", "placa-mãe", 1263);
  Produto p2 = Produto("67890", "processador", 1672);

  print("--- Produto 1 ---");
  print("Código: ${p1.codigo}\nNome: ${p1.nome}\nPreço: R\$ ${p1.preco}\n");

  print("--- Produto 2 ---");
  print("Código: ${p2.codigo}\nNome: ${p2.nome}\nPreço: R\$ ${p2.preco}\n");

}

import '../lib/produto_3.dart';

void main() {
  var produto = Produto(codigo:"13579", nome:"teclado mecânico", preco: 350.0);

  produto.novoPreco = -20;
  print("Preço atual: R\$ ${produto.preco}");

  produto.novoPreco = 400.0;
  print("Preço atual: R\$ ${produto.preco}");
}
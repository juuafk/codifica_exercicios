import '../lib/produto_3.dart';
import '../lib/carrinhodecompras_4.dart';

void main() {
  var p1 = Produto(codigo:'12345', nome:"placa-mãe", preco: 1263.0);
  var p2 = Produto(codigo:"67890", nome:"processador", preco: 1672.0);
  var p3 = Produto(codigo:"13579", nome:"teclado mecânico", preco: 350.0);

  var carrinho = CarrinhoDeCompras();
  carrinho.adicionarProduto(p1);
  carrinho.adicionarProduto(p2);
  carrinho.adicionarProduto(p3);

  carrinho.exibirCarrinho();
}
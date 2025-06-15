import '../lib/produto_3.dart';

class CarrinhoDeCompras {
    final List<Produto> _produtos = [];

 void adicionarProduto(Produto produto) {
    _produtos.add(produto);
 }
  double calcularTotal() {
    return _produtos.fold(0.0, (total, produto) => total + produto.preco);
  }
void exibirCarrinho() {
    print("--- Itens no Carrinho ---");
    for (var produto in _produtos) {
      print("- ${produto.nome}: R\$ ${produto.preco.toStringAsFixed(2)}");
    }
    print("-------------------------");
    print("Total do Carrinho: R\$ ${calcularTotal().toStringAsFixed(2)}");
  }
}
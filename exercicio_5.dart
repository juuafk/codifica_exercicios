import '../lib/carrinhodecompras_5.dart';
import '../lib/produtoalimenticio_5.dart';
import '../lib/produtoeletronico_5.dart';

void main() {
  var eletronico = ProdutoEletronico(codigo: "24680", nome: "microondas", preco: 845.0, garantiaMeses: 10);
  var alimento = ProdutoAlimenticio(codigo: "35711", nome: "pão", preco: 6.77, dataValidade: "19/06/2025");

  var carrinho = CarrinhoDeCompras();
  carrinho.adicionarProduto(eletronico);
  carrinho.adicionarProduto(alimento);

  carrinho.exibirCarrinho();
}
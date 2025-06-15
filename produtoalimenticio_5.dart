import '../lib/produto_3.dart';

class ProdutoAlimenticio extends Produto {
  final String _dataValidade;

  ProdutoAlimenticio({required String codigo, required String nome, required double preco, required String dataValidade}) 
   : _dataValidade = dataValidade,
    super(codigo: codigo, nome: nome, preco: preco);

    @override
    void exibirDetalhes() {
      super.exibirDetalhes();
      print("Data de validade: $_dataValidade");
    }
}
import '../lib/produto_3.dart';

class ProdutoEletronico extends Produto {
  final int _garantiaMeses;

  ProdutoEletronico({required String codigo, required String nome, required double preco, required int garantiaMeses}) 
   : _garantiaMeses = garantiaMeses,
    super(codigo: codigo, nome: nome, preco: preco);

    @override
    void exibirDetalhes() {
      super.exibirDetalhes();
      print("Garantia: $_garantiaMeses meses");
    }
}
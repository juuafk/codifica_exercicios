class Produto {
  String codigo;
  String nome;
  double preco;

  static int totalDeProdutos = 0;

  Produto(this.codigo, this.nome, this.preco) {
    totalDeProdutos++;
  }

  void exibirDetalhes() {
    print('Código: $codigo\nNome: $nome\nPreço: R\$ $preco\n');
  }

  void aplicarDesconto(double percentual) {
    if (percentual > 0) {
      preco -= (preco * percentual / 100);
      print('Preço com ${percentual.toStringAsFixed(0)}% de desconto aplicado');
    } else {
      print('Desconto inválido');
    }
  }
}

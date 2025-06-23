class Produto {
  String _codigo;
  String _nome;
  double _preco;

  static int totalDeProdutos = 0;

  Produto({required codigo, required nome, required preco})
    : _codigo = codigo,
      _nome = nome,
      _preco = preco {
    totalDeProdutos++;
  }
  
  String get codigo => _codigo;
  String get nome => _nome;
  double get preco => _preco;

  set novoPreco(double valor) {
    if (valor > 0) {
      _preco = valor;
      print("\nValor atualizado com sucesso!");
    } else {
      print("\nO valor deve ser positivo, R\$ $valor é invalido. O valor R\$ $_preco foi mantido");
    }
  }

  void exibirDetalhes() {
    print("--- Detalhes do Produto ---");
    print('Código: $codigo\nNome: $nome\nPreço: R\$ $preco\n');
  }

  void aplicarDesconto(double percentual) {
    if (percentual > 0) {
      _preco -= (_preco * percentual / 100);
      print('Preço com ${percentual.toStringAsFixed(0)}% de desconto aplicado');
    } else {
      print('Desconto inválido');
    }
  }
}

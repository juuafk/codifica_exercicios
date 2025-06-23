import '../lib/produto_2.dart';

void main() {
Produto p1 = Produto("12345", "placa-mãe", 1263);

print("--- Detalhes Originais ---");
p1.exibirDetalhes();

print("--- Detalhes com Desconto ---");
p1.aplicarDesconto(15);
p1.exibirDetalhes();

print("Total de produtos criados: ${Produto.totalDeProdutos}");
}


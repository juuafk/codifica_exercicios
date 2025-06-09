import 'dart:io';

String lista() {
  String item = '';
  String Lista  = '';
  int cont = 0;

  while(true) {
    print("Digite um item da lista de compras(digite 'fim' para finalizar): ");
    item = stdin.readLineSync()!;
    
    if (item == 'fim') break;

    if (cont == 0) {
      Lista = '$item';
    }
    else {
      Lista = '$Lista\n$item';
    }
    cont++;
  }

  return Lista;
}
void salvarListaEmArquivo(String Lista) async {
  String conteudo = Lista;

  print("Digite o nome para o arquivo txt: ");
  String caminho = stdin.readLineSync()! + '.txt';
 
  File arquivo = File(caminho);
  await arquivo.writeAsString(conteudo);
  
  print("Lista de compras salva em '$caminho' com sucesso!!");

}


void main() {
  String Lista = lista();
  salvarListaEmArquivo(Lista);
}

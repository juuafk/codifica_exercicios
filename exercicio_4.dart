import 'dart:io';

void leArquivo(String caminho) async { //async sinaliza a possibilidade de funcoes demoradas
  
  try { //tenta abrir
    File arquivo = File(caminho); //cria uma variavel file com o caminho que o usuario forneceu
    String conteudo = await arquivo.readAsString(); //le o arquivo com o await(que pode demorar)
    
    print("Conteudo do arquivo:\n$conteudo\nArquivo '$arquivo' lido e fechado");
  }
  catch(e) { //caso nao consiga abrir
      print("Ocorreu um erro $e");
  }
}

void main() {
  print("Digite o nome do arquivo (ou caminho se necessario):");
  String caminho = stdin.readLineSync() ?? "0";
  leArquivo(caminho);

}
import 'dart:io';

void tabuada(int x) {        
  
  print("Tabuada do $x:");
  for (int i = 1; i <= 10; i++) {  
    print("$x x $i = ${x * i}");   
  }
}
void main() {

  print("Digite um numero para ver a tabuada: ");
  String numero = stdin.readLineSync() ?? "0";
  int n = int.parse(numero);

  tabuada(n);
}
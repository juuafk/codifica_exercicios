import 'dart:io';

void main() {
  String nota1, nota2, nota3;
  
  print("Digite a primeira nota: ");
  nota1 = stdin.readLineSync() ?? '0';

  print("Digite a segunda nota: ");
  nota2 = stdin.readLineSync() ?? '0';
  
  print("Digite a terceira nota: ");
  nota3 = stdin.readLineSync() ?? '0';

  double n1 = double.parse(nota1);
  double n2 = double.parse(nota2);
  double n3 = double.parse(nota3);

  bool valido = (n1 <= 10 && n1 >= 0) && (n2 <= 10 && n2 >= 0) && (n3 <= 10 && n3 >= 0);

  if (valido) {
    double media = (n1 + n2 + n3) / 3;
    print("Média: ${media.toStringAsFixed(2)}");
  }

  else{
    print("Nota inválida inserida. As notas devem ser entre 0 e 10");
  }
}
import 'dart:io';
void main() {

String nLido1;
String nLido2;

nLido1 = stdin.readLineSync()!;
nLido2 = stdin.readLineSync()!;

double n1, n2, soma, sub, div, mult, resto, media;

n1 = double.parse(nLido1);
n2 = double.parse(nLido2);

soma = n1 + n2;
sub = n1 - n2;
mult = n1 * n2;
div = n1 / n2;
media = (n1 + n2) / 2;
resto = n1 % n2;

print("numero 1: $n1\nnumero 2: $n2\n--- RESULTADOS ---\nsoma: $soma\nsubtração: $sub\nmultiplicação: $mult\ndivisão: $div\nmédia: $media\nresto da divisão: $resto");

}
void main() {
  const double celsiusOriginal = 10.0;
  const double fahrenheit = (celsiusOriginal * 9/5) + 32;

  String fahrenheitFinal = fahrenheit.toStringAsFixed(2);

  double celsius = (fahrenheit - 32) * 5/9; 
  String celsiusFinal = celsius.toStringAsFixed(2);

  print("temperatura original(celsius): $celsiusOriginal\nconvertido em fahrenheit: $fahrenheitFinal\nreconvertido em celsius: $celsiusFinal");

}
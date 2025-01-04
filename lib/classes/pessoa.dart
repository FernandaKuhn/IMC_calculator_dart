class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa({required this.nome, required this.peso, required this.altura});

  double calcularIMC() {
    return peso / (altura * altura);
  }

  @override
  String toString() {
    return "Nome: $nome, Peso: ${peso.toStringAsFixed(1)}, Altura: ${altura.toStringAsFixed(2)}";
  }
}

/* 1. Variáveis e Tipos de Dados
Conceito:
int, double, String, bool
Listas (List)
Mapas (Map)
Por que isso importa?
Seu app vai armazenar:
Ano → int
Modelo/Marca/Placa → String
Lista de veículos → List
Mini-desafio:
Crie um programa Dart que:
Armazene 2 veículos usando Map
Guarde tudo em uma List
Imprima no console 

void main() {
  Map<String, dynamic> carro1 = {'Marca': 'Toyota', 'Modelo': 'Corolla', 'Ano': 2011, 'Placa': 'ABC1D23'};
  Map<String, dynamic> carro2 = {'Marca': 'Chevrolet', 'Modelo': 'S10', 'Ano': 2020, 'Placa': 'EFG4H56'};

  List<Map<String, dynamic>> carros = [carro1, carro2];


  for(int i=0; carros.length > i; i++) {
      print('''
      Marca: ${carros[i]['Marca']}
      Modelo: ${carros[i]['Modelo']}
      Ano: ${carros[i]['Ano']}
      Placa: ${carros[i]['Placa']}
      ''');
  }
}


2. Controle de Fluxo
Conceito:
if, else
switch
for, while

Por que isso importa?
Você vai validar dados:
Placa vazia?
Ano válido?

Mini-desafio:
Peça um ano e verifique:
Se é maior que 1886 (primeiro carro da história)
Se for inválido, exiba erro



void main() {
 
  
  int ano = 1886;

  if(ano >= 1886) {
    print('Ano válido!');
  } else {
    print('Ano inválido!');
  }
 
}



bool validarPlaca(String placa) {
  return placa.length == 7;
}

void main() {
  String placaVeiculo = 'ABC1D23';
  if (validarPlaca(placaVeiculo)) {
    print('Placa válida');
  } else {
    print('Placa inválida');
  }
}

Mini-desafio:
Crie uma classe Veiculo com:
ano
modelo
marca
placa

E um método:
void exibirDados()

*/

class Veiculo {
  String marca;
  String modelo;
  String placa;
  int ano;

  Veiculo({
    required this.marca,
    required this.modelo,
    required this.placa,
    required this.ano,
  });

  void exibirDados() {
    print('''
Marca: $marca
Modelo: $modelo
Placa: $placa
Ano: $ano
''');
  }

}

void main() {
  Veiculo veiculo1 = Veiculo(
    marca: 'Toyota',
    modelo: 'Corolla',
    placa: 'ABC1D23',
    ano: 2011
    );
  
  Veiculo veiculo2 = Veiculo(
    marca: 'Chevrolet',
    modelo: 'S10',
    placa: 'EFG4H56',
    ano: 2020
    );
  
  List<Veiculo> veiculos = [veiculo1, veiculo2];

  for (Veiculo veiculo in veiculos) {
    veiculo.exibirDados();
  }
}



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
Imprima no console */

Map carro1 = {'Marca': 'Toyota', 'Modelo': 'Corolla', 'Ano': 2011, 'Placa': 'ABC1D23'};
Map carro2 = {'Marca': 'Chevrolet', 'Modelo': 'S10', 'Ano': 2020, 'Placa': 'EFG4H56'};



List<Map> carros = [carro1, carro2];


void main() {
  for(int i=0; i<carros.length; i++) {
    print(carros[i]);
  }
}
# Avaliação 02 - Agregação em Dart

Código desenvolvido para a Avaliação 02, focado em praticar o conceito de **Agregação** e conversão de objetos para **JSON** usando Dart.

## Como funciona o código?
O programa cria uma estrutura onde:
* Uma **EquipeProjeto** tem vários **Funcionários**.
* Cada **Funcionário** pode (ou não) ter **Dependentes**.

Como é uma *Agregação*, se o projeto acabar, os funcionários e dependentes continuam existindo independentemente.

## O que a função `main()` faz (Passo a Passo):
1. Cria os dependentes (Arthur, Beatriz e Carlos).
2. Cria os funcionários e já vincula os dependentes criados para cada um (Carla Souza ficou sem nenhum).
3. Junta todos os funcionários em uma lista.
4. Cria o projeto "Sistema de Vendas" passando essa lista de funcionários.
5. Transforma o objeto do projeto inteiro em um mapa (`toJson`) e printa no terminal formatado como JSON.

## Saída esperada no terminal:
```json
{
 "nomeProjeto": "Sistema de Vendas",
 "funcionarios": [
  {
   "nome": "Ana Silva",
   "dependentes": [{"nome": " Arthur"}, {"nome": "Beatriz"}]
  },
  {
   "nome": "Bruno Costa",
   "dependentes": [{"nome": "Carlos"}]
  },
  {
   "nome": "Carla Souza",
   "dependentes": []
  }
 ]
}
```

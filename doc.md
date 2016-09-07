# Big Points

## Fluxo do Jogo

0. **Sistema**:	Gera _Tabuleiro_
1. **Sistema**: While not end of game
1.1. **Output**:	Printa _Tabuleiro_
1.2. **Input**:		Escolher _Peão_
1.3. **Sistema**:	Processa e retorna _Discos Adjacentes_
1.4. **Output**:	Printa _Tabuleiro_ e _Discos Adjacentes_
1.5. **Input**:		Escolhe _Disco_
1.6. **Sistema**:	Captura _Disco_ e retorna _Estado dos Jogadores_
1.7. **Output**:	Printa _Estado dos Jogadores_
2. **Sistema**:	_Shutdown_

## Definição das Funções

```
gerar_tabuleiro :: Input -> Tabuleiro
printar_tabuleiro :: Tabuleiro -> Output
escolher_peao :: Input -> Numero_Peao
mover_peao :: Numero_Peao -> Discos_Adjacentes
printar_discos_adjacentes :: DIscos_Adjacentes -> Output
escolher_disco :: Input -> Numero_Disco
capturar_disco :: Numero_Disco -> Tabuleiro
```

## Definição das Estruturas

```
Jogo = (Tabuleiro, Jogadores)
Tabuleiro = (Peoes, Discos, Escada)
Peoes = [Peao]
Peao = (Char, Int) --(Cor, Posição): Posição de 0 à 50
Discos = [Disco]
Disco = (Char, Int) --(Cor, Posição): Posição de 1 à 45
Escada = [Peao] --Posição de 46 à 50
Jogadores = [Jogador]
Jogador = [(Char, Int)] --[(Cor, Quantidade)]: Cor R|G|B|Y|P
```

## Divisão de Trabalho

### Vitor Nere
- Printar Tabuleiro
- Escolher Peão
- Escolher Disco

### Mateus Furquim
- Gerar Tabuleiro
- Mover Peão
- Capturar Disco


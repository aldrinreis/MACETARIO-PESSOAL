
# Função `getGrade`

Este projeto contém uma função JavaScript chamada `getGrade`, que converte uma pontuação numérica em uma letra correspondente, de acordo com a seguinte escala:

| Faixa de Pontuação | Nota |
|--------------------|------|
| 100                | A++  |
| 90 - 99            | A    |
| 80 - 89            | B    |
| 70 - 79            | C    |
| 60 - 69            | D    |
| 0 - 59             | F    |

## Função: `getGrade(score)`

### Parâmetro

- `score`: Um número inteiro representando a pontuação de um aluno (entre 0 e 100).

### Retorno

- Retorna uma string representando a nota correspondente à pontuação fornecida.

### Requisitos
- Conhecimento básico de JavaScript.
- Uso de operadores condicionais (`if`, `else if`, `else`).
- Comparadores lógicos (`>=`, `<=`, `===`).

## Como Usar

Você pode chamar a função `getGrade` passando a pontuação de um aluno, e ela irá retornar a nota correspondente com base na tabela de pontuações.

### Exemplo de Uso

```javascript
console.log(getGrade(96));  // Saída: "A"
console.log(getGrade(82));  // Saída: "B"
console.log(getGrade(56));  // Saída: "F"
```

### Explicação

- Para a pontuação **100**, a função retorna `"A++"`.
- Para pontuações entre **90** e **99**, a função retorna `"A"`.
- Para pontuações entre **80** e **89**, a função retorna `"B"`.
- Para pontuações entre **70** e **79**, a função retorna `"C"`.
- Para pontuações entre **60** e **69**, a função retorna `"D"`.
- Para pontuações abaixo de **60**, a função retorna `"F"`.

## Como Executar

Para rodar o código, basta usar um ambiente JavaScript (como o Node.js ou diretamente no navegador) e executar o código contendo a função `getGrade`.

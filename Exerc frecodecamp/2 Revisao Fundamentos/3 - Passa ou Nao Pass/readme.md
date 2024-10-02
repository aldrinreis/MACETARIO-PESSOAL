
# Função `hasPassingGrade`

Este projeto contém duas funções JavaScript: `getGrade` e `hasPassingGrade`.

A função `getGrade` converte uma pontuação numérica em uma letra correspondente com base na escala de notas. A função `hasPassingGrade` verifica se um aluno obteve uma nota suficiente para ser aprovado, onde qualquer nota diferente de "F" é considerada uma nota de aprovação.

## Funções

### `getGrade(score)`

#### Parâmetro
- `score`: Um número inteiro representando a pontuação de um aluno (entre 0 e 100).

#### Retorno
- Retorna uma string representando a nota correspondente à pontuação fornecida.

### `hasPassingGrade(score)`

#### Parâmetro
- `score`: Um número inteiro representando a pontuação de um aluno.

#### Retorno
- Retorna `true` se a pontuação resultar em uma nota de aprovação (diferente de "F"), e `false` se for uma nota de reprovação ("F").

## Exemplo de Uso

```javascript
console.log(hasPassingGrade(96));  // true
console.log(hasPassingGrade(56));  // false
console.log(hasPassingGrade(75));  // true
```

### Explicação

- A função `getGrade` converte a pontuação em uma nota (por exemplo, 96 resulta em "A").
- A função `hasPassingGrade` usa `getGrade` para determinar se a nota resultante é diferente de "F", indicando que o aluno foi aprovado.

## Como Executar

- Primeiro, defina a função `getGrade`, que converte a pontuação em uma nota.
- Em seguida, utilize a função `hasPassingGrade` para verificar se a nota é suficiente para aprovação.
- Para rodar o código, basta usar um ambiente JavaScript, como o Node.js ou diretamente no console do navegador.



# Gerador de Pirâmide em JavaScript

Este repositório contém uma função simples em JavaScript que gera um padrão de pirâmide isósceles retângulo utilizando um caractere especificado e imprime o resultado no console. Você pode personalizar o tamanho da pirâmide alterando a variável `count`.

## Funcionalidade

O script gera uma pirâmide utilizando o caractere `#` por padrão e ajusta a largura de cada linha para criar um padrão simétrico. A pirâmide também pode ser invertida ao alterar a variável `inverted`.

### Exemplo de Saída

Para `count = 10` e `inverted = false`, a saída será:

```
         #
        ###
       #####
      #######
     #########
    ###########
   #############
  ###############
 #################
###################
```

Para `count = 10` e `inverted = true`, a saída será invertida:

```
###################
 #################
  ###############
   #############
    ###########
     #########
      #######
       #####
        ###
         #
```

## Como Usar

Para executar este código:

1. Copie o código em um arquivo JavaScript, por exemplo, `piramide.js`.
2. Abra um terminal e navegue até o diretório onde o arquivo está localizado.
3. Execute o script usando Node.js:

   ```bash
   node piramide.js
   ```

A pirâmide será impressa no console.

## Customização

Você pode personalizar as seguintes variáveis para modificar o comportamento do script:

- **`character`**: O símbolo usado para gerar a pirâmide. Altere o valor desta variável para usar um caractere diferente.
- **`count`**: A altura da pirâmide (número de linhas). Defina isso para qualquer número inteiro positivo para mudar o tamanho da pirâmide.
- **`inverted`**: Defina como `true` para gerar a pirâmide de cabeça para baixo, ou `false` para a orientação normal.


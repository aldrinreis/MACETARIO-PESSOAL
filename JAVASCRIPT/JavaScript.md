# **Java Script**

> ### **Java Script - Fundamentos**

- **Conectando o Java Script**

Usar no fim do body:
```javascript
<script src="/saladeaula/scripts.js"></script>
```
<br>

- **Comentários em Java Script**

Para comentário de linha usar o ```\\```
Comentário de múltiplas linhas /* */:
```javascript
/*
Este é um comentário.
*/
```

- ##### **Variáveis e Constantes**

- **VARIÁVEIS**

- Declarar uma variável ```var nome``` exemplo ``` var nome = "aldrin"```
Uma variável declarada por var pode ter seu valor substituído.
Exemplo: ```nome = "reis"```
Var tem o escopo global e de função.

- Declarar com LET.
1. let não permite sobescrever a variável.
2. exemplo: ```let nome = "aldrin"``` e substituir ```nome = "reis"```
3. Let possui o escopo de bloco e função.

- **CONSTANTES**

- Declarar constante ```const``` exemplo: ```const number = 42``` - valor fixo não alterável.

- **ESCOPO**

1. Global
    1.1 Variáveis declardas fora de qualquer função ou bloco de código(var).
2. Bloco
    2.1 Acesíveis apenas dentro do bloco onde foi declarada (let e const).

- **HOISTING**

- Içamento.
Comportamento do interpretador de içar as declarações de variáveis(var) e funções para o topo do escopo onde foram definidas, antes mesmo da execução do código.

![Escopos Js](/JAVASCRIPT/img/escopos1.png)

- ##### **Tipos de Dados**

- **Tipos Primitivos**
String - Number - boolean - null - undefined

Para verificar o tipo usar o: ```typeof```
Exemplo:
```javascript
let username = "rodrigo"
console.log(username)
console.log(typeof username)
```

- **String**
- Valor declarado entre aspas simples ou duplas ou crase.
```javascript 
console.log('str com aspas simples')
console.log("str com aspas duplas")
console.log("str 'simple dentro da 'dupla")

console.log(`
Uma string com acento grave permite
    escrever multiplas linhas.
`)
```





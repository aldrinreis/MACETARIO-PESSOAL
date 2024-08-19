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

> - ##### **Variáveis e Constantes**

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
console.log("str 'simples dentro da 'dupla")

console.log(`
Uma string com acento grave permite
    escrever multiplas linhas.
`)
```

- **Template Literals**
- Template string e interpolação de strings.

```javascript
let userName = "Aldrin"
let email = "aldrinreisdemorais@gmail.com"

console.log("Olá" + userName)
console.log(`Olá, ${userName} você logou pelo email: ${email}`)
```

- **Number**

- Pode armazenar números inteiros positivos e negativos e de ponto flutuante.
Exemplo: ```const nota = 8.4```

- **Boolean**

- Guarda verdadeiro ou falso [true or false]

- **Undefined e Null**

- undefined é aquilo que ainda não tem valor, não foi definido. O valor null é o vazio definido propositalmente.

- **Conversão e Coerção de tipos**

- Type casting é quando explicitamente você transforma valores.

```javascript
let value = "9"
console.log(Number(value))

let age = 18
console.log(age.toString())
console.log(String(age))

let option = 1 
console.log(Boolean(option))
```

- Coerção de tipos

Quando o js implicitamente tenta converter um dos valores para um tipo compatível antes de realizar a operação.

> - ##### **Expressões e Operadores.**

- **Operadores Aritiméticos**

```javascript
console.log("SOMA", 12 + 8)
console.log("CONCATENAÇÃO", "12" + "8")
console.log("SUBTRAÇÃO", 12 - 8)
console.log("MULTIPLICAÇÃO", 12 * 8)
console.log("DIVISÃO", 12 / 8)
console.log("RESTO", 12 % 8)
console.log("EXPONENCIAÇÃO", 2 ** 8)

```

- **Incremento e Decremento**

```javascript
//Incremento
let number = 10
// number = number + 1
//incermento
number++
console.log(number)
//Decremento
number--
console.log(number)

console.log("Decremento após:", number --) //Após não mostra no console.
console.log("Decremento antes:", --number) //Pode ser usado também para incremento.

//Outra maneira

number +=10 // é o mesmo que number = number + 10
```

- **Ordem de Precedência**

- Define qual operação é realizada primeiro.

![Orden de Precedencia](/JAVASCRIPT/img/ordemdeprecedencia.png)

- Parêntese altera a ordem

- **Operadores Lógicos**

- **Igual e diferente de**

- Considera o conteudo não o tipo. 1 igual a "1"

```javascript
let one = 1
let two = 2

//Considera o conteudo não o tipo. 1 igual a "1"

console.log(one == 1) //true  == igual
console.log(one != two) // true != diferente.

```

- **Estritamente igual e diferente de**

- Considera o tipo e o valor .  1  não é estritamente igual a "1"

```javascript
let one = 1
let two = 2

//Considera o tipo e o valor .  1  não é estritamente igual a "1"

console.log(one === 1) //true  == igual
console.log(two !== "2") // true Tipo diferente.

```

- **Maior igual e Menor igual**

- Maior ```>``` 
- Menor ```<```
- Maior igual ```>=```
- Menor igual ```<=```


- **Operador de Atribuição**

```javascript
let value

//Operador de atribuição
value = 1

//Incremento
value = value +1 /*ou*/ value++ /*ou*/ value +=1

//Decremento
value = value -1 /*ou*/ value-- /*ou*/ value -=1

//Multiplicar
value *=3 /*ou*/ value = value * 3

// Dividir
value /=3 /*ou*/ value = value / 3

// Resto
value %=2 /*ou*/ value = value % 2

// Potencia
value **=2 /*ou*/ value = value ** 2

```

- **Operadores Lógicos**

```javascript
let email = true
let password = true

// And (E) => &&

/*Retorna verdadeiro se todos forem.*/

console.log(email && password)

//OR (ou) => || ao menos um tem que ser verdadeiro 

console.log(email || password)

// NOT Negação => !
console.log(!password)

```

> - ##### **Condicionais e controle de fluxo.**


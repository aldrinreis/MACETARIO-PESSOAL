# **Java Script**

- **[Fundamentos](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptFundamentos.md#java-script---fundamentos)**
- **[Variáveis e Constantes](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptFundamentos.md#vari%C3%A1veis-e-constantes)**
- **[Tipos de Dados](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptFundamentos.md#tipos-de-dados)**
- **[Expressões e Operadores.](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptFundamentos.md#express%C3%B5es-e-operadores)**
- **[Condicionais e controle de fluxo.](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptFundamentos.md#condicionais-e-controle-de-fluxo)**
- **[Tratamento de Exceções](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptFundamentos.md#tratamento-de-exce%C3%A7%C3%B5es)**

<hr>


<br>
<br>

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
<br>

> - ### **Variáveis e Constantes**
<br>

- **VARIÁVEIS**

- Declarar uma variável ```var nome``` exemplo ``` var nome = "aldrin"```
Uma variável declarada por var pode ter seu valor substituído e ela pode ser redeclarada.
Exemplo: ```nome = "reis"```
Var tem o escopo global e de função.

- Declarar com LET.
1. let não permite sobrescrever ou redeclarar a variável.
2. exemplo: ```let nome = "aldrin"``` e substituir ```nome = "reis"```
3. Let possui o escopo de bloco e função.

<br>

- **CONSTANTES**

- Declarar constante ```const``` exemplo: ```const number = 42``` - valor fixo não alterável.
<br>

- **ESCOPO**

1. Global
    1.1 Variáveis declaradas fora de qualquer função ou bloco de código(var).
2. Bloco
    2.1 Acessíveis apenas dentro do bloco onde foi declarada (let e const).
<br>

- **HOISTING**

- Içamento.
Comportamento do interpretador de içar as declarações de variáveis(var) e funções para o topo do escopo onde foram definidas, antes mesmo da execução do código.
<br>

![Escopos Js](/JAVASCRIPT/img/escopos1.png)

<br>
<br>
<br>
<br>


- ### **Tipos de Dados**

- **Tipos Primitivos**
String - Number - boolean - null - undefined

Para verificar o tipo usar o: ```typeof```
Exemplo:
```javascript
let username = "rodrigo"
console.log(username)
console.log(typeof username)
```
<br>

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
<br>

- **Template Literals**
- Template string e interpolação de strings.

```javascript
let userName = "Aldrin"
let email = "aldrinreisdemorais@gmail.com"

console.log("Olá" + userName)
console.log(`Olá, ${userName} você logou pelo email: ${email}`)
```
<br>

- **Number**

- Pode armazenar números inteiros positivos e negativos e de ponto flutuante.
Exemplo: ```const nota = 8.4```
<br>

- **Boolean**
<br>

- Guarda verdadeiro ou falso [true or false]
<br>

- **Undefined e Null**

- undefined é aquilo que ainda não tem valor, não foi definido. O valor null é o vazio definido propositalmente.
<br>

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
<br>

> - ### **Expressões e Operadores.**

<br>

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
<br>

- **Incremento e Decremento**

```javascript
//Incremento
let number = 10
// number = number + 1
//incremento
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
<br>

- **Ordem de Precedência**

- Define qual operação é realizada primeiro.
<br>

![Ordem de Precedência](/JAVASCRIPT/img/ordemdeprecedencia.png)
<br>

- Parêntese altera a ordem
<br>
<br>
<br>
<br>


- #### **Operadores Lógicos**
<br>

- **Igual e diferente de**

- Considera o conteúdo não o tipo. 1 igual a "1"

```javascript
let one = 1
let two = 2

//Considera o conteúdo não o tipo. 1 igual a "1"

console.log(one == 1) //true  == igual
console.log(one != two) // true != diferente.

```
<br>

- **Estritamente igual e diferente de**

- Considera o tipo e o valor .  1  não é estritamente igual a "1"

```javascript
let one = 1
let two = 2

//Considera o tipo e o valor .  1  não é estritamente igual a "1"

console.log(one === 1) //true  == igual
console.log(two !== "2") // true Tipo diferente.

```
<br>

- **Maior igual e Menor igual**

- Maior ```>``` 
- Menor ```<```
- Maior igual ```>=```
- Menor igual ```<=```

<br>

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
<br>

- #### **Operadores Lógicos**

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
<br>
<br>
<br>
<br>


> - ### **Condicionais e controle de fluxo.**

- **Operador condicional ternário**

```javascript
let age = 16
console.log(age >=18 // Condição
? "Você pode dirigir" // Se verdadeiro
: "Você não pode dirigir" // Se falso
)

/*outro modo*/

let idade = 17
let validacao = 17 >= 18 ? "voce pode" : "Não pode"
console.log(validacao)

```
<br>

- **Falsy e Truthy**

- Exemplos de Falsy
* false
* 0 
* -0
* "" string vazia
* null
* undefined
* Nan

- Exemplos de Truthy
* true
* {} - objeto vazio
* [] - array vazio
* número inteiro diferente de 0 negativo ou positivo
* 1.5 numero float
* "aldrin" string com conteudo ou espaço
* Infinity ou - Infinity
<br>

- **IF**

```javascript
let hour = 11

if(hour <= 12){
    console.log("bom dia")
}

```
<br>

- **IF ELSE**

```javascript
let age = 13

if(age >= 18){
    console.log("Voce pode dirigir")
} else{
    console.log("Você não pode")
}
```
<br>

- **Else IF**

```javascript
let hour = 10

if(hour <= 12){
    console.log("bom dia")
}else if(hour >= 12 && hour <= 18){
    console.log("Boa Tarde")
}else{
    console.log("Boa noite")
}

```
<br>

- **Switch**

```javascript
let option = 2

switch (option){
    case 1:
        console.log("Consultar Pedido")
        break
    case 2:
        console.log("Falar com o atendente")
        break
    case 3:
        console.log("Cancelar pedido")
        break
    default:
        console.log("Opção inválida")
}
```
<br>
<br>
<br>
<br>


> - ##### **TRATAMENTO DE EXCEÇÕES**

- **Try / Catch / Finally**

```javascript

try{
    //tenta executar algo
    console.log(result)

} catch(error){
 //captura o erro pra tratar

    console.log(`print do erro: ${error}`)

} finally {
    // executa independente se deu certo ou nao
    // Finally é OPCIONAL
    console.log("FIM")
}

```
<br>

- Lançando exceções.
<br>

```javascript
let result = 1

try {
     if (result === 0){
        throw new Error(" O valor é igual a 0")
     }

} catch (error){
    console.log(error)
} finally {
    console.log("fim")
}
```
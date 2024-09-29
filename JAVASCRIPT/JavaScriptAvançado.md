> # **JavaScript Antes do Framework**
**[JavaScript Moderno](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptAvan%C3%A7ado.md#javascript-moderno)**
**[Métodos de Array](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptAvan%C3%A7ado.md#m%C3%A9todos-de-array)**

<br>

> ### **JavaScript Moderno**

- **Conhecendo o Strict Mode**

Ao ativar esse modo, os erros que eram silenciosos passa a gerar exceções no Javascript.

```javascript
"use strict"

function showMessage(){
    // "use strict" pode ser usado dentro do escopo também.
   //  personaName = "Rodrigo Alves" apontaria um erro
   let personaName = "Rodrigo Alves"

    console.log("Olá" + personaName)
}

showMessage()

Class Student{
    get point(){
        return 7
    }
}

let student = new Student()

// student.point = 7 => retorna que é um método só de leitura
console.log(student.point)

```
<br>

- **Desestruturação de Arrays**

```javascript
const data = ["Rodrigo Alves", "rodrigo@email.com"]

// Desestruturando o array

const [username, email] = data
console.log("Nome: " username)
console.log("email: " email)

const fruits = ["Banana", "Apple", "Orange"]

//Desestruturando somente o primeiro.

const [banana] = fruits //"pega" o primeiro index
console.log(banana)

// Ignorando o primeiro na desestruturação

const [_, apple] = fruits
console.log(apple)

//Ignorando o primeiro e o segundo.

const[, , orange] = fruits

console.log(orange)

```
<br>

- **Desestruturação de Objetos**

```javascript
const product = {
    description: "Teclado",
    price: 150
}

const {description, price} = product
console.log("Descrição:", description)
console.log("Preço:", price)


//Desestruturação na Função

function newProduct({description, price}){
    console.log("#### novo produto ###")
    console.log("Descrição:", description)
    console.log("Preço:", price)

}

newProduct({
    description:"Mouse",
    price: 70
})

```
<br>

- **Conhecendo rest params**

Usado para representar um número indefinido de argumentos no array: **...rest**

```javascript

function values(a, ...rest){
    //console.log(a)
    console.log(...rest)
    console.log(rest.length)
}
//Comumente pode ser usado o args
function values1(a, ...args){
    //console.log(a)
    console.log(...args)
    console.log(args.length)
}

values(1,2,3,4)
values1(1,2,3,4)

```
<br>

- **Conhecendo o Spread**

Permite que um objeto iterável, como uma expressão de array ou uma string seja expandido para ser usado onde zero ou mais argumentos.
Permite expandir elementos de um iterável (como arrays, strings, objetos) em locais onde múltiplos elementos são esperados.

```javascript
const numbers = [1,2,3]

//spread => espalhar

console.log(...numbers)

const data = [
    {
        name: "Rodrigo",
        email: "Rodrigo@email.com",
        avatar: "r.png"
    },
        {
        name: "Joao",
        email: "Joao@email.com",
        avatar: "J.png"
    },
]

//desestrutura os objetos
console.log(...data)
```
<br>
<br>
<br>
<br>

> ### **Métodos de Array**

- **Método MAP**

O método map() chama a função callback recebida por parâmetro para cada elemento do Array original, em ordem, e constrói um novo array com base nos retornos de cada chamada. E no final, devolve o novo array.

```javascript
const products = ["teclado", "Mouse", "Monitor"]

//Percorrer os itens do array.
products.map((item)=>{
    console.log(item)
})


//Sintaxe reduzida
products.map((item) => console.log(item))

// Utilizando o novo objeto retornado
const formatted = products.map((product)=>{
    //return product.toUpperCase()

    return {
        id: Math.random().
        description: product,
    }
})

console.log(formatted)


```
<br>

- **Método filter**

Cria um novo array com todos os elementos que passaram na condição.


```javascript

const words = ['Javascript', 'HTML', 'CSS', 'Web']

const result = words.filter((word)=> word.length > 3)
console.log(result)


const products = [
    {description: "Teclado", price: 150, promotion: true},
    {description: "Mouse", price: 70, promotion: false},
    {description: "Monitor", price: 900, promotion: true}
]

const promotion = products.filter((product)=> product.promotion === true)

console.log(promotion)

```
<br>

- **Método findIndex**

O método findIndex() retorna o índice no array qdo primeiro elemento que satisfizer a condição.
Caso contrário, retorna -1, indicando que nenhum elemento passou no teste

```javascript
const values = [4, 6, 8, 12]

//Retorna 1 primeiro índice do elemento > 4
const index = values.findIndex((value) => value > 4)

console.log(index)
console.log(values[index])

//Exemplo de quando não encontra

console.log(values.findIndex((value) => value > 12))
```
<br>

- **Método Find**

Retorna o valor do primeiro elemento do array que satisfizer a condição. 
Caso contrário, undefined é retornado.

```javascript
const values = [5, 12, 8 ,130 ,44]

//Retorna 12, valor do primeiro elemento que é > 10
const found = values.find((value)=> value > 10)
console.log(found)

//Exemplo com objetos.

const fruits = [
    {name: "apples", quantity: 23},
    {name: "bananas", quantity: 25},
    {name: "oranges", quantity: 52}
]

const result = fruits.find((fruit)=> fruit.name === "bananas")
console.log(result)

```
<br>

- **Método every**

Testa se todos os elementos do array passam na condição e retorna um Boolean

```javascript
const ages = [15, 30, 39, 29]

// Verificando se todas as idades são >= 18

const result = ages.every((age)=> age >= 18)

console.log(result)

```
<br>

- **Método some**

Testa se ao menos um dos elementos no array passa na condição e retorna true ou false

```javascript
const ages = [15, 30, 39, 29]

const result = ages.some((age)=> age < 18)
console.log(result)

```
<br>

- **Método reduce**

O método reduce é utilizado par reduzir um array a um único valor

Parâmetros:
    - Array original (values)
    - Acumulador (accumulator)
    - Valor da iteração (currentValue)
    - valor Inicial (0)
    - Index (index da iteração atual - opcional)

```javascript
const values = [1,2,3,4,5]

const sum = values.reduce((accumulator, currentValue,index)=>{
   
   /*console.log("accumulator", accumulator)
    console.log("currentValue", currentValue)
    console.log("index", index)

    console.log("Soma",accumulator + currentValue)
    console.log("#################################")*/

    return accumulator + currentValue
}, 0)

console.log(sum)
```
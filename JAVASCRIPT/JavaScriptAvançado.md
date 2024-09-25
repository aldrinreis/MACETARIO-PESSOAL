> # **JavaScript Antes do Framework**
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

values(1,2,3,,4)
values1(1,2,3,,4)

```
<br>

- **Conhecendo o Spread**

Permite que um objeto iterável, como uma expressão de array ou uma string seja expandido para ser usado onde zero ou mais argumentos

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
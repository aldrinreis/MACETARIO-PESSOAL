> # **JavaScript Intermediário**


- **[Objetos](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScript%20Intermedi%C3%A1rio.md#objetos)**
- **[Métodos de String](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScript%20Intermedi%C3%A1rio.md#m%C3%A9todos-de-texto)**
- **[Arrays](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScript%20Intermedi%C3%A1rio.md#arrays)**

> ### **Objetos**

- **Criando um Objeto**
```javascript
// Criar um objeto vazio.

const obj = {}
console.log(obj)

// Criar um objeto com propriedades e métodos.

const user = {
    email: "aldrin@email.com",
    age: 17,
    name : {
        first_name : "Aldrin",
        sur_name: "Gonçalves",
    },
    address : {
        street: "Rua X",
        number: 23,
        city: "São Paulo",
        postal_code : "12345-123",
    },

    //Método
    message: () => {
        console.log("OI Flocos")
    }

}
```
<br>

- **Acessando um Objeto**
 
```javascript
//Acessando Propriedades  e Métodos usando a notação de ponto.
console.log(user.email)
console.log(user.name.first_name)

//Acessando o Método.
user.message()

// Usando a notação de colchetes
console.log(user[email])
console.log(user["name"]["first_name"])
user["message"]()
```
<br>

- **Acessando propriedades no contexto do objeto**

```javascript
const user = {
    name : "Rodrigo",
    message: function (){
       console.log(`Olá ${user.name}`)
       console.log(`Olá ${this.name}`) 
        // o js entende que o name se refere ao contexto onde o this é usado.
       // Função na notação de arrow function não funciona.
    },
}

user.message()
```
<br>

- **Atualizando um objeto**

```javascript
const product = {
    name: "teclado",
    quantity: 100,
}

console.log(product.name)
// Atualizando o valor da propriedade.
console.log(product.quantity)
product.quantity = 90
console.log(product.quantity)

//Notação de Colchetes.

product["quantity"] = 50
```
<br>

- **Encadeamento Opcional**

```javascript
    const user = {
        id : 1,
        name: "Rodrigo",
        address : {
            street: "Avenida Brasil",
            city: "São Paulo",
            geo: {
                latitude:  47.8080,
                longitude:  17.5674,
            },
        },
        message: function (){
            console.log(`olá, ${this.name}!`)
        }
    }

    console.log(user?.address?.street) //Caso a propriedade não exista não retornará erro.
    // Em métodos
    user.message?.()

```
<br>

- **Operadora de Coalescência nula - ??**

Operador lógico que retorna o seu operando do lado direito quando o seu operador do lado esquerdo é null ou undefined. Caso contrário, ele retorna o seu operando do lado esquerdo.

```javascript
    let content = null
    console.log(content ?? "Conteúdo padrão")

    content = "Olá"
    console.log(content ?? "Conteúdo padrão")

    console.log(user.picture ?? "default.png")
```
<br>

- **Função construtora**

```javascript
    function createProduct(name){
        const product = {}
        product.name = name
        product.details = function(){
            console.log(`o nome do produto é ${this.name}`)
        }

        return product
    }


const product1 = new createProduct("Teclado")
console.log(product1.name)
product1.details()

const product2 = new createProduct("Mouse")
console.log(product2.name)
product2.details()


// OUTRA FORMA

function Person(name){
    this.name = name
    this.message = function(){
        console.log(`olá ${this.name}`)
    }
}
const person1 = new Person("Rodrigo")
```
<br>

![exemplo de funções construtoras do js](/JAVASCRIPT/img/exemplosfuncoesconstutorasdojs.png)


<br>
<br>
<br>
<br>

> ### **Métodos de Texto**

- **Texto maiúsculo e minúsculo**

```javascript
let message = "Estou estudando os fundamentos de JavaScript"

console.log(message)

//MAIÚSCULO

console.log(message.toUpperCase())

//minúsculo

console.log(message.toLowerCase())
```
<br>

- **Obtendo o comprimento de uma string**

```javascript
let message = "Estou estudando os fundamentos de JavaScript"
console.log(message.length)

//Quantos dígitos tem um número
let value = 12345
console.log(String(value).length)
console.log(value.toString().length)
```
<br>

- **substituindo e fatiando um texto**

```javascript
let message = "Estou estudando os fundamentos de JavaScript"

//Substituindo parte de um texto.

//Dois parâmetros o a ser substituído e o substituidor
console.log(message.replace("fundamentos de JavaScript","Métodos de String"))


//Extraindo parte da String (start , end)

console.log(message.slice(0, 5)) // => posição 0 a 5
//Extraindo de trás para frente
console.log(message.slice(-11))

//Remove espaços em branco no início e final da string
let textWhitSpace = "   Texto de Exemplo   "
console.log(textWhitSpace.trim())
```
<br>

- **Completando uma string**

```javascript
const creditCard = "1234567812344928"
//Pegando os 4 últimos dígitos
const lastDigits = creditCard.slice(-4)

//padStart preenche a string do início
const maskedNumber = lastDigits.padStart(creditCard.length, "X")

//padEnd preenche a string do Final
const number = "123"
console.log(number.padEnd(10, "#"))

```
<br>

- **Separando e Unindo Strings**

```javascript

//Separando a string
let text = "Estudar, Aprender, Praticar"

let separate = text.split(",")

console.log(separate)

let message = "Estou aprendendo JavaScript"
console.log(message.split(" "))


//UNINDO a String

let joined = separate.join()
let joined = separate.join(" - ")
```
<br>

- **Encontrando um conteúdo no texto**

```javascript
let message = "Estou estudando os fundamentos de JavaScript"

//Obtendo a posição da palavra.
console.log(message.indexOf("estudando"))

//Verificar se existe a palavra na String
console.log(message.includes("JavaScript"))
console.log(message.toLowerCase().includes("javascript"))

```
<br>
<br>
<br>
<br>

>### **Arrays**

- **Criando um array com construtor**

```javascript
const newArray = new Array()

console.log(newArray)

console.log(newArray.length)

//Criando com tamanho definido. *Posições vazias
const available = new Array(10)
console.log(available.length)

```

- **Criando e Acessando um array**

```javascript

let fruits = ['Apple', 'Banana', 'Orange']
console.log(fruits)
console.log(fruits.length)

//Acessando índice => começa do 0
console.log(fruits[1])

//Acessando a última posição
console.log(fruits[fruits.length - 1])

```

- **Convertendo uma string para array**

```javascript
let fullName = "Aldrin Reis de Morais"

// Cria o Array separando pelos espaços
console.log(fullName.split(" "))

// Retorno (4) ['Aldrin', 'Reis', 'de', 'Morais']

// Criando array com as letras.

console.log(Array.from(fullName))

/*
Retorno
(21) ['A', 'l', 'd', 'r', 'i', 'n', ' ', 'R', 'e', 'i', 's', ' ', 'd', 'e', ' ', 'M', 'o', 'r', 'a', 'i', 's']

*/
```

- **Adicionado e Removendo Itens do Array**

```javascript
let users = []

//Adicionando ao final com PUSH
users.push("aldrin") 
users.push("flocos")
users.push("night")

console.log(users)


// Adicionado no Inicio com unshift

users.unshift("lulu")

//Removendo do Inicio com o shift

users.shift()
console.log(users)

//Removendo do final com pop

users.pop()
console.log(users)
```

- **Usando o Índice**

```javascript
let fruits = ['apple' , 'watermelon', 'strawberry']

//Retornando a posição ou o índice do elemento
// Quando não encontra retorna -1

let position = fruits.indexOf('watermelon')
console.log(position)

//Excluindo pelo índice => posição inicial e quantos itens
//A partir do 1 remove 2
fruits.splice(1, 2) 

//Removeu 1 com a posição que foi passada
fruits.splice(position, 1)

```

- **Quais elementos o array aceita?**

```javascript
let myArray = [
    "texto", 
    10, 
    true, 
    function(){
        console.log("função dentro do array")
    },
    {
        name: "Rodrigo",
        email: "Rodrigo",
    },
]

// Chamando a função
myArray[3]()

//Objeto
console.log(myArray[4].name)

```

- **Verificando se Existe um conteúdo no Array**

```javascript
let fruits = ['apple' , 'watermelon', 'strawberry']

//Verifica se item existe no arrays
console.log(fruits.includes('apple'))


```


>### **Repetições e iterações**


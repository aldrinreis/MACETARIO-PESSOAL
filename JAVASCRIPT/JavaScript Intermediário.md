> # **JavaScript Intermediário**


- **[Objetos](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScript%20Intermedi%C3%A1rio.md#objetos)**
- **[Métodos de String](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScript%20Intermedi%C3%A1rio.md#m%C3%A9todos-de-texto)**
- **[Arrays](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScript%20Intermedi%C3%A1rio.md#arrays)**
- **[Repetições e iterações](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScript%20Intermedi%C3%A1rio.md#repeti%C3%A7%C3%B5es-e-itera%C3%A7%C3%B5es)**
- **[DATA e HORA](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScript%20Intermedi%C3%A1rio.md#data-e-hora)**
- **[Classes](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScript%20Intermedi%C3%A1rio.md#classes)**
<br>

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

- **Método repeat**

Este método é uma funcionalidade da classe String que permite repetir uma string um número especificado de vezes, retornando uma nova string resultante.

```javascript
const palavra = "Olá! ";
const repetida = palavra.repeat(3);

console.log(repetida); // "Olá! Olá! Olá! "

const character = "#";
const count = 8;
const rows = [];

for (let i = 0; i < count; i = i + 1) {
  rows.push(character.repeat(i + 1));
}

let result = "";

for (const row of rows) {
  result = result + "\n" + row;
}

console.log(result);

```
<br>
<br>
<br>
<br>

>### **Arrays**
<br>

- **Criando um array com construtor**

```javascript
const newArray = new Array()

console.log(newArray)

console.log(newArray.length)

//Criando com tamanho definido. *Posições vazias
const available = new Array(10)
console.log(available.length)

```
<br>

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
<br>

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
<br>

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
<br>

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
<br>

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
<br>

- **Verificando se Existe um conteúdo no Array**

```javascript
let fruits = ['apple' , 'watermelon', 'strawberry']

//Verifica se item existe no arrays
console.log(fruits.includes('apple'))


```
<br>
<br>
<br>
<br>


>### **Repetições e iterações**

- **Loop WHILE**

```javascript
//WHILE => executa enquanto a condição é verdadeira
let execute = true

while (execute){
    let response = window.prompt("Deseja continuar? 1(SIM) ou 2 (NAO)")

    if (response === "2"){
        execute = false
    }
}
```
<br>

- **Loop Infinto**

```javascript
// Estrutura de repetição sem fim => usar somente intencionalmente 

let value = true
while(value){
    console.log("Executando o while")
}

```
<br>

- **Loop DO WHILE**

A instrução é executada ao menos uma vez antes da condição ser verificada

```javascript
let value = 0
do {
    value++
    console.log(value)
} while(value < 10)
```
<br>

- **Loop FOR**

Repete até que a condição especificada seja falsa.

 - Variável de controle.
 - Condição
 - Incremento ou decremento e passo da variável de controle

```javascript

    for (let i = 0; i <= 10; i++) {
        console.log(i)
    }

    //Exemplo tabuada

    for (multiplicador = 0; multiplicador <=10 ;multiplicador++ ){
        console.log(`7 x ${multiplicador} = ${7*multiplicador}`)
    }
    
```
<br>

- **Loop FOR IN**

Executa iterações a partir de um objeto e percorre as propriedades.
Pode ser usado com arrays também.

```javascript
    let person = {
        name: "aldrin",
        surname: "reis",
        email: 'email@email',
    }

    for (let propriedades in person){
        console.log(propriedades)
        //Acessando o conteúdo.
        console.log(person[propriedades])
    }
```
<br>

- **Loop FOR OF**

Itera sobre os valores de um objeto iterável.


```javascript
let students = ["aldrin","flocos","night"]

for (let estudante of students) {
    console.log(estudante)
}

```
<br>

- **Break**
Encerra a execução da repetição ou switch para seguir para a instrução seguinte

```javascript
let option = 3
switch(option){
    case 1:
        console.log("cadastrar")
        break
    case 2:
        console.log("atualizar")
        break
    case 3:
        console.log("Remover")
        break
    default:
       console.log("Opção invalida")
       break 
}

//Utilizando o break pra finalizar a repetição

for (let i = 0 ; i < 10; i++){
    
    if(i === 5){
        break
    }
    console.log(i)
}
/*Retorno
}

 0
 1
 2
 3
 4

*/

```
<br>

- **Continue**
    Encerra (pula) a execução das instruções na iteração atual e continua a execução do loop com a próxima iteração.

```javascript

for (let i = 0 ; i < 10; i++){
    
    if(i === 5){
        continue
    }
    console.log(i)
}

/*Retorno
0
1
2
3
4
6
7
8
9
*/
```
<br>
<br>
<br>
<br>

>### **DATA e HORA**

- **Obtendo Data e Hora**

```javascript
console.log(new Date()) // Thu Aug 29 2024 14:30:52 GMT-0300 (Hora padrão de Brasília)

/*Milissegundos desde a data usada como referencia pelo JS

Primeira data usada como referência:

console.log(new Date(0))
Wed Dec 31 1969 21:00:00 GMT-0300 (Hora padrão de Brasília)

*/
console.log(new Date().getTime()) 



```
<br>

- **Definindo data e hora específica**

```javascript
/* ano, mes, dia .
Mês começa do valor 0 - janeiro 0 ....., julho 6.... */
console.log(new Date(2024, 6, 3)) 

//Definindo data e hora => ano,mes,dia,hora,minuto,segundo
console.log(new Date(2024,6,3,14,30,0))

//Padrão de string utiliza os meses com números normais
console.log(new Date("2024-07-03T14:30:00"))

console.log(new Date("July 3, 2024 14:30:00"))
```
<br>

- **Métodos para trabalhar com data hora**

```javascript
let date = new Date("2024-07-02T14:30:10")

// Dia da semana de 0 a 6 (domingo é 0)
console.log(date.getDay())

// Dia do Mês de 0 a 30
console.log(date.getDate())

// Mês de 0 a 11
console.log(date.getMonth() + 1)

//Ano
console.log(date.getFullYear())

//Hora
console.log(date.getHours())
//Minuto
console.log(date.getMinutes())
//Segundos
console.log(date.getSeconds())
```
<br>

- **Modificando data e hora**

```javascript
let date = new Date("July 3, 2024 14:30:00")
//Modificando o ano
date.setFullYear(2030)

//Modificando o mês
date.setMonth(11)

//Modificando o Dia
date.setDate(11)

//Modificando a hora
date.setHours(18)

//Modificando os minutos
date.setMinutes(20)

//Modificando os segundos
date.setSeconds(11)

console.log(date)
```
<br>

- **Formatando data e hora**

```javascript
let date = new Date("July 3, 2024 14:30:00")

//Formatando para o dia sempre ter 2 dígitos
let day = date.getDate().toString().padStart(2,"0")
console.log(day)

//Formatando para o mês sempre ter 2 dígitos
let month = (date.getMonth() +1 ).toString().padStart(2,"0")
console.log(month)

//Motar data e hora com um padrão
let year = date.getFullYear()
let hour = date.getHours()
let minute = date.getMinutes()
let second = date.getSeconds()

console.log(`${day}/${month}/${year} às ${hour}:${minute}:${second}`)

```
<br>

- **Convertendo uma data para strings**
```javascript
let date = new Date("2024-07-02T14:30:10")

//Converte para string
console.log(date.toString())

//Retorna somente a data
console.log(date.toDateString())

//Retornando somente Às horas
console.log(date.toTimeString())
```
<br>

- **Exibindo data e hora formatadas de acordo com a localidade**

```javascript
let date = new Date("2024-07-02T14:00:00")
/*Exibe a data e hora no formato local*/
console.log(date.toLocaleDateString())
console.log(date.toLocaleTimeString())

/*Exibe data e hora no formato escolhido*/

console.log(date.toLocaleDateString("en"))
console.log(date.toLocaleTimeString("en"))
console.log(date.toLocaleTimeString("pt-BR"))

```

<br>

- **Usando o toLocaleString()**

```javascript
let date = new Date("2024-07-02T14:30:10")

console.log(date.toLocaleString())
console.log(date.toLocaleString("en"))
console.log(date.toLocaleString("pt-BR"))

//Exibe data e hora styles diferentes
console.log(date.toLocaleString("pt-BR",{
    dateStyle: "short",
}))
console.log(date.toLocaleString("pt-BR",{
    dateStyle: "long",
}))
console.log(date.toLocaleString("pt-BR",{
    dateStyle: "medium",
}))
console.log(date.toLocaleString("pt-BR",{
    dateStyle: "full",
}))
console.log(date.toLocaleString("pt-BR",{
    day: "2-digit",
    month: "2-digit",
    hour: "2-digit",
    minute: "2-digit",
}))

//Editando valores
let amount = 12.5;
console.log(amount.toLocaleString("pt-BR", {
    style: "currency",
    currency: "BRL",
}));

```
<br>

- **Aprendendo sobre fuso horário**

Referência => meia noite de 01 de Janeiro de 1970 - UTC
<br>

- **Conhecendo a Intl**

Intl é a API de internacionalização do ECMAScript

```javascript
//Obtendo informações da localidade
const currentLocale = Intl.DateTimeFormat().resolvedOptions()
console.log(currentLocale)
/*
RETORNO
calendar:"gregory"
day:"2-digit"
locale:"pt-PT"
month:"2-digit"
numberingSystem:"latn"
timeZone:"America/Sao_Paulo"
year:"numeric"
*/

//Formata de acordo com a localidade
console.log(new Intl.DateTimeFormat("pt-BR").format(new Date()))
console.log(new Intl.DateTimeFormat("en-US").format(new Date()))

//Pegando diferença de time-zones
const date = new Date();
console.log(date.getTimezoneOffset()); //Diferenças em minutos
console.log(date.getTimezoneOffset() / 60); //Em horas

```
<br>

- **Criando uma data e hora com fuso horário**

```javascript
const dateWithTimezone = new Date("2023-12-13T22:56:30.603+03:00");
//console.log(dateWithTimezone.toISOString());

console.log(dateWithTimezone.toLocaleString())
```
<br>
<br>
<br>
<br>

>### **Classes**

- **Criando uma classe com um método construtor**

```javascript
    class Person {
        constructor(){
            console.log("Classe Instanciada")
        }
    }

    const person = new Person()
```
<br>

- **Criando propriedades dentro das classes**

```javascript
    class Product {
        constructor(name){
            this.name = name
        }
    }
    const product1 = new Product("teclado")
    console.log(product1.name)

    const product2 = new Product("mouse")
    console.log(product2.name)
```

<br>

- **Adicionando métodos nas classes**

```javascript
    class User {
        constructor(name,email){
            this.name = name
            this.email = email
        }

        sendEmail(){
            console.log("Email enviado para", this.name, "para o endereço", this.email)
        }
    }

    const user = new User("teste","teste@gmail.com")
    user.sendEmail()
    
```
<br>

- **O que é método estático**

```javascript
//Não utilizar com constructor, constructor necessita de instanciar a classe.
    class User {
        static showMessage(){
            console.log("Essa é uma Mensagem")
        }
    }
   //Acessa sem precisar estanciar a classe.
   User.showMessage()
```
<br>

- **Como aplicar herança com classes?**

```javascript
    class Animal{
        constructor(name){
            this.name = name
        }

        makeNoise(){
            console.log("Algum som genérico")
        }
    }

    //Herdando
    class Dog extends Animal{
        
    }
    class Cat extends Animal{

    }

    const dog = new Dog("ted")
    
```
<br>

- **Sobrescrevendo Métodos**

```javascript

class Animal{
        constructor(name){
            this.name = name
        }

        makeNoise(){
            console.log("Algum som genérico")
        }
    }

    //Herdando
    class Dog extends Animal{
         makeNoise(){
            console.log("AU AU AU AU")
        }
    }
    class Cat extends Animal{
        makeNoise(){
            console.log("Miau!!!!!!!!!!!!!!")
        }
    }

    const dog = new Dog("ted")
    dog.makeNoise()
    const cat = new Cat("Mel")
    cat.makeNoise()

```
<br>

- **Criando um objeto prototype**

```javascript
const address = {
    city: "Sao Paulo",
    country: "Brazil",
}

let userName = "teste"
console.log(userName.__proto__)
```
<br>

- **Como utilizar classes para lidar com exceções**

```javascript
let obj = [17]
let index = 300

try {
    //obj.execute() // Descomente isso se quiser gerar um TypeError
    if(!obj.includes(17)){
        throw new Error("O numero nao esta disponível")
    }
    
    if(index > 99){
        throw new RangeError("Numero fora do intervalo.")
    }
} catch(error) {
    if(error instanceof TypeError){
        console.log("Método indisponível")
    }
    else if(error instanceof RangeError){
        console.log(error.message)
    }else{
        //console.log(error)
        console.log("Não foi possível realizar a ação")
    }
   
}

```
<br>

- **Como utilizar classes para criar erros customizados**

```javascript
    class MyCustomError {
        constructor(message){
            this.message = "Classe de erro customizada:" + message
        }
    }

    try{

        throw new MyCustomError("Erro personalizado")

    }catch(error){
        if(error instanceof MyCustomError){
            console.log(error.message)
        }else{
            console.log("não foi possível executar")
        }
    }
```
> # **JavaScript Antes do Framework**
- **[JavaScript Moderno](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptAvan%C3%A7ado.md#javascript-moderno)**
- **[Métodos de Array](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptAvan%C3%A7ado.md#m%C3%A9todos-de-array)**
- **[Imutabilidade](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptAvan%C3%A7ado.md#imutabilidade)**
- **[Módulos](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptAvan%C3%A7ado.md#m%C3%B3dulos)**
- **[Funções Assíncronas](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptAvan%C3%A7ado.md#fun%C3%A7%C3%B5es-ass%C3%ADncronas)**
- **[Pacotes](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptAvan%C3%A7ado.md#pacotes)**
- **[APIS](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptAvan%C3%A7ado.md#working-apis)**
- **[Compiladores](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptAvan%C3%A7ado.md#compiladores)**
- **[Webpack](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVASCRIPT/JavaScriptAvan%C3%A7ado.md#bundlers)**
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
        id: Math.random(),
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
<br>
<br>
<br>
<br>

> ### **Imutabilidade**

- **Definição**

Uma vez que algo imutável é criado **você não pode modificar seus valores e propriedades**.
Em vez disso, você cria uma cópia modificada para manter o original inalterado.
<br>

- **Aplicando**

```javascript
const address1 = {
    street: "Av Brasil",
    number: 20
}

/*
=========> Isto não é uma cópia é uma referência.
        const address2 = address1
        address2.number = 30
=========> Altera nos dois pois é apenas uma referência
        console.log(address1, address2)
*/

//  Aqui cria um segundo objeto. (Opção 1)
const address2 = {...address1}
address2.number = 30
//  Só mudou o objeto 2
console.log(address1, address2)

// (Opção 2)
const address3 = {...address1, number: 40}
console.log(address1, address3)

//Exemplo de Array

const list1 = ["Apple", "Banana"]
const list2 = [...list1]

```
<br>

- **Shallow e Deep Copy**

Shallow copy(cópia superficial): Não pega os itens aninhados.

```javascript
const htmlCourse = {
    course: "HTML",
    students: [{
        name: "Rodrigo",
        email: "rodrigo@email.com"
    }]
}

//========> Shallow copy
const jsCourse = {
    ...htmlCourse,
    course: "Javascript"
}
//=========> Modificou nos 2 objetos students é uma referência e não uma cópia.
jsCourse.students.push({
    name: "joao",
    email: "joao@email.com"
})

console.log(htmlCourse, jsCourse)

//=========> Deep Copy(cópia profunda)   (Forma 1)

const tsCourse = {
    ...htmlCourse,
    course: "Typescript",
    students: [...htmlCourse.students]
}

tsCourse.students.push({
    name: "josé",
    email: "josé@email.com"
})

console.log(htmlCourse,tsCourse)

/*************************************/

//==============> Opção 2
const javaCourse = {
    ...htmlCourse,
    course: "Java"
}

javaCourse.students = [...htmlCouse.students,{name: "ted", email: "ted@email.com"} ]

```
<br>

- **Shallow freezing**

```javascript
const book = {
    title: "Objetos Imutáveis",
    category: "Javascript",
    author: {
        name: "Rodrigo",
        email: "rodrigo@email.com"
    }
}

// O Javascript em si não impõe restrições a modificações dos objetos.
book.category = "HTML"

//Congelar o objeto e impedir a modificação.
Object.freeze(book)

book.category = "CSS" //Não modifica.

// O Object.freeze() não impede modificações profundas em objetos aninhados.
book.author.name = "João" // Permite a modificação em objeto aninhado "shallow freeze"

```
<br>

- **Deep freeze**

```javascript
const book = {
    title: "Objetos Imutáveis",
    category: "Javascript",
    author: {
        name: "Rodrigo",
        email: "rodrigo@email.com"
    }
}

function deepFreeze(object){
    //Obtendo um array com a propriedades
    const props = Reflect.ownKeys(object)

    for(const prop of props){
        //Obtém o valor associado a propriedade atual
        const value = object[prop]


        //Verifica se o valor é um objeto ou função para continuar aplicando o deepFreeze em objetos aninhados
        if(value && typeof value === "object" || typeof value === "function" ||){
            deepFreeze(value)
        }

    }


    return Object.freeze(object)
}

deepFreeze(book)
```
<br>

- **Manipulando Objetos Imutáveis**

```javascript
const book = {
    title: "Objetos Imutáveis",
    category: "Javascript",
    author: {
        name: "Rodrigo",
        email: "rodrigo@email.com"
    }
}

const updatedBook = {
    ...book,
    title: "Criando um Front End Moderno",
    category: "html",
    type: "Programming",
}

// Usando o operador de desestruturação (rest operator) para remover propriedades.

const {category, ...updatedBook2} = book

```
<br>
<br>
<br>
<br>

> ### **Módulos**

Define um formato para organizar e estrutura códigos em módulos, permitindo a modularização e reutilização de código.

- **Módulos:** Encapsulamento de código em módulos, permitindo a separação de responsabilidades e reutilização.
- **Import:** Usado para incluir módulos
- **Export:** Usado para export de funcionalidades de um módulo para outros.

<br>

- **Criando Módulos**
Geralmente o aquivo principal é chamado de main.js

- **Indicando que ao HTML que usará módulos.**

![Indicando que ao HTML que usará módulos](/JAVASCRIPT/img/indicando%20que%20o%20html%20usuara%20modulos.png)
<br>

- **Exportando um arquivo como módulo.**

- **Forma 1**

![Exportando um arquivo como módulo. 1](/JAVASCRIPT/img/exportando%20arquivo%20como%20modulo%201.png)

<br>

- **Forma 2**

![Exportando um arquivo como módulo. 2](/JAVASCRIPT/img/exportando%20arquivo%20como%20modulo%202.png)
<br>

<br>

- **Importando um arquivo criado como módulo:**

![Importando um arquivo criado como módulo](/JAVASCRIPT/img/importando%20um%20arquivo%20criado%20como%20modulo.png)
<br>

- **Importando Tudo**

```javascript
//as = o alias

import * as calc from "./calc.js"

//Usando as funções.

console.log("4 + 6 =", calc.sum( 4,6))
```
<br>

- **Exportação padrão ou nomeada**
**
- **Exportação default e nomeada**

![Exportação default e nomeada](/JAVASCRIPT/img/exportacao%20default%20e%20nomeada.png)

<br>

- **Importando função padrão sem o {}**

![Importando função padrão sem o {}](/JAVASCRIPT/img/Importando%20função%20padrão%20sem%20o%20{}.png)
<br>

- **Pode ser usado qualquer nome na importação do default**

![Pode ser usado qualquer nome na importação do default](/JAVASCRIPT/img/Pode%20ser%20usado%20qualquer%20nome%20na%20importação%20do%20default.png)
<br>

- **Renomeando as Exportações**

```javascript
//Export
export {sum as sumTwoNumbers, multiply as multiplyTwoNumbers }

// Deve ser Alterado no import

import {sumTwoNumbers, multiplyTwoNumbers} from "./calc.js"


```
<br>

- **Renomeando as Importações**

```javascript
//Export
export {sum, multiply}

//Renomeando a importação
import {sum as s, multiply as m} from "./calc.js"

```
<br>

- **Usando Classes nos módulos**

```javascript
//No arquivo Calc criando a classe.
// Os métodos nas Classes não usam function.

export class Calc{
    sum(a+b){
        return a + b
    }
    
    multiply(a,b){
        return a * b
    }
}

//Importando

import {Calc} from "./calc.js"
const calc = new Calc()

//Usando as funções.

console.log("4 + 6 =", calc.sum( 4,6))

```
<br>
<br>
<br>
<br>

> ### **Funções Assíncronas**


- **setTimeout()**

====> Executa uma função após um intervalo de tempo especificado, como se fosse um delay

```javascript

setTimeout(()=>{
    console.log("Olá")
}, 4000) // ====> Tempo em milissegundos
```
<br>

- **EetInterval()**

====> executa uma função a cada intervalo de tempo especificado, como se fosse um tempo de loop

```javascript
let value = 10

const interval = setInterval(()=>{
    console.log(value)
    value--

    if (value === 0){
        console.log("Happy new Year")
        //Interrompe o intervalo de execuções
        clearInterval(interval)
    }
}, 1000)

```
<br>

- **Conhecendo Promises**

```javascript
//Função que retorna uma promises

function asyncFunction(){
    return new Promise((resolve,reject)=>{

        // simulando uma operação assíncrona 

        setTimeout(()=>{

        const isSuccess = true

        if(isSuccess){
            resolve("A operação foi concluída com sucesso.")
        }else {
            reject("Algo deu errado!")
        }
        }, 3000) 
    })
}

// Visualizando que o retorno é uma promise
//console.log(asyncFunction())


asyncFunction().then((response) => {console.log("Sucesso:", response)}).catch((error)=>{console.log("Error: ", error)}).finally(()=>{console.log("Fim da execução")})
```
<br>

- **Conhecendo async e await**

```javascript
function asyncFunction(){
    return new Promise((resolve,reject)=>{

        // simulando uma operação assíncrona 

        setTimeout(()=>{

        const isSuccess = true

        if(isSuccess){
            resolve("A operação foi concluída com sucesso.")
        }else {
            reject("Algo deu errado!")
        }
        }, 3000) 
    })
}


async function fetch(){
    try{
        const response = await asyncFunction()
        console.log(response)
    }catch(error){
        console.log("Error", error)
    }finally{
        console.log("Fim da Execução")
    }
    
}

fetch()


/* ARROW FUNCTION*/

const fetch1 = async () => {
    const response = await asyncFunction()
    console.log(response)
}

fetch1()


```
<br>

- **Prioridade e ordem de execução**

```javascript
//Características do eventloop

// (1°) => executa de forma síncrona - 1 é impresso imediatamente
console.log(1)

// (3°) => Microtasks são executadas antes de temporizadores e promises
queueMicrotask(()=>{
    console.log(2)
})

// (5°) Macrotask que aguarda o evento do temporizador
setTimeout(()=>{
    console.log(3)
}, 1000)

// (2°) => executa de forma síncrona - 1 é impresso imediatamente
console.log(4)

// (4°) => Adiciona uma microtask quando a promise resolve imediatamente
Promise.resolve(true).then(() =< {
    console.log(5)
})

/* Retorno

1
4
2
5
3

*/

```

<br>
<br>
<br>
<br>

> ### **Pacotes**

- **Conhecendo o pacote day.js**

[dayJS](https://day.js.org/)

Adicionado dayJs pelo browser

![Dayjs adição browser](/JAVASCRIPT/img/dayjsbrowser.png)
<br>

- **Resolução de Dependências**

* Versionamento semântico

![Versionamento semântico](/JAVASCRIPT/img/resoliçãodedependencias.png)
<br>

* O til permite atualizações automáticas para versões compatíveis. Receber os patches.

![til](/JAVASCRIPT/img/til.png)

<br>

* O ^ indica que o npm pode instalar automaticamente a versão mais recente compatível, mas não a próxima versão incompatível. 

Isso permite receber patches, correções de bugs e pequenas alterações de versões, mas não grandes alterações de versões.

<br>

* o @ é usado para instalar uma versão específica de pacote.

ex: ```npm install dayjs@1.11.10```
<br>
<br>
<br>
<br>

> ### **Working APIs**

- **Definição de API**
Application Programming Interface - interface que disponibiliza um conjunto de funcionalidades para serem utilizadas.
<br>

- **Instalando o json-server**

[Link Json Server](https://www.npmjs.com/package/json-server)

* Para instalar: ```npm i json-server```
* Criar o arquivo server.json.
* Criar no package.json script para executar nossa api:

![package.json](/JAVASCRIPT/img/packagejson.png)
<br>

* para rodar numa outra porta editar no arquivo package.json no server a flag ```--port=porta```
* rodar no terminal ```npm run server```
<br>

- **Criando uma API de exemplo**

[Link do rep - API de Exemplo](https://github.com/aldrinreis/apideexemplo)

- **Utilizando o fetch**

```javascript
fetch("http://localhost:3000/products").then((response) =>
    response.json()).then((data) => console.log(data))

```
<br>

- **Utilizando o Async e await**

```javascript
async function fetchProducts(){
    const response = await fetch("http://localhost:3000/products")
    const data = await response.json()
    console.log(data)
}


fetchProducts()
```
<br>

- **Passando parâmetros na requisição**

```javascript
async function fetchProductById(id){
    const response= await fetch(`http://localhost:3000/products/${id}`)
    const data = await response.json()
    console.log(data)
}

fetchProductById(2)
```
<br>

- **Fetch com Post**

```javascript
const productName = document.getElementById("name")
const productPrice = document.getElementById("price")
const form = document.getElementsByTagName("form")

addEventListener("submit", async (event) => {
    event.preventDefault()
    await fetch("http://localhost:3000/products", {
        method: "POST",
        headers: {
            "content-Type": "application/json"
        },
        body: JSON.stringify({
            id: new Date().getTime().toString(),
            name: productName.value,
            price: productPrice.value
        })
    })

    await fetchProducts()
})
```
<br>
<br>
<br>
<br>

> ### **Compiladores**

- **Instalando o Babel**

[Link do Babel](https://babeljs.io/)
```javascript
npm install --save-dev @babel/core @babel/cli @babel/preset-env
```
<br>

- **Configurando e utilizando o Babel**

Criar na Raiz do projeto o arquivo: **babel.config.js**

```javascript
const presets = ["@babel/preset-env"]

module.exports = {presets}
```

Para compilar em um novo dir

```javascript
.\node_modules\.bin\babel main.js --out-dir .\dist

```
<br>

- **Criando um script para compilar**

* No package.json adicionar em scripts

```javascript
 "scripts": {
    
    "build":"babel main.js --out-dir ./dist"
  }
```

Para rodar o script ```npm run build```

<br>

- **Utilizando o arquivo compilado**

No html apontar para o arquivo js dentro da pasta com  o arquivo compilado.
<br>

- **Automatizando mudanças**

* No package.json passar a flag --watch

```"build":"babel main.js --watch --out-dir ./dist"``` .

Agora após a primeira compilação cada vez que o arquivo for alterado ele irá automatizar a compilação.
<br>

- **Configurando targets**

- No babel.config.js podemos adicionar a partir de quais versões de navegadores o código deverá suportar.

```javascript
const presets = [
    ["@babel/preset-env",
        {targets:{
            edge: "17",
            firefox: "60",
            chrome: "67",
            safari: "11.1"
        }}
    ]
]

module.exports = {presets}
```

<br>
<br>
<br>
<br>

> ### **Bundlers**

- **Conhecendo o Webpack**

[Doc Webpack](https://webpack.js.org/)

```javascript
npm install webpack webpack-cli --save-dev
```

* Adicionar a script no package.json, que irá empacotar os arquivos.

``` "build": "webpack ./src/js/index.js"```
<br>

- **Configurando o webpack**

* No package.json deixar apenas ``` "build": "webpack"``` e criar o arquivo na raiz: **webpack.config.js**.

```javascript
const path = require("path")

module.exports = {
    entry: path.resolve(__dirname, "src","js","index.js"),
    output: {
        filename: "main.js",
        path: path.resolve(__dirname, "dist")
    },
    mode: "development"
}
```
<br>

- **Como incluir o html**

* Instalando o plugin do html ```npm install --save-dev html-webpack-plugin```

* Importando no arquivo: **webpack.config.js**.

```javascript
const HTMLWebpackPlugin = require("html-webpack-plugin")

//Adicionando os plugins no arquivo:

const path = require("path")
const HTMLWebpackPlugin = require("html-webpack-plugin")

module.exports = {
    entry: path.resolve(__dirname, "src","js","index.js"),
    output: {
        filename: "main.js",
        path: path.resolve(__dirname, "dist")
    },
    mode: "development",
    plugins: [new HTMLWebpackPlugin]

}

```
<br>

- **Como incluir o css**

* Importando no arquivo: **webpack.config.js**.

Adicionando Via módulos:

```javascript
const path = require("path")
const HTMLWebpackPlugin = require("html-webpack-plugin")

module.exports = {
    entry: path.resolve(__dirname, "src","js","index.js"),
    output: {
        filename: "main.js",
        path: path.resolve(__dirname, "dist")
    },
    mode: "development",
    plugins: [new HTMLWebpackPlugin],
    module: {
        rules: [{
            test: /\.css$/i,
            use: ["style-loader", "css-loader"],
            exclude: "/node_modules"
        }]
    }
}
```

Instalando os módulos:
```npm install --save-dev style-loader``` e ```npm install --save-dev css-loader```
<br>

- **Como incluir o babel**

* Importando no arquivo: **webpack.config.js**.

Instalando o Módulo: ```npm install -D babel-loader @babel/core @babel/preset-env webpack```

```javascript
const path = require("path")
const HTMLWebpackPlugin = require("html-webpack-plugin")

module.exports = {
    entry: path.resolve(__dirname, "src","js","index.js"),
    output: {
        filename: "main.js",
        path: path.resolve(__dirname, "dist")
    },
    mode: "development",
    plugins: [new HTMLWebpackPlugin],
    module: {
        rules: [{
            test: /\.css$/i,
            use: ["style-loader", "css-loader"],
            exclude: "/node_modules"
        },
        {
            test: /\.(?:js|mjs|cjs)$/,
            exclude: /node_modules/,
            use: {
              loader: 'babel-loader',
              options: {
                targets: "defaults",
                presets: [
                  ['@babel/preset-env']
                ]
              }
            }
          }     
        ]
    }
}
```
<br>

- **Webpack dev server**

Instalando o dev server: ```npm install --save-dev webpack-dev-server``` 

```javascript
mode: "development",
//Inserir logo após de mode no arquivo: webpack.config.js
devServer: {
        static: {
            directory: path.join(__dirname, "dist", "index.html")
        },
        port: 3000,
        open: true
      },
    plugins:

//No package.json adicionar a script.
"dev": "webpack serve"

```
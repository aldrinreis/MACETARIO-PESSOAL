> # **Node JS**
- **[Iniciando com Node](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/NODE/FundamentosNodeJS.md#iniciando-com-node)**
- **[Fundamentos de API](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/NODE/FundamentosNodeJS.md#fundamentos-de-api)**


> ### **Iniciando com Node**

![Funcionamento do NODE](/NODE/IMG/funcionamentodonode.png)
<br>

- **Criando um projeto**

```javascript
npm init -y
```
<br>

- **Executando um arquivo JavaScript**

```javascript
node NOME_ARQUIVO
```
<br>

- **Import com CommonJS e ES Modules**

* Nesta aula, foi abordado o conceito de importação de pacotes no Node.js. Foi explicado o uso do pacote HTTP, que já vem integrado ao Node, e a diferença entre importações utilizando CommonJS e ES Module. Foi mostrado como configurar o arquivo package.json para utilizar ES Module, permitindo importações mais modernas. Também foi mencionada a possibilidade de importar pacotes de terceiros, como o DayJS, para manipulação de datas. Ao final, foi ressaltada a importância de diferenciar entre pacotes do próprio Node e de terceiros.

```javascript
// Common JS
const http = require("http")

// Es Module + recomendado
import http from "http"

// => deixar explícito que está usando o pacote http do node e nao de 3°

import http from "node:http"

// -> no arquivo package.json inserir a linha:

 "type": "module",

```
<br>


- **Criando o Primeiro Servidor**

* Neste vídeo, é demonstrado como criar um servidor utilizando o módulo HTTP do Node.js. É criada uma constante "server" com o método HTTP.createServer para atender requisições na porta 3333. É explicado o uso da arrow function para processar requisições e enviar respostas, utilizando os parâmetros request e response. Ao executar o servidor com o arquivo src-server.js, é possível acessar a resposta "HELLO WORLD" no navegador ao acessar localhost:3333.


```javascript
import http from "node:http"

const server = http.createServer((request, response)=>{
    return response.end("hello")
});

server.listen(3333)
```
<br>

- **Node watch**

* Executar com a flag watch para nao precisar reiniciar o server ao realizar alterações
```javascript
node --watch .\src\server.js
```
<br>

- **Criando scripts personalizados**


* No package.json podemos criar scripts
```javascript
  "scripts": {
    "dev": "node --watch ./src/server.js"
  },

  // Para executar

  npm run dev

  // => O start é o padrão do node, pode ser executado npm start sem run (usado em produção.)
```
<br>
<br>
<br>
<br>

> ### **Fundamentos de API**

- **Métodos HTTP**

![Métodos HTTP](/NODE/IMG/metodoshttp.png)
<br>
<br>

![Exemplo Métodos HTTP](/NODE/IMG/exemplosmetodohttp.png)
<br>
<br>

![HTTP Status Code](/NODE/IMG/HTTPstatuscodes.png)
<br>
<br>

![HTTP Status Code 2](/NODE/IMG/HTTPstatuscode2.png)
<br>
<br>

- **Identificando o Método HTTP**

```javascript
const server = http.createServer((request, response)=>{
    return response.end("Método:" + request.method)
});


//// OU DESESTRUTURANDO

const server = http.createServer((request, response)=>{

    const {method} = request
    return response.end("Método:" + method)
});

```

<br>

- **Utilizando o Status Code**

* Definindo o status code com o **writeHead**
```javascript
return response.writeHead(201).end("Método:" + method)
```
<br>

- **Obtendo a URL da Requisição**

```javascript

import http from "node:http"

const server = http.createServer((request, response)=>{

    const {method, url} = request

    if(method === "GET" && url === "/products"){
        return response.end("Lista de Produtos")
    }

     if(method === "POST" && url === "/products"){
        return response.writeHead(201).end("Produto Cadastrado")
    }

    return response.writeHead(404).end("Rota não encontrada:" + url)

});

server.listen(3333)
//get localhost:3333/produtos/1
// URL:/produtos/1
```

- **Recuperando Dados no body**

* Aprendemos a enviar dados no corpo de uma requisição utilizando o Insomnia. Utilizamos o formato JSON para enviar os dados, e aprendemos a recuperar esses dados no Node.js, remontando os pedaços da requisição utilizando o buffer. Essa prática nos ajuda a entender o funcionamento interno das requisições antes de utilizar bibliotecas ou frameworks que abstraem esse processo. Essa compreensão é fundamental para lidar com requisições de forma mais avançada no futuro.

```javascript
import http from "node:http"

const server = http.createServer(async(request, response)=>{

    const {method, url} = request

    if(method === "GET" && url === "/products"){
        return response.end("Lista de Produtos")
    }

     if(method === "POST" && url === "/products"){
        const buffers = []
        
        for await (const chunk of request){
            buffers.push(chunk)
        }

        console.log(Buffer.concat(buffers).toString())

        return response.writeHead(201).end("Produto Cadastrado")
    }

    return response.writeHead(404).end("Rota não encontrada:" + url)

});

server.listen(3333)

/*Retorno do console:
{
        "name": "Teclado",
        "price": 120.50
}
*/
```
<br>

- **Conceito e utilização de middleware**

Criado o arquivo de middleware e exportado função que trabalha o body JSON

```javascript
export async function jsonBodyHandler(request, response) {

    //Adicionando cada chunk
    const buffers = []

    //Coleta os chunks de dados da requisição    
    for await (const chunk of request){
        buffers.push(chunk)
    }

    try{
        //Concatenar os chunk e converter para string. Em seguida converte a string para json

        request.body = JSON.parse(Buffer.concat(buffers).toString())

    }catch(error){
        request.body = null
    }

    //Define o Header de resposta como Json.

    response.setHeader("Content-Type", "application/json")
    
}
```
<br>

Importado a função no SERVER.JS

```javascript
import http from "node:http"
import {jsonBodyHandler} from "./middlewares/jsonBodyHandler.js"

const server = http.createServer(async(request, response)=>{

    const {method, url} = request

    await jsonBodyHandler(request, response)

    if(method === "GET" && url === "/products"){
        return response.end("Lista de Produtos")
    }

     if(method === "POST" && url === "/products"){

        console.log(request.body)
        return response.writeHead(201).end(JSON.stringify(request.body))
    }

    return response.writeHead(404).end("Rota não encontrada:" + url)

});

server.listen(3333)

```
<br>

- **Separando as Rotas**

Criado um arquivo de Rotas

```javascript
export const routes = [
    {
        method: "GET",
        path: "/products",
        controller: (request, response) =>{
            return response.end("Lista de Produtos")
        },
    },
    {
        method: "POST",
        path: "/products",
        controller: (request, response) =>{
            return response.writeHead(201).end(JSON.stringify(request.body))
        },
    },
]
```
<br>

Criado o middleware para tratar as rotas

```javascript
import { routes } from "../routes.js";

export function routeHandler(request, response){
    const route = routes.find((route)=>{
        return route.method === request.method && route.path === request.url
    })

    if (route){
        return route.controller(request, response)
    }else{
        return response.writeHead(404).end("Rota não encontrada")
    }
}
```
<br>

Importado no Server o a função routeHandler

```javascript
import http from "node:http"
import {jsonBodyHandler} from "./middlewares/jsonBodyHandler.js"
import { routeHandler } from "./middlewares/routeHandler.js";

const server = http.createServer(async(request, response)=>{

    await jsonBodyHandler(request, response)
    routeHandler(request, response) 
    
});

server.listen(3333)
```
<br>


- **Route Params**

- **Obtendo os Parâmetros**

Foi demonstrado como criar um arquivo e uma pasta dentro de um projeto Node.js, além de como utilizar expressões regulares para manipular caminhos de requisições. Foi mostrado como identificar e extrair parâmetros de uma URL, utilizando a função replace e expressões regulares. Também foi explicado como testar e comparar padrões de expressões regulares em uma requisição HTTP, permitindo a extração de parâmetros específicos. Ao final, foi exemplificado como adicionar parâmetros em requisições e utilizá-los em rotas.

* Criada a pasta util com o arquivo parseRoutePath

```javascript
//Arquivo routes.js
import {parseRoutePath} from "./utils/parseRoutePath.js"

export const routes = [
    {
        method: "GET",
        path: "/products",
        controller: (request, response) =>{
            return response.end("Lista de Produtos")
        },
    },
    {
        method: "POST",
        path: "/products",
        controller: (request, response) =>{
            return response.writeHead(201).end(JSON.stringify(request.body))
        },
    },
    {
        method: "DELETE",
        path: "/products/:id",
        controller: (request, response) =>{
            return response.end("Produto removido com ID: " + request.params.id)
        },
    },
].map((route)=>({
    ...route,
    path: parseRoutePath(route.path)
}))

//Arquivo parseRoutePath

export function parseRoutePath(path){
    const routeParametersRegex = /:([a-zA-Z]+)/g

    const params = path.replaceAll(routeParametersRegex, "(?<$1>[a-z0-9-_]+)")

    const pathRegex = new RegExp(params)
    //console.log(pathRegex)

    return pathRegex
}

```

<br>

- **Parâmetro Nomeado**

* Para passar parâmetros nomeados: **localhost:3333/products?category=computer&price=5000**

```javascript
//Arquivo extract-query-params.js

export function extractQueryParam(query){
    return query.slice(1).split('&').reduce((queryParams, param)=>{
        const [key, value] = param.split("=")
        queryParams[key] = value
        return queryParams
    },{})
}

// Arquivo routes

import {parseRoutePath} from "./utils/parseRoutePath.js"

export const routes = [
    {
        method: "GET",
        path: "/products",
        controller: (request, response) =>{
            
            return response.end(JSON.stringify(request.query))
        },
    },
    {
        method: "POST",
        path: "/products",
        controller: (request, response) =>{
            return response.writeHead(201).end(JSON.stringify(request.body))
        },
    },
    {
        method: "DELETE",
        path: "/products/:id",
        controller: (request, response) =>{
            return response.end("Produto removido com ID: " + request.params.id)
        },
    },
].map((route)=>({
    ...route,
    path: parseRoutePath(route.path)
}))

//

//Arquivo route Handler

import { routes } from "../routes.js";
import { extractQueryParam } from "../utils/extract-query-params.js";

export function routeHandler(request, response){
    const route = routes.find((route)=>{
        return route.method === request.method && route.path.test(request.url)
    })

    if (route){

        const routeParams = request.url.match(route.path)

        const {query, ...params} = routeParams.groups

        

        request.params = params

        request.query =  query ? extractQueryParam(query) : {}


        return route.controller(request, response)
    }else{
        return response.writeHead(404).end("Rota não encontrada")
    }
}
```
<br>

- **[LINK DO REPO DA API](https://github.com/aldrinreis/projectApiExemple)**


> # **Node JS**

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



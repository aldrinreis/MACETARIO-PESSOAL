> # **Funções**

**[Apostila de Funções](/JAVASCRIPT/JavaScript-12-Funcoes.pdf)**

> ### **Funções**

- **Sintaxe Função**

```javascript
function message(){
    console.log("Olá!")
}

message()
```
<br>

- **Argumentos e Parâmetros**

- Parâmetro: é a variável (escopo da Função) que irá receber um valor em uma função.
- Argumentos: é o valor que é passado para a função.

```javascript
function message(username){
    //usernamen é o parametro, o valor passado "flocos" é o argumento
    
    console.log("Olá!", username)
}

message("Aldrin")
message("Flocos")
```
```javascript
function sum(a,b){
  
    console.log(Number(a) + Number(b))
}

sum(10,5)
```
<br>

- **Pode ser passado um valor padrão como argumento**

exemplo: ```function juntatexto(a, b =""){}``` caso o valor de b não seja informado, neste caso o defaul será uma string vazia.
<br>

- **Retornando Valores**

```javascript
    function sum(a,b){
        let result = a + b

        return result
    }
    let response = sum(5,5)
    console.log(response)

    console.log(sum(4,4))
```

- **Escopo da Função**

```javascript
showMessage("Olá") //Hoisting - Icamento

function showMessage(message){
    console.log(message)
    endLine()

    function endLine(){
        console.log("--------------------")
    }
}

showMessage("Olá 2")

// endLine() => essa função nãoe existe neste escopo e retornaria um erro.
```

- **Comentário de Documentação**

- Comentário de Documentação em Js segue a sintaxe de JSDoc.
O JSDoc é um padrão para incoporar documentação no código-fonte a partir dos comentários.

```javascript
/**
 * 
 * Authenticate the Users
 * 
 * @param {String} email user email
 * @param {Strin} password more than 8 characteres
 * @returns {number} user id
 */

function signIN(email, password){
    // todo o fluxo de autenticação do user
    return 7

}
```
<br>

Exemplo JSDocs:

![JSDOCS](/JAVASCRIPT/img/jsdocsexemplo.png)

<br>

- **Função Anônima**

- Função que não possui nome.

```javascript
const showMessage1 = function(){
    return "Olá"
}

console.log(showMessage1())

/*******************************/

const showMessage2 = function(name){
    return "Olá " + name
}

console.log(showMessage2("aldrin"))
```
<br>

- **Arrow Function**

- Função de seta.

```javascript
const showMessage = () =>{
    console.log("olá")
}

showMessage()
```
<br>

- **Callback Function**

- É uma função passada para outra função como argumento.

```javascript
// CALLBACK FUNCTION: é uma função passada para outra função como um argumento.

function execute(taskName, callback){
    console.log("Executando a tarefa: ", taskName)

    callback()
}

function callback(){
    console.log("Tarefa finalizada.")
}

execute("Download do arquivo...", callback)
 
//OUTRA FORMA - ANONIMA

execute("Upload do arquivo", function(){
    console.log("Função callback com uma função anônima")
})

// OUTRA FORMA - ARROW FUNCTION

execute("Excluindo Arquivo...", () => {
    console.log("Excluido via arrow")
})

// Forma Encurtada

execute("Salando arquivo", () => console.log("Arquivo salvo"))
```
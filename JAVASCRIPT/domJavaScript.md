> # **DOM**

- **[Exemplos e Exercícios](/JAVASCRIPT/4%20DOM)**

<hr>

> ### **Acessando Elementos do DOM**

```javascript
//Visualizar o conteudo do Document
console.log(document) //estrutura da aplicação

//obtendo o title
console.log(documente.title)

//Acessando pelo ID
const guest = document.getElementById("guest-2")
console.log(guest)
//Vendo as propriedades do elemento
console.dir(guest)

//Acessando pela classe.
const guestClass = document.getElementsByClass("guest")
console.log(guestClass)
console.log(guestClass.item(0))
console.log(guestClass[1])

// Seleciona pela tag
const guestByTag = document.getElementsByTagName("li")
console.log(guestByTag)

//Query selector
const guestId = document.querySelector("#guest-2") //seleciona o id
const guestClass = document.querySelector(".guest") // seleciona a classe - pega o primeiro.
const guestClass = document.querySelectorAll(".guest") //seleciona todas as classes

```
<br>
<br>

> ### **Manipulando Conteúdo**

```javascript
const guest = document.querySelector("#guest-1")
console.log(guest.textContent) // retorna o conteúdo visível e oculto em texto,

guest.textContent = "João"

const guest = document.querySelector("#guest-1 span")
console.log(guest.textContent)

guest.textContent = "João"

const guest = document.querySelector("#guest-1")

/*
Outras opções:
    .textContent - retorna o conteúdo visível e oculto em texto
    .innerText - retorna sem formatação apenas o conteúdo visível
    .innerHtml - conteúdo o html do elemento como texto
*/

```

> ### **Alterando Estilos**

```javascript
const input = document.querySelector("#name")
//Adicionar a Classe
input.classList.add("input-error")
//Remover a Classe
input.classList.remove("input-error")
// Toggle => se a classe existe remove, se não existe adiciona
input.classList.toggle("input-error")

// Modificar as propriedades CSS do elemento.
const button = document.querySelector("button")
button.style.backgroundColor = "red"

```
<br>

> ### **Criando Elementos**

```javascript
const guests = document.querySelector("ul")

const newGuest = document.createElement("li")
newGuest.classList.add("guest")

const guestName = document.createElement("span")
guestName.textContent = "flocos"

// Adiciona aós o último filho
newGuest.append(guestName) 
// prepend => adiciona antes do primeiro filho.


//Modo mais simples => aceita apena 1 argumento.

newGuest.appendChild(guestName)

//Inserindo a ul

guests.append(newGuest)

```

> ### **Manipulando Atributos**

```javascript
const input = document.querySelector("input")

//Atualiza ou cria o atributo
input.setAttribute("disabled",true) //nome do atributo e valor
input.setAttribute("type", "file")

//Remove o atributo
input.removeAttribute("id")

```

> ### **Eventos**

```javascript
window.addEventListener("load", ()=>{
    console.log("A página foi carregada")
})

addEventListener("click", (event) => {
    event.preventDefault()

    //Retorna todas as informações do evento
    console.log(event)
    
    //Retorna o elemento clicado
    console.log(event.target)
    //Retorna o text Contente do elemento clicado
    console.log(event.target.textContent)

})

```
<br>

> ### **Eventos de um Elemento Específico**

```javascript
const ul = document.querySelector("ul")

ul.addEventListener("scroll", (event)=>{
    console.log(event)
    console.log(ul.scrollTop)

    if (ul.scrollTop > 300){
        console.log("FIM da LISTA")

        ul.scrollTo({
            top: 0,
            behavior: "smooth",
        })
    }

}) 

const button = document.querySelector("button")

button.addEventListener("click", (event)=>{
   console.log("CLICOU!")

})

```

<br>

> ### **Eventos de Formulário**

```javascript
const form = document.querySelector("form")

//Executa todos
form.addEventListener("submit", (event)=>{

})

//Outra Forma
//Executa o ultimo criado
form.onsubmit = (event) => {
    event.preventDefault()
    console.log("Você fez o submit")
}
```
<br>

> ### **Eventos de Input**

```javascript
const input = document.querySelector("input")

// Keydown event - quando uma tecla é pressionada (qualquer tecla.)

input.addEventListener("keydown",(event) => {
    console.log(event)
    console.log(event.key)
} )

// Keypress - Dispara quando uma tecla do tipo caractere é disparada.
input.addEventListener("keypress",(event)=>{
    console.log(event.key)
})

input.onchange = ()=>{
        console.log()
    }

input.onchange = () => {
    inputChange()
}

function inputChange(){
    console.log("O input Mudou")
}

```
<br>

> ### **Manipulando o valor do Input com REGEX**

```javascript
const input = document.querySelector("input")
//Evento de input é disparado quando o input recebe um valor
input.addEventListener("input", () =>{
    //console.log(input.value)
    const value = input
    const regex = /\D+/g

   /* Testa se Atende o padrão
   
   console.log(value.match(regex))

    const isValid = regex.test(value)
*/

})
/***********************************************/

const form = document.querySelector("form")

form.addEventListener("submit", (event)=>{
    
   const regex = /\D+/g
   const value = input.value

   if (regex.test(value)){
        alert("Padrão ok")
    }

   event.preventDefault()
   const value = input.value.replace(regex, "x")

})

```
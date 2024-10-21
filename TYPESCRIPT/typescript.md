> # **Typescript**

<br>

> ### **Tipos Primitivos**

- Usar **:** para declarar o **tipo** 

```typescript
let username: string
username = "floquinho";

let number1: number
number1 = 10 //ou ponto flutuante
number1 = 10.5

let booleans: boolean
booleans = true
```
<br>

- **Inferência de tipos e tipagem explícita** 

```typescript
//Tipagem explícita
let myName: string;
myName = "Flocos"

// Inferência de Tipos => ts deduz
let message = "Hello ts!"

```
<br>

- **Tipo Any**

```typescript
let message: any
let message1: any

// Com o tipo any a variável aceita qualquer valor
// String, number e bool
```
<br>

- **Tipagem em arrays**

- O que muda é a inserção dos colchetes.

```typescript
//Tipagem explícita ou Anotação de tipo (Type annotation)
let names: string[] = ["aldrin", "flocos"]
let numbers: number[] = [1,2,3,4,5]

// Inferencia de tipo
let products = ["produtox", "produtoy", "produtoxz"]

```
<br>

- **Tipagem em funções**

```typescript
function sum (x: number, y: number): number {
    const result = x + y
    console.log("Resultado = " + result)

    return result
}

const result = sum(7, 3)

const showMessage = (name: string): string => {
    const message = "Olá " + name

    return message
}

console.log(showMessage("Aldrin"))
```
<br>

- **Tipagem em Objetos**

```typescript
let user: { name: string, age: number, avatarUrl?: string } = { name: "Rodrigo", age: 17 }

/*
function signIn(email: string, password: string) {
    // Lógica de conectar usuário na aplicação
}

signIn("rodrigo@email.com", "123")
*/

function signIn({email, password}:{email: string, password: string}) {
    // Lógica de conectar usuário na aplicação
    console.log("Usuário " + email + " conectado!")
}

signIn({ email: "rodrigo@email.com", password: "123" })



```
<br>

- **Null e Undefined**

```typescript
// undefined
let value: number
//value = 12
//console.log(value)

let user = {
    name: "Rodrigo"
}

// console.log(user.email)

// null (ausência intencional de valor)
let email = null
console.log(email)

if (!email){
    console.log("Informe o e-mail!")
}
```
<br>

- **Union types**

* Definir mais de um tipo

```typescript
let response: string | null

response = "Teste"
response = null
```
<br>
<br>
<br>
<br>

> ### **Tipos personalizados no Typescript**
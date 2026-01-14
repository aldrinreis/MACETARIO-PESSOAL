> # **Typescript**

- **[Tipos Primitivos](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/TYPESCRIPT/typescript.md#tipos-primitivos)**
- **[Tipos personalizados no Typescript](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/TYPESCRIPT/typescript.md#tipos-personalizados-no-typescript)**
- **[Utilitários de Tipos](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/TYPESCRIPT/typescript.md#utilit%C3%A1rios-de-tipos)**


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

- **Conhecendo interface no TypeScript**

* Tipo customizado é criado usando ```interface```

```typescript
interface Product {
    id: number,
    name: string
}

function newProduct(product: Product){
}

newProduct({ id: 1, name: "Produto x"})
```
<br>

- **Como estender interfaces**

```typescript
interface Person {
    id: number,
    name: string
}

interface Teacher extends Person {
    // id: number,
    // name: string,
    subjects: string[]
}

interface Student extends Person {
    // id: number,
    // name: string,
    age: number
}

let teacher: Teacher = { id: 1, name: "Rodrigo", subjects: ["JavaScript", "TypeScript"]}

let student: Student = { id: 2, name: "João", age: 23}
```
<br>

- **Usando o Type**

```typescript
type Product = {
    id: number,
    name: string
}

function newProduct(product: Product){
}

newProduct({ id: 1, name: "Produto x"})


type SelectResponse = Product[] | null

function selectProducts(): SelectResponse {
    return null
}
```
<br>

- **Intersecção de Tipos**

```javascript
type Person = {
    id: number,
    name: string
}

type Teacher = Person & {
    subjects: string[]
}

type Student = Person & {
    age: number
}

let teacher: Teacher
let student: Student
```

<br>

- **Diferença entre Type e Interface**

Faremos um comparativo entre interfaces e types no TypeScript. Vamos criar tipos utilizando interface e type, e destacar as diferenças na declaração e na extensão. Veremos que é possível sobrescrever interfaces, mas não types, e que types permitem utilizar tipos primitivos para criar tipos customizados, o que não é possível com interfaces. A escolha entre usar interface ou type depende do contexto e preferência pessoal.

```typescript
// Interface x Type

interface IBaseProduct {
    price: number
}

interface IProduct extends IBaseProduct {
    id: number,
    name: string
}

interface IProduct {
    quantity: number
}

type TBaseProduct = {
    price: number
}

type TProduct = TBaseProduct & {
    id: number,
    name: string
}

let product1: IProduct = { id: 1, name: "Produto 1", price: 500, quantity: 12}
let product2: TProduct = { id: 2, name: "Produto 2", price: 550}

type TypeString = string
type TypeNumber = number

//Interface nao estende valor primitivo.
interface X extends string {}
```

<br>

- **Asserção de tipos**

* Type assertion no TypeScript permite definir a tipagem de um objeto quando o TypeScript não consegue inferir. Veremos um exemplo de uso de type assertion para consumir APIs e converter tipos de objetos.

```typescript
type UserResponse = {
    id: number;
    name: string;
    avatar: string;
}
//convertendo o let userResponse  para o type criado
let userResponse = {} as UserResponse;
```
<br>

- **Restringindo valores**

* Utilizar o type para restringir os valores disponíveis em uma variável. Ao definir os valores possíveis, como "small", "medium" e "large", podemos limitar as opções aceitáveis. Isso ajuda a evitar erros e garantir que apenas os valores desejados sejam utilizados. Ao utilizar essa estratégia, podemos restringir as opções disponíveis e garantir a consistência dos dados utilizados em nosso código.

```typescript
type Size = "small" | "medium" | "large"

let size: Size

size = "small"
```
<br>

- **Enums**

*Enums no TypeScript para nomear constantes, melhorando a legibilidade do código. Vamos criar uma Enum chamada Profile, atribuindo valores como Admin (1), Cliente (2) e Vendedor (3). Ao utilizar Enum, podemos substituir números por constantes, facilitando a compreensão do código. Enum é útil para evitar "números mágicos" e tornar o código mais legível, especialmente para novos membros da equipe.

```typescript
enum Profile {
    Admin = 1,
    Client = 2,
    Seller = 3
}

let profile: number = Profile.Admin
console.log(Profile.Seller)
```
<br>


- **Generic**

* Utilizar generics no TypeScript para tornar a tipagem mais flexível. Os generics permitem definir o tipo em tempo de execução, diferentemente do union, que oferece opções flexíveis, mas não exige a mesma tipagem. É possível definir um tipo padrão para o generic, caso não seja especificado. A utilização de generics é comum em diversas bibliotecas e tecnologias, como React e Axios, facilitando a flexibilidade e consistência na tipagem.

```typescript
/**
 * S => state
 * T => type
 * K => key
 * V => value
 * E => element
 */

function useState<T extends number | string = string>() {
    let state: T;

    function get(){
        return state;
    }

    function set(newValue: T){
        state = newValue;
    }

    return {get, set};
}

let newState = useState<string>();
newState.get();
newState.set("Rodrigo");
newState.set(123); //erro
newState.set("Amanda");
```

<br>
<br>
<br>
<br>

> ### **Utilitários de Tipos**

* Partial do TypeScript para tornar propriedades de uma interface opcionais. Vamos criar a interface User com propriedades obrigatórias. Com o Partial, podemos tornar propriedades específicas opcionais ao atualizar um usuário, sem a necessidade de preencher todas as propriedades novamente. O Partial permite reaproveitar a tipagem existente, tornando propriedades selecionadas opcionais. Essa ferramenta é útil para cenários em que se deseja flexibilidade na atualização de propriedades.

- **Partial**
```typescript
interface User {
    id: number,
    name: string,
    email: string
}

const newUser: User = { id: 1, name: "Rodrigo", email: "rodrigo@email.com"}

const updatedUser: Partial<User> = { name: "Rodrigo Gonçalves" }
```
<br>

- **Pick**
Pick para criar uma interface chamada Book, representando um livro com propriedades como title, pages e author. O Pick permite selecionar propriedades específicas de um tipo, evitando a necessidade de criar novos tipos. Além disso, é possível reaproveitar várias propriedades de um tipo, garantindo flexibilidade e facilitando a reutilização de tipagens em aplicações.

```typescript
interface Book {
    title: string
    pages: number
    author: string
    description: string
}

interface BookPreview {
    title: string
}

const book1: BookPreview = { title: "TypeScript"}
const book2: Pick<Book, "title" | "pages"> = { title: "TypeScript", pages: 150}
```
<br>

- **Omit**

Omit do TypeScript para reutilizar uma tipagem excluindo propriedades. Vamos criar uma interface de livro e aprender como omitir propriedades ao definir um objeto com essa tipagem. O omit é útil para reaproveitar uma tipagem e deixar campos específicos de fora. Além disso, é possível omitir mais de uma propriedade usando o operador de pipe

```typescript
interface Book {
    title: string
    pages: number
    author: string
    description: string
}

const book: Omit<Book, "description" | "pages"> = { title: "TypeScript", author: "Rodrigo"}
```
<br>

- **Record**

Record para mapear tipos de objetos. Pode-se definir chaves como String e valores como números, limitando as opções disponíveis. É possível criar objetos com chaves String e valores numéricos, ou até mesmo com tipos personalizados. O Record ajuda a restringir as chaves e valores dentro de um objeto, garantindo a conformidade com a tipagem definida. Essa ferramenta é útil para definir a estrutura que um objeto deve seguir.

```typescript
// Cria um objeto onde todas as chaves são strings e os valores são números
const scores: Record<string, number> = {
    "Rodrigo": 10,
    "Mayk": 15
}

// Limitar valores
type Profile = "admin" | "user" | "guest"

const user: Record<Profile, number> = {
    "admin": 1,
    "guest": 2,
    "user": 3
}

// Objetos personalizados
interface User {
    name: string
    email: string
}

const users: Record<string, User> = {
    1: { name: "Rodrigo", email: "rodrigo@email.com" },
    2: { name: "Rodrigo", email: "rodrigo@email.com" },
}
```
<br>

- **Typeof**

* typeof para definir tipagens a partir de outras. O typeof permite extrair a tipagem de um objeto já definido e aplicá-la em outro, facilitando a reutilização de tipagens, especialmente ao lidar com bibliotecas externas ou APIs. Essa técnica é útil para definir tipagens a partir de conteúdos já existentes.

```typescript
interface Product {
    id: number
    name: string
    quantity: number
}


const product1: Product = { id: 1, name: "Produto 1", quantity: 3}

const product2: typeof product1 = { id: 2, name: "Produto 2", quantity: 5}
```
<br>

- **Keyof**

* KeyOff para extrair chaves de um objeto e usá-las para tipagem. Criaremos um objeto icons com chaves de nomes de ícones e valores de endereços. Em seguida, criaremos uma tipagem a partir desse objeto usando KeyOff, o que nos permite restringir o uso apenas às chaves disponíveis. Assim, conseguiremos extrair as chaves de uma tipagem usando o KeyOff.

```typescript
const icons = {
    "home": "./path/home.svg",
    "add": "./path/add.svg",
    "remove": "./path/remove.svg",
}

type Icon = typeof icons

const icon: keyof Icon = "add"
```


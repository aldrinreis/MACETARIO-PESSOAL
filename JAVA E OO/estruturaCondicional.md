# **Estruturas Condicionais**

> ### **Expressões Comparativas**

![Operadores Comparativos](/JAVA%20E%20OO/IMG/operadoresComparativos.png)
<br>
<br>


> ### **Expressões Lógicas**

![Operadores Lógicos](/JAVA%20E%20OO/IMG/operadoresLogicos.png)
<br>
<br>

> ### **Estrutura Condicional**

```java
//SIMPLES:

    if(<condição>){
        <comando1>
        <comando2>
    }
```
<br>

```java
//COMPOSTA:

    if(<condição>){
        <comando1>
        <comando2>
    } else {
        <comando3>
        <comando4>
    }

```
<br>

```java
//Encadeamento:

    if(<condição>){
        <comando1>
        <comando2>
    } else if(){ 
        <comando3>
        <comando4>
    } else {
        <comando5>
        <comando6> 
    }
```
<br>
<br>


> ### **Sintaxe opcional - operadores de atribuição cumulativa**


![Operadores de atribuição cumulativa](/JAVA%20E%20OO/IMG/operadoresDeAtribuicaoCumulativa.png)

```java
int minutos = sc.nextInt();
double conta = 50.0;
if (minutos > 100) {
conta += (minutos - 100) * 2.0;
}
```

<br>
<br>

> ### **Sintaxe opcional - Estrutura Switch Case**

```java
public static void main(String[] args) {
Scanner sc = new Scanner(System.in);
int x = sc.nextInt();
String dia;
    switch (x) {
    case 1:
    dia = "domingo";
    break;
    case 2:
    dia = "segunda";
    break;
    case 3:
    dia = "terca";
    break;
    case 4:
    dia = "quarta";
    break;
    case 5:
    dia = "quinta";
    break;
    case 6:
    dia = "sexta";
    break;
    case 7:
    dia = "sabado";
    break;
    default:
    dia = "valor invalido";
    break;
}
System.out.println("Dia da semana: " + dia);
sc.close();
}

```
<br>

```java

// Sintaxe do switch-case
switch ( expressão ) {
case valor1:
comando1
comando2
break;
case valor2:
comando3
comando4
break;
default:
comando5
comando6
break;
}

```
<br>
<br>



> ### **Expressão condicional Ternária**

Estrutura opcional ao if-else quando se deseja decidir um VALOR com base em uma
condição.

Sintaxe:```( condição ) ? valor_se_verdadeiro : valor_se_falso```

```java
double preco = 34.5;
double desconto = (preco < 20.0) ? preco * 0.1 : preco * 0.05;
```
<br>
<br>

> ### **Escopo e Inicialização**

Checklist  
- Escopo de uma variável: é a região do programa onde a variável é
válida, ou seja, onde ela pode ser referenciada. 
- Uma variável não pode ser usada se não for iniciada.

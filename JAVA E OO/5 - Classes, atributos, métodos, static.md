# **Classes, atributos, métodos, static**

Classe
• É um tipo estruturado que pode conter (membros): 
    • Atributos (dados / campos) 
    • Métodos (funções / operações) 
• A classe também pode prover muitos outros recursos, tais como: • Construtores
    • Sobrecarga
    • Encapsulamento
    • Herança
    • Polimorfismo
• Exemplos: 
    • Entidades: Produto, Cliente, Triangulo
    • Serviços: ProdutoService, ClienteService, EmailService, StorageService
    • Controladores: ProdutoController, ClienteController • Utilitários: Calculadora, Compactador • Outros (views, repositórios, gerenciadores, etc.)

```java
//Criando a Entidade
package entities;
public class Triangle {
public double a;
public double b;
public double c;
}


//Instanciando a variável.

Triangle x, y;
x = new Triangle();
y = new Triangle();

```
<br>

Exemplo 1:

![Primeiro Problema com OO](/JAVA%20E%20OO/IMG/primeiroOO.png)
<br>
<br>

<hr>

* Toda classe em Java é uma subclasse da classe Object 

* Object possui os seguintes métodos: 
    * getClass- retorna o tipo do objeto
    * equals - compara se o objeto é igual a outro
    * hashCode - retorna um código hash do objeto
    * toString - converte o objeto para string

> ### **Usando o toString**

```java
public String toString() {
		return name 
			+ ", R$ "
			+ String.format("%.2f", price)
			+ ", "
			+ quantity
			+ "unidades, Total: R$ "
			+ String.format("%.2f", totalValueInStock());
	}
```
<br>
<br>

Exemplo 2:
![Segundo Exemplo OO](/JAVA%20E%20OO/IMG/segundoExemploOO1.png)
<br>
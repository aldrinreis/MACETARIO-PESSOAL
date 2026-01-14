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

- **Quando usado o ```this``` se refere ao atributo da classe e não o parâmetro do método.**



> ### **Membros Estáticos**

* Também chamados membros de classe
    1.1 Em oposição a membros e instância
* São membros que fazem sentido independentemente de objetos. Não precisam de objeto para serem chamados. São chamados a partir do próprio nome da classe. 
* Aplicações comuns: 
    - Classes utilitárias
    - Declaração de constantes
* Uma classe que possui somente membros estáticos, pode ser uma classe estática também. Esta classe não poderá ser instanciada.

<br>

Para declarar uma constante: 
```java
public static final double PI = 3.14159;

//padrão para constantes UPPER CASE ex: NET_SALARY

```  
<br>

**Problema exemplo:**

Fazer um programa para ler um valor numérico qualquer, e daí mostrar quanto seria o valor de uma circunferência e do volume de uma esfera para um raio daquele valor.
Informar também o valor de PI com duas casas decimais.

**Checklist**

* Versão 1: métodos na própria classe do programa
    - Nota: dentro de um método estático você não pode chamar membros de instância da mesma classe.
* Versão 2: classe Calculator com membros de instância
* Versão 3: classe Calculator com método estático
<br>

![VERSÃO 1](/JAVA%20E%20OO/IMG/exemploMemboE1.png)
<br>
<br>

![VERSÃO 2](/JAVA%20E%20OO/IMG/exemploMembroE2.png)

<br>
<br>

![VERSÃO 3](/JAVA%20E%20OO/IMG/exemploMembroE3.png)
# **Fundamentos Java**

> ### **Fundamentos de Java**

- **Comentários**

Comentários são definidos por dupla / ```//```

- **Saída no terminal**

O print é definido por: ```System.out.println();```

```java
public class Main {

	public static void main(String[] args) {
		// Comentário
		System.out.println("Olá mundo");
	}

}
```
<br>
<br>

> ### **Estrutura Sequencial**

- **Expressões Aritméticas**

![operadores aritméticos](/JAVA%20E%20OO/IMG/operadoresaritimeticos.png)
<br>

> - **Variáveis e tipos básicos**

* **Sintaxe da declaração de variável:**
<tipo> <nome> = <valor inicial(opcional)>;

ex:
```java
int idade = 25;
double altura = 1.68;
char sexo = 'F'; //char é o tipo pra 1 caractere Unicode.
```
<br>

* **Tipos Primitivos em JAVA**

![Tipos Primitivos em JAVA](/JAVA%20E%20OO/IMG/tiposprimitivos.png)

<br>

* **Nome de Variáveis**

![Nome de Variáveis](/JAVA%20E%20OO/IMG/nomedevariaveis.png)
<br>

* **Saída de Dados**

###### 1. **Comando para escrever na tela**
```java
System.out.println("Com quebra de linha");
System.out.print("Sem quebra de Linha");

```

###### 2. **Escrever o conteúdo de uma variável.**

```java
int y = 32;
System.out.println(y);
```

###### 3. **Escrever uma varável de ponto flutuante.**
**ATENÇÃO: para imprimir para definir casas decimais usar o ```printf```(formatado) ex: %.2f**

**```%n``` = quebra de linha independente da plataforma**

```java
double x = 10.35784;
System.out.println(x);
System.out.printf("%.2f%n",x);
System.out.printf("%.4f%n", x);
```
**Para definir a localidade do programa.**

- Importar o locale: ```import java.util.Locale;```

- Definir a localização: ```Locale.setDefault(Locale.US);```
###### 4. **Concatenar vários elementos no mesmo comando de escrita**

- Concatenar as partes com o operador "+" usando print|println

```java
System.out.printf("A pontuação total foi: " + notaTotal + " e a média: " + media);
```
- Concatenar usando printf

```java
System.out.printf("A pontuação total foi: %.2f e média foi %.3f pontos %n", notaTotal, media);
```

- **%f = ponto flutuante**
- **%d = inteiro**
- **%s = texto**
- **%n = quebra de linha**
- **%c = char** - pose usar %s

Exemplo:

```java

import java.util.Locale;

public class Main {

	
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		String nome = "Maria";
		int idade = 30;
		double renda = 4000.745;
		
		System.out.printf("%s tem %d anos e ganha R$ %.2f reais.%n", nome, idade, renda);
		
	}

}
```

Retorno: **Maria tem 30 anos e ganha R$ 4000.75 reais.**


<br>

Exercício de Fixação:

```java
import java.util.Locale;

public class Main {

	
	public static void main(String[] args) {
	
	String product1 = "Computer";
	String product2 = "Office desk";
	
	int age = 30;
	int code = 5290;
	char gender = 'F';
	
	double price1 = 2100.0;
	double price2 = 650.50;
	double measure = 53.234567;
	
	System.out.println("Products:");
	System.out.printf("%s, which price is $ %.2f%n", product1, price1);
	System.out.printf("%s,which price is $ %.2f%n", product2, price2);
	
	System.out.println();

	System.out.printf("Record: %d years old, code %d and gender: %c%n", age, code, gender);
	
	System.out.println();

	System.out.printf("Measure with eight decimal places: %.8f%n", measure);
	System.out.printf("Rouded (three decimal places): %.3f%n", measure);	
	Locale.setDefault(Locale.US);
	System.out.printf("Us Decimal point: %.3f%n", measure);
	}

}
```
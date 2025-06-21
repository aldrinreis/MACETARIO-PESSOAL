# **Fundamentos Java**
- **[Link Material](https://drive.google.com/drive/folders/1Stwgjhj6xwLX4IQQsWPeolPEHfDEV-vB?usp=drive_link)**

<br>

- **[Fundamentos de Java](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVA%20E%20OO/1%20-%20FundamentosJava.md#fundamentos-de-java)**
- **[Estrutura Sequencial](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVA%20E%20OO/1%20-%20FundamentosJava.md#estrutura-sequencial)**
- **[ Variáveis e tipos básicos](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVA%20E%20OO/1%20-%20FundamentosJava.md#--vari%C3%A1veis-e-tipos-b%C3%A1sicos)**
- **[Tipos Primitivos em JAVA](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVA%20E%20OO/1%20-%20FundamentosJava.md#tipos-primitivos-em-java)**
- **[Nome de Variáveis](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVA%20E%20OO/1%20-%20FundamentosJava.md#nome-de-vari%C3%A1veis)**
- **[Saída de Dados](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVA%20E%20OO/1%20-%20FundamentosJava.md#sa%C3%ADda-de-dados)**
- **[Processamento de Dados - Casting](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVA%20E%20OO/1%20-%20FundamentosJava.md#processamento-de-dados---casting)**
- **[Entrada de Dados](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVA%20E%20OO/1%20-%20FundamentosJava.md#entrada-de-dados)**
- **[Funções Matemáticas](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVA%20E%20OO/1%20-%20FundamentosJava.md#fun%C3%A7%C3%B5es-matem%C3%A1ticas)**


<br>
<br>

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
<br>
<br>

> ### **Estrutura Sequencial**

- **Expressões Aritméticas**

![operadores aritméticos](/JAVA%20E%20OO/IMG/operadoresaritimeticos.png)
<br>
<br>

> ### - **Variáveis e tipos básicos**

* **Sintaxe da declaração de variável:**
<tipo> <nome> = <valor inicial(opcional)>;

ex:
```java
int idade = 25;
double altura = 1.68;
char sexo = 'F'; //char é o tipo pra 1 caractere Unicode.
```
<br>
<br>

> ### **Tipos Primitivos em JAVA**

![Tipos Primitivos em JAVA](/JAVA%20E%20OO/IMG/tiposprimitivos.png)

<br>
<br>

>### **Nome de Variáveis**

![Nome de Variáveis](/JAVA%20E%20OO/IMG/nomedevariaveis.png)
<br>
<br>

>### **Saída de Dados**

###### 1. **Comando para escrever na tela**
```java
System.out.println("Com quebra de linha");
System.out.print("Sem quebra de Linha");

```
<br>
<br>

###### 2. **Escrever o conteúdo de uma variável.**

```java
int y = 32;
System.out.println(y);
```
<br>
<br>


###### 3. **Escrever uma varável de ponto flutuante.**
**ATENÇÃO: para imprimir para definir casas decimais usar o ```printf```(formatado) ex: %.2f**

**```%n``` = quebra de linha independente da plataforma**

```java
double x = 10.35784;
System.out.println(x);
System.out.printf("%.2f%n",x);
System.out.printf("%.4f%n", x);
```
<br>
<br>

**Para definir a localidade do programa.**

- Importar o locale: ```import java.util.Locale;```

- Definir a localização: ```Locale.setDefault(Locale.US);```
<br>
<br>


###### 4. **Concatenar vários elementos no mesmo comando de escrita**

- Concatenar as partes com o operador "+" usando print|println

```java
System.out.println("A pontuação total foi: " + notaTotal + " e a média: " + media);
```
<br>
<br>

- Concatenar usando printf

```java
System.out.printf("A pontuação total foi: %.2f e média foi %.3f pontos %n", notaTotal, media);
```

- **%f = ponto flutuante**
- **%d = inteiro**
- **%s = texto**
- **%n = quebra de linha**
- **%c = char** - pose usar %s
<br>
<br>

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
<br>
<br>

>### **Processamento de Dados - Casting** 

Comando de atribuição. ```<variavel> = <expressão>;```

- Ao fazer contas com números inteiros, inserir o double para que as casas decimais não sejam cortadas(casting)

```java
public class Main {

    public static void main(String[] args) {

        int a,b;
        double resultado;

        a = 5;
        b = 2;

        resultado = (double) a/b;
        System.out.println(resultado);

    }

}
```
<br>
<br>
<br>
<br>

>### **Entrada de Dados**

Para fazer entrada de dados criamos um objeto do tipo scanner.

```Scanner sc = new Scanner(System.in);```

No início do programa inserir: ```import java.util.Scanner;```

Fazer o ```sc.close()``` quando não precisar mais do objeto.
<br>
<br>


- **Para ler uma variável do tipo string.**
```java
String x;
x = sc.next();
```
Exemplo:
```java
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        String nome;

        System.out.print("Digite seu nome: ");
        nome = sc.next();
        System.out.printf("O seu nome é %s", nome);

        sc.close();
    }

}
```
<br>
<br>

- **Para ler uma variável do tipo int.**

```x = sc.nextInt();```
<br>
<br>


- **Para ler uma variável com ponto flutuante.**
<br>

```x = sc.nextDouble();``` 
<br>

- Usa a localidade do sistema.
<br>

Para usar o separador de decimais como . lembrar do locale.

```Locale.setDefault(Locale.US);```

<br>
<br>

- **Para ler um caractere**

```x = sc.next().charAt(0);``` - charAt() pega o primeiro caractere do string.

<br>
<br>

- **Para ler vários dados na mesma Linha**

* Separados por espaço.

```java
import java.util.Locale;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Locale.setDefault(Locale.US);

        Scanner sc = new Scanner(System.in);
        String x;
        int y;
        double z;
        x = sc.next();
        y = sc.nextInt();
        z = sc.nextDouble();
        System.out.println("Dados digitados");
        System.out.println(x);
        System.out.println(y);
        System.out.println(z);


        sc.close();
    }

}
```
<br>
<br>



- **Para ler um texto até a quebra de linha**

```java
import java.util.Locale;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Locale.setDefault(Locale.US);

        Scanner sc = new Scanner(System.in);

        String s1, s2, s3;
        s1 = sc.nextLine();
        s2 = sc.nextLine();
        s3 = sc.nextLine();
        System.out.println("Dados Digitados");
        System.out.println(s1);
        System.out.println(s3);
        System.out.println(s2);

        sc.close();
    }

}
```
<br>
<br>

**ATENÇÃO!!!**

![Quebra de Linha Pendente](/JAVA%20E%20OO/IMG/quebraDeLinhaPendente.png)


<br>
<br>
<br>
<br>

> ### **Funções Matemáticas**

![Funções Matemáticas](/JAVA%20E%20OO/IMG/fucoesMatematicas.png)

- Exemplo:

```java
public class Main {

	
	public static void main(String[] args) {
	
		double x = 3.0;
		double y = 4.0;
		double z = -5.0;
		
		double A,B,C;
		
		A = Math.sqrt(x);
		B = Math.sqrt(y);
		C = Math.sqrt(25.0);
		System.out.println("Raiz quadrada de " + x + "= " + A);
		System.out.println("Raiz quadrada de " + y + "= " + B);
		System.out.println("Raiz quadrada de 25 = " + C);
		
		A = Math.pow(x, y);
		B = Math.pow(x, 2.0);
		C = Math.pow(5.0, 2.0);
		System.out.println(x + " elevado a "+ y + "= " + A);
		System.out.println(x + " elevado a ao quadrado = " + B);
		System.out.println("5 elevado ao quadrado = " + C);
		
		
		
		A = Math.abs(y);
		B = Math.abs(z);
		System.out.println("Valor absoluto de " + y + " = " + A);
		System.out.println("Valor absoluto de " + z + " = " + B);
	}

}

```
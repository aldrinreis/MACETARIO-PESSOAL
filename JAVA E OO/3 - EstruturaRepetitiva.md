# **Estruturas Repetitivas**

- **[While](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVA%20E%20OO/3%20-%20EstruturaRepetitiva.md#while)**
- **[For](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVA%20E%20OO/3%20-%20EstruturaRepetitiva.md#for)**
- **[do While](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/JAVA%20E%20OO/3%20-%20EstruturaRepetitiva.md#do-while)**


<br>

> ### **While**

```java
while ( condição ) {
comando 1
comando 2
}
```
<br>
<br>

> ### **For**

```java
for ( início ; condição ; incremento) {
comando 1
comando 2
}
```
<br>

```java
for (int i=0; i<5; i++) {
System.out.println("Valor de i: " + i);
}

for (int i=4; i>=0; i--) {
System.out.println("Valor de i: " + i);
}
```
<br>
<br>

> ### **do While**

```java
do {
comando 1
comando 2
} while ( condição );

```
<br>



```java

/*
Fazer um programa para ler uma temperatura em Celsius e mostrar o equivalente em Fahrenheit. 
Perguntar se o usuário deseja repetir (s/n). Caso o usuário digite "s", repetir o programa.
Fórmula: F = 9C/5 + 32

*/
import java.util.Locale;
import java.util.Scanner;
public class Main {
public static void main(String[] args) {
Locale.setDefault(Locale.US);
Scanner sc = new Scanner(System.in);
char resp;
do {
System.out.print("Digite a temperatura em Celsius: ");
double C = sc.nextDouble();
double F = 9.0 * C / 5.0 + 32.0;
System.out.printf("Equivalente em Fahrenheit: %.1f%n", F);
System.out.print("Deseja repetir (s/n)? ");
resp = sc.next().charAt(0);
} while (resp != 'n');
sc.close();
}
}
```

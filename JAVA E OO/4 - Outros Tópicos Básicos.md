# **Outros Tópicos Básicos**

> ### **Restrições para nomes de Variáveis**

- Não pode começar com dígito: **use letra ou _**
- Não usar acentos ou til
- Não pode ter espaço em Branco.
- Usar nomes que tenham significado

###### **Convenções**
- Camel Case: lastName
    . pacotes
    . Atributos
    . métodos
    . variáveis e parâmetros

- Pascal Case: ProductService
    . Classes

<br>
<br>

> ### **Comentários**

```java
/*
Comentário de Bloco
*/

// Comentário de Linha
```

<br>
<br>


> ### **Funções Interessantes para Strings**

( Manipulando métodos da classe String)[https://www.devmedia.com.br/java-string-manipulando-metodos-da-classe-string/29862]
(gpt)[https://chatgpt.com/share/677ef5cb-1274-8005-902d-dabc69ee9915]

- Checklist 

• Formatar: toLowerCase(), toUpperCase(), trim() => trim "O método trim remove espaços em branco no inicial e no final da String"
• Recortar: substring(inicio), substring(inicio, fim) 
• Substituir: Replace(char, char), Replace(string, string) 
• Buscar: IndexOf, LastIndexOf 
• str.Split(" ")

```java
String original = "abcde FGHIJ ABC abc DEFG ";
String s01 = original.toLowerCase();
String s02 = original.toUpperCase();
String s03 = original.trim();
String s04 = original.substring(2);
String s05 = original.substring(2, 9);
String s06 = original.replace('a', 'x');
String s07 = original.replace("abc", "xy");
int i = original.indexOf("bc");
int j = original.lastIndexOf("bc");
System.out.println("Original: -" + original + "-");
System.out.println("toLowerCase: -" + s01 + "-");
System.out.println("toUpperCase: -" + s02 + "-");
System.out.println("trim: -" + s03 + "-");
System.out.println("substring(2): -" + s04 + "-");
System.out.println("substring(2, 9): -" + s05 + "-");
System.out.println("replace('a', 'x'): -" + s06 + "-");
System.out.println("replace('abc', 'xy'): -" + s07 + "-");
System.out.println("Index of 'bc': " + i);
System.out.println("Last index of 'bc': " + j);

//SPLIT

String s = "potato apple lemon";
String[] vect = s.split(" ");
String word1 = vect[0];
String word2 = vect[1];
String word3 = vect[2];

```
```
Original: -abcde FGHIJ ABC abc DEFG -
toLowerCase: -abcde fghij abc abc defg -
toUpperCase: -ABCDE FGHIJ ABC ABC DEFG -
trim: -abcde FGHIJ ABC abc DEFG-
substring(2): -cde FGHIJ ABC abc DEFG -
substring(2, 9): -cde FGH-
replace('a', 'x'): -xbcde FGHIJ ABC xbc DEFG -
replace('abc', 'xy'): -xyde FGHIJ ABC xy DEFG -
Index of 'bc': 1
Last index of 'bc': 17

```

<br>
<br>

### **Funções (Sintaxe)**

Funções
• Representam um processamento que possui um significado
    • Math.sqrt(double) 
    • System.out.println(string)

• Principais vantagens: modularização, delegação e reaproveitamento

• Dados de entrada e saída
    • Funções podem receber dados de entrada (parâmetros ou argumentos) 
    • Funções podem ou não retornar uma saída

• Em orientação a objetos, funções em classes recebem o nome de "Métodos"


```java
package course;
import java.util.Scanner;

public class Program {
public static void main(String[] args) {
Scanner sc = new Scanner(System.in);
System.out.println("Enter three numbers:");
    int a = sc.nextInt();
    int b = sc.nextInt();
    int c = sc.nextInt();
    int higher = max(a, b, c);
    showResult(higher);
    sc.close();
}

public static int max(int x, int y, int z) {
    int aux;
    if (x > y && x > z) {
    aux = x;
    } else if (y > z) {
    aux = y;
    } else {
    aux = z;
    }
    return aux;
}

public static void showResult(int value) {
    System.out.println("Higher = " + value);
}
}
```
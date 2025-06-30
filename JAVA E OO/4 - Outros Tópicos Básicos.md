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

- Checklist 

* Formatar: toLowerCase(), toUpperCase(), trim() => trim "O método trim remove espaços em branco no inicial e no final da String"

* Recortar: substring(inicio), substring(inicio, fim) 
* Substituir: Replace(char, char), Replace(string, string) 
* Buscar: IndexOf, LastIndexOf 
* str.Split(" ")

```java
String original = "abcde FGHIJ ABC abc DEFG ";

String s01 = original.toLowerCase();             // "abcde fghij abc abc defg "
String s02 = original.toUpperCase();             // "ABCDE FGHIJ ABC ABC DEFG "
String s03 = original.trim();                    // "abcde FGHIJ ABC abc DEFG"
String s04 = original.substring(2);              // "cde FGHIJ ABC abc DEFG "
String s05 = original.substring(2, 9);           // "cde FGH"
String s06 = original.replace('a', 'x');         // "xbcde FGHIJ ABC xbc DEFG "
String s07 = original.replace("abc", "xy");      // "xyde FGHIJ ABC xy DEFG "

int i = original.indexOf("bc");                  // 1
int j = original.lastIndexOf("bc");              // 19

System.out.println("Original: -" + original + "-");                 // -abcde FGHIJ ABC abc DEFG -
System.out.println("toLowerCase: -" + s01 + "-");                   // -abcde fghij abc abc defg -
System.out.println("toUpperCase: -" + s02 + "-");                   // -ABCDE FGHIJ ABC ABC DEFG -
System.out.println("trim: -" + s03 + "-");                          // -abcde FGHIJ ABC abc DEFG-
System.out.println("substring(2): -" + s04 + "-");                  // -cde FGHIJ ABC abc DEFG -
System.out.println("substring(2, 9): -" + s05 + "-");               // -cde FGH-
System.out.println("replace('a', 'x'): -" + s06 + "-");             // -xbcde FGHIJ ABC xbc DEFG -
System.out.println("replace('abc', 'xy'): -" + s07 + "-");          // -xyde FGHIJ ABC xy DEFG -
System.out.println("Index of 'bc': " + i);                          // 1
System.out.println("Last index of 'bc': " + j);                     // 17


//SPLIT

String s = "potato apple lemon";
String[] vect = s.split(" ");
String word1 = vect[0];
String word2 = vect[1];
String word3 = vect[2];

System.out.println("word1: " + word1);  // word1: potato
System.out.println("word2: " + word2);  // word2: apple
System.out.println("word3: " + word3);  // word3: lemon

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
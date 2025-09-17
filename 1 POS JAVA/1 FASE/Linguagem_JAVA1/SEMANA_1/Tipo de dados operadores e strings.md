
> #### **Strings**

- Declaração de Strings:

````java
String s = "programa";
String t = "em java";
````
<br>

- Comprimento de uma String:

```java
String t = "em java";
int n = t.length();

//Resultado será 7
```
<br>

- Substrings:
```java
String s = "programa";
s = s.substring(0, 2);

//Resultado será pr - dois primeiros a partir do 0
```
<br>

- Comparação de Strings:

Para comparar o conteúdo de duas Strings usamos o métodos ```.equals()```

Evite usar == para comparação de conteúdo, pois ele compara referências de memória.

```java
String s = "casa";
String t = "casa";
boolean resultado = t.equals(s);
```
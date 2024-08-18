// Selecionar todos elementos da classe 'produto_preco'
var elementos = document.getElementsByClassName('produto_preco');

// Implementar um comando de repetição para analisar o valor 'innerText' de cada um dos elementos e somá-los (lembre-se de converter o valor para float)
var soma = 0;
for (var i = 0; i < elementos.length; i++) {
  soma += parseFloat(elementos[i].innerText);
}
// Escrever no conteúdo da página o valor da soma.
document.body.innerHTML += "<p>Total: R$ " + soma + "</p>";
// ou document.write("<p>Total: R$ " + soma + "</p>");
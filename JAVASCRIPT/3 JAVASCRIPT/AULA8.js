//Versão: 08 - Comandos de Decisão Aninhados.
const prompt = require('prompt-sync')();

var nome = prompt("Digite o seu nome: ")

var salario_bruto = parseFloat(prompt("Digite seu salário bruto: "));

var dependentes = parseInt(prompt("Digite o numero de dependentes: "));

var renda_percapita = salario_bruto/(dependentes +1);


if(renda_percapita >= 500) {
    if (salario_bruto <= 1903.98) {
    var ir = salario_bruto * 0.05;
  }
  else if (salario_bruto <= 2826.65) {
    var ir = salario_bruto * 0.075;
  }
  else {
    var ir = salario_bruto * 0.15;
  }
}
else{
  var ir = 0;
}



var salario_liquido = salario_bruto - ir;

console.log(nome, "\nSalário líquido: R$", salario_liquido);

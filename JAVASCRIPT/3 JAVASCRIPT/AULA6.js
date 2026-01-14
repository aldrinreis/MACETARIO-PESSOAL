
//Entrada de dados

//Aula 6 - Entrada de Dados
const prompt = require('prompt-sync')();

var nome = prompt("Digite o seu nome: ")

var salario_bruto = parseFloat(prompt("Digite seu salário bruto: "));

var ir = salario_bruto * 0.10;

var salario_liquido = salario_bruto - ir;

console.log(nome, "\nSalário líquido: R$", salario_liquido);
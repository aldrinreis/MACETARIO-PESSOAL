// Implementar comando de repetição (de 1 até 20)

// Implementar os comandos de decisão para verificar números quadrados pares ou ímpares

var soma_par = 0;
var soma_impar = 0;

for (var i = 1; i <= 20; i++) {


  //let quadrado = i*i ou
  let quadrado = i ** 2
  console.log(quadrado)

  if (quadrado % 2 == 0) {

    soma_par = soma_par + quadrado

  } else {
    soma_impar = soma_impar + quadrado
  }

};

console.log("A soma de quadrados pares: ", soma_par)
console.log("A soma de quadrados ímpares", soma_impar)
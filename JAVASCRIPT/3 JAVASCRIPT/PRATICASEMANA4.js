const prompt = require('prompt-sync')();

alturas = [];

// Implementar a entrada de dados
for(var i = 1; i <= 10; i++){

   console.log(`Altura ${i}`) 
   var alt = parseFloat(prompt("Digite a altura: "));
    
    alturas.push(alt);
};



// Implementar o processamento de dados
// Fazer for dentro de for

for (var i = 0; i<=9; i++){
    soma = 0;

    for (var j = 0; j<=9; j++){

        if(alturas[i] > alturas[j]){

            soma++;

        }
    
    }
// Implementar a saída de dados

    console.log(`Aluno ${i +1}: maior que ${soma} aluno(s)`)
}


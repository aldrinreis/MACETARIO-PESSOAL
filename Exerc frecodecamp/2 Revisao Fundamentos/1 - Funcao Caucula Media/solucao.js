function getAverage(scores) {
    const comprimento = scores.length;
    let counter = 0;  // Inicializar fora do loop para acumular corretamente
    
    for (let i = 0; i < comprimento; i++) {
      counter = counter + scores[i];  // Acumular os valores de scores[i]
    }
  
    let average = counter / comprimento;  // Calcular a média fora do loop
    return average;  // Retornar o valor médio
  }
  
  console.log(getAverage([92, 88, 12, 77, 57, 100, 67, 38, 97, 89]));  // 71.7
  console.log(getAverage([45, 87, 98, 100, 86, 94, 67, 88, 94, 95]));  // 85.4
  

// ===========> Outros modos

//Usando o REDUCE

function getAverage1(scores) {
    const total = scores.reduce((sum, score) => sum + score, 0);  // Somar os elementos
    return total / scores.length;  // Calcular a média
  }
  
  console.log(getAverage1([92, 88, 12, 77, 57, 100, 67, 38, 97, 89]));  // 71.7
  console.log(getAverage1([45, 87, 98, 100, 86, 94, 67, 88, 94, 95]));  // 85.4


//Usando o For of
  
  function getAverage2(scores) {
    let total = 0;
    
    for (const score of scores) {
      total += score;
    }
    
    return total / scores.length;
  }
  
  console.log(getAverage2([92, 88, 12, 77, 57, 100, 67, 38, 97, 89]));  // 71.7
  console.log(getAverage2([45, 87, 98, 100, 86, 94, 67, 88, 94, 95]));  // 85.4
  
// Reduce coma arrow function
/*
const getAverage = scores => scores.reduce((sum, score) => sum + score, 0) / scores.length;

console.log(getAverage([92, 88, 12, 77, 57, 100, 67, 38, 97, 89]));  // 71.7
console.log(getAverage([45, 87, 98, 100, 86, 94, 67, 88, 94, 95]));  // 85.4
*/
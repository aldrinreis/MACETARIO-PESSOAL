function getAverage(scores) {
    const comprimento = scores.length;
    let counter = 0;  
    
    for (let i = 0; i < comprimento; i++) {
      counter = counter + scores[i];  
    }
  
    let average = counter / comprimento;  
    return average;  
  }
  
  console.log(getAverage([92, 88, 12, 77, 57, 100, 67, 38, 97, 89])); 
  console.log(getAverage([45, 87, 98, 100, 86, 94, 67, 88, 94, 95])); 
  

// ===========> Outros modos

//Usando o REDUCE

function getAverage1(scores) {
    const total = scores.reduce((sum, score) => sum + score, 0);  
    
    return total / scores.length; 
  }
  
  console.log(getAverage1([92, 88, 12, 77, 57, 100, 67, 38, 97, 89])); 
  console.log(getAverage1([45, 87, 98, 100, 86, 94, 67, 88, 94, 95])); 


//Usando o For of
  
  function getAverage2(scores) {
    let total = 0;
    
    for (const score of scores) {
      total += score;
    }
    
    return total / scores.length;
  }
  
  console.log(getAverage2([92, 88, 12, 77, 57, 100, 67, 38, 97, 89]));   console.log(getAverage2([45, 87, 98, 100, 86, 94, 67, 88, 94, 95]));
  
// Reduce coma arrow function
/*
const getAverage = scores => scores.reduce((sum, score) => sum + score, 0) / scores.length;

console.log(getAverage([92, 88, 12, 77, 57, 100, 67, 38, 97, 89]));  
console.log(getAverage([45, 87, 98, 100, 86, 94, 67, 88, 94, 95]));  
*/
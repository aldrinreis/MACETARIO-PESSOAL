const prompt = require('prompt-sync')();

idade = parseInt(prompt("Digite sua idade: "));
tempo = parseInt(prompt("Digite seu tempo de serviço: "));
salario = parseFloat(prompt("Digite seu salário: "));

// Implementar o comando de decisão para verificar se o cidadão pode, ou não, se aposentar

if ((idade >= 65) || (tempo >= 30) || (idade >= 60 && tempo >= 25)) {



    if (tempo > 20) {

        var sal_aposenta = salario * 0.8;

        if (sal_aposenta > 7087.22) {

            sal_aposenta = 7087.22

        } else if (sal_aposenta < 1212) {
            sal_aposenta = 1212
        }

        console.log("Você pode se aposentar")
        console.log("Seu salário de aposentado será: ", sal_aposenta)

    } else {

        var sal_aposenta = salario * 0.6;

        if (sal_aposenta > 7087.22) {

            sal_aposenta = 7087.22

        } else if (sal_aposenta < 1212) {
            sal_aposenta = 1212
        }

        console.log("Você pode se aposentar")
        console.log("Seu salário de aposentado será: ", sal_aposenta)
    }

} else {
    console.log("Você NÃO pode se aposentar")
}



// Implementar os comandos de decisão aninhados para calcular o salário de aposentadoria (80% ou 60%)

// Implementar os comandos de decisão aninhados para garantir o salário de aposentadoria dentro dos limites inferior (R$ 1212,00) e superior (R$ 7087,22)

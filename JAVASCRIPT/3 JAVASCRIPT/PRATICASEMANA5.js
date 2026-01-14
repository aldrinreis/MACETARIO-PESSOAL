const prompt = require('prompt-sync')();
var array_notebooks = [];

do {
  console.log("Sistema de Cadastro de Notebooks");
  console.log("1 - Inserir Notebook");
  console.log("2 - Excluir Notebook");
  console.log("3 - Listar Notebook");
  console.log("0 - Sair");

  var opcao = prompt("Digite sua opção: ");

  if (opcao == 1) {
    console.log("\n\nInserindo Notebook...\n");
    let codigo = parseInt(prompt("Digite o código: "));
    let marca = prompt("Digite a marca: ");
    let modelo = prompt("Digite o modelo: ");
    let processador = prompt("Digite o processador: ");
    let ram = parseInt(prompt("Digite a quantidade de meroria ram: "));

    // Neste trecho estamos declarando um objeto
    const notebook = {
      codigo: codigo,
      marca: marca,
      modelo: modelo,
      processador: processador,
      ram: ram
    }
    // Chamar a função inserir

    inserir_notebook(notebook);

  } else if (opcao == 2) {
    console.log("\n\nExcluindo Notebook...\n");
    let codigo = prompt("Digite o código do Notebook: ");
    // Chamar a função excluir
    excluir_notebook(codigo);
  } else if (opcao == 3) {
    console.log("\n\nListando Notebooks...\n");
    // Chamar a função listar
    listar_notebooks();
  } else {
    console.log("\n\nSaindo do programa...\n");
  }

  prompt("\nEnter para continuar...");
  console.clear();
} while (opcao != 0)


function inserir_notebook(notebook) {
  // Implementar corpo da função
  array_notebooks.push(notebook);
}

function excluir_notebook(codigo) {
  // Implementar corpo da função
  for(var i=0; i< array_notebooks.length;i++){
    var notebook  = array_notebooks[i];
    
    if (codigo == notebook.codigo){
       array_notebooks.splice(i,1);
    }
    
};

}

function listar_notebooks() {
  // Implementar corpo da função
    for(var i=0; i< array_notebooks.length;i++){
        var notebook  = array_notebooks[i];
        console.log(`${notebook.codigo} : ${notebook.marca} - ${notebook.modelo} - ${notebook.processador} - ${notebook.ram}`);
        
    };
}




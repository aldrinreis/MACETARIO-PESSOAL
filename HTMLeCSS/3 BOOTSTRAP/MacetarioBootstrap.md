
Referenciar

# site: https://getbootstrap.com/

FORMA 1

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>


# Se desejar usarmos a versão sempre mais atual pode ser removido a iformação da versão no link:

@5.3.1
-
@5
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

FORMA 2 LOCAL

Depois de Baixar o o pacote 
npm install bootstrap@5

<link rel="stylesheet" href="/IFES/1 FRONT END/2 BOOTSTRAP/node_modules/bootstrap/dist/css/bootstrap.min.css">

@Flo


# Breakpoints

Pontos de interrupção disponíveis
O Bootstrap inclui seis pontos de interrupção padrão, às vezes chamados de camadas de grade , para construção responsiva. Esses pontos de interrupção podem ser personalizados se você estiver usando nossos arquivos Sass de origem.

Ponto de interrupção	Infixo de classe	Dimensões
Muito pequeno	                Nenhum	       <576px
Pequeno	                        sm	           ≥576px
Médio	                        md	           ≥768px
Grande	                        lg	           ≥992px
Extra grande	                xl	           ≥1200px
Extra extra grande	            xxl	           ≥1400px

Esses pontos de interrupção são personalizáveis ​​via Sass – você os encontrará em um mapa Sass em nossa _variables.scssfolha de estilo.


# Conteiners

Como eles trabalham
Os contêineres são o elemento de layout mais básico do Bootstrap e são necessários ao usar nosso sistema de grade padrão . Os contêineres são usados ​​para conter, preencher e (às vezes) centralizar o conteúdo dentro deles. Embora os contêineres possam ser aninhados, a maioria dos layouts não exige um contêiner aninhado.

Bootstrap vem com três contêineres diferentes:

# .container 
que define um max-width em cada ponto de interrupção responsivo
# .container-{breakpoint} 
que é width: 100%até o ponto de interrupção especificado
# .container-fluid
 que está width: 100%em todos os pontos de interrupção

A tabela abaixo ilustra como cada contêiner max-widthse compara ao original .containere .container-fluidem cada ponto de interrupção.

https://getbootstrap.com/docs/5.3/layout/containers/



# Layout em Grid

# Cores

8 Cores primarias.
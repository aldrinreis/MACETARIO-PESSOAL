# **GIT e GITHUB**
<br>

- **[Git Fundamental](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/GIT%20E%20GITHUB/GIT.md#git-fundamental)**
- **[Trabalhando com Branches](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/GIT%20E%20GITHUB/GIT.md#trabalhando-com-branches)**
- **[Compartilhamento e atualização de Repositórios](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/GIT%20E%20GITHUB/GIT.md#compartilhamento-e-atualiza%C3%A7%C3%A3o-de-reposit%C3%B3rios)**
- **[Análise e inspenção de repositórios](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/GIT%20E%20GITHUB/GIT.md#an%C3%A1lise-e-inspen%C3%A7%C3%A3o-de-reposit%C3%B3rios)**
- **[Adminstração de Repositórios](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/GIT%20E%20GITHUB/GIT.md#an%C3%A1lise-e-inspen%C3%A7%C3%A3o-de-reposit%C3%B3rios)**
- **[Melhorando os Commits do projeto](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/GIT%20E%20GITHUB/GIT.md#melhorando-os-commits-do-projeto)**

<br>
<br>

> ### **GIT FUNDAMENTAL**
<br>

- **Ver Versão**
```bash
$ git --version
git version 2.46.0.windows.1
```
<br>

- **Verificar Repositório**
```git status``` *Verifica se existe repositório no diretório*

exemplo:
```bash
ALDRIN@ALDRIN MINGW64 /d/CURSO GIT
$ git status
fatal: not a git repository (or any of the parent directories): .git

ALDRIN@ALDRIN MINGW64 /d/CURSO GIT
```
```bash
ALDRIN@ALDRIN MINGW64 /d/CURSO GIT (master)
$ git status
On branch master

No commits yet

nothing to commit (create/copy files and use "git add" to track)

ALDRIN@ALDRIN MINGW64 /d/CURSO GIT (master)

```
<br>

- **Ver Origem**

```git remote -v```
<br>

- **Remover Origem**

```git remote rm origin```
<br>

- **Criar Repositório**

```git init``` *Comando cria repositório na pasta atual*

exemplo:

```bash
ALDRIN@ALDRIN MINGW64 /d/CURSO GIT
$ git init
Initialized empty Git repository in D:/CURSO GIT/.git/

ALDRIN@ALDRIN MINGW64 /d/CURSO GIT (master)
$

```
<br>

- **Criando Repositório**

[Criando Repositório a publicando no GITHUB:](https://docs.github.com/en/get-started/using-git/about-git)


**…or create a new repository on the command line**

```bash
echo "# curso_git_01" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/aldrinreis/curso_git_01.git
git push -u origin main
```
**…or push an existing repository from the command line**
```bash
git remote add origin https://github.com/aldrinreis/curso_git_01.git
git branch -M main
git push -u origin main
```
<br>

- **Verificando alterações**
usar o ```git status```
<br>

- **Adiconando arquivos ao projeto**
usar o ```git add file``` ou  usar o ```git add .``` para adicionar todos os arquivos.
<br>

- **Salvando alterações.**
Usar o ```git commit```

Podemos usar a flag **-a** para commitar todos os arquivos.
Boa prática usar a flag **-m** para enviar uma mensagem no commit

Exemplo ```git commit .\index.html -m "envio do index html"```
Exemplo ```git commit -a -m "Enviando todos os arquivos"```
<br>

- **Enviando o código para o Repositório**
Usar o ```git push```
Exemplo ```git push```
<br>

- **Recebendo Alterações**
Usar o ```git pull```
<br>

- **Clonando Repositórios**

Usar o ```git clone```
Exemplo ```git clone https://github.com/aldrinreis/curso_git_01.git .```

- **Clonar Repositório**

[Clonando repositórios](https://docs.github.com/pt/repositories/creating-and-managing-repositories/cloning-a-repository)
<br>

- **Removendo arquivos**

usar o ```git rm nome_arquivo```

<br>

- **Verificando alterações por meio de log**

usar o ```git log```
<br>

- **Renomeando arquivos**

usar o ```git mv``` pode ser usado para renomear ou mover o arquivo de pasta.
<br>

- **Desfazendo alterações**

usar o ```git checkout nome_arquivo```
<br>

- **Igonorando aquivos e diretórios em um projeto**

Inserir um arquivo chamdo .gitignore na raiz do projeto.
Nele podemos inserir todos os arquivos que não devem entrar no versionamento.

<br>

- **Resetando um branch**

**Reseta para o último push**

usar o ```git reset``` usado normalmente ```git reset --hard origin/main```

Volta a branch ao estado inicial.


<br>
<br>
<br>
<br>


> ### **Trabalhando com Branches**

- **Criando e Visualizando Branches**

Para visualizar ```git branch```
Para criar ```git branch nome_da_branch``` - Sempre partir da Main ou da branch de referencia
<br>

- **Deletando Branches**
Podemo deletar um branc com a flag -d ou -- delete

Exemplo: 

```bash
PS D:\CURSO GIT\curso_git_01> git branch -d primeiro_branch
Deleted branch primeiro_branch (was 4cb6d42).
PS D:\CURSO GIT\curso_git_01> 
```
<br>

- **Mudando de  Branch**

Usar o ```git checkout -b nome``` cria a branch e muda para ela - Sempre partir da Main

Usar o ```git checkout nome``` Apenas cria a branch

Sempre comittar para nao levar alterações ao mudar de branch
<br>

- **Unindo Branches**

Usar o ```git merge nome do branch```
<br>

<hr>

- **Utilizando a stash**

Salvar as modificações atuais para prosseguir de outra maneira e não perder.

Usar ```git stash``` -- o branch será resetado para a versão a partir do repo.
<br>

- **Recuperando a stash**
Verificar stash criadas ```git stash list```

Ver alteração de cada stash ```git stash show -p id da stash```

Recuperar stash ```git stash apply id da stash```
<br>

- **Removendo a stash**

Para remover totalmente as stash de um branch usar: ```git stash clear```
Para deletar uma stash específica: ```git stash drop id da stash```
<br>

<hr>
<br>

- **Ver tags**
Usar o :```git tag```
<br>

- **Criando Tags**
Criar tags nos branches.

A tag server com um checkpoint de um branch e é utilizada para demarcar estágios do desenvolvimento de algun recurso.

Usar o ```git tag -a <nome da tag> -m <mensagem>```
<br>

- **Alterando Tags**
Verificar a tag ```git show <nome da tag>```
Trocar de tag ```git checkout <nome da tag>```
<br>

- **Enviando Tags ao repo**

Usar o: ```git push origin<nome da tag>```
Enviar todas as tags: ```git push origin --tags```

<br>
<br>
<br>
<br>


> ### **Compartilhamento e atualização de Repositórios**

- **Encontrando branches remotas**

Usar o ```git fetch``` || ```git fetch -a``` para puxar todos os branchs
<br>

- **Recebendo atualizações**

Usar o ```git pull```
<br>

- **Enviando alterações**

Usar o ```git push```
<br>

- **Utilizando o remote**

usar o ```git remote add origin <link> ```

Ver Origem ```git remote -v``` Remover Origem ```git remote rm origin```

<br>

- **Conhecendo dos submodules**

É a maneira de possuir dois ou mais projetos em um só repositório.
Para adicionar submódulo usar o: ```git submodule add <link do repo>```
Para verificar os submódulos usar: ```git submodule```

Puxar as info do submódulo => Dentro do diretório do submódulo: ```git pull```

<br>

- **Atualizando os submodules**

Após commitar as mudanças
Usar o: ```git push --recurse-submodules=on-demand```
<br>


> ### **Análise e inspenção de repositórios**

- **Exibindo detalhes de branches e tags**

Usar o ```git show``` para tag usar o ```git show <nome da tag>```
<br>

- **Exibindo diferenças**

usara para branches: ```git diff``` || ```git diff nome do branche```

usar para arquivos: ```git diff <arquivo> <arquivo_b>``` || ```git diff HEAD:<arquivo> <arquivo_b>```
<br>

- **Log de atividades resumido**

Usar o : ```git shortlog```

<br>
<br>
<br>
<br>

> ### **Adminstração de Repositórios**

- **Limpando arquivos untracked**

Usar o: ```git clean``` - Limpa aquivos não trackeados, ou seja arquivos que você não utilizou o git add

<br>

- **Otimizando o repositório**

O comando ```git gc``` é uma abreviação para *garbage collector* identifica arquivos que não são mais necessários e exclui.

<br>

- **Verificando integridade dos arquivos**

Usar o: ```git fsck``` verifica possível corrupção em arquivos.
<br>

- **Reflog**
Comando ```git reflog```- Mapeia todos os seus passos no repositório. Tempo de expiração padrão dos reflogs é 30 dias.
É possível voltar a estado anterio do código com: ```git reset --hard <id do reflog>```

<br>

- **Comprimindo o Repositório**

```git archive --format zip --output main_files.zip main```

<br>
<br>
<br>
<br>

> ### **Melhorando os Commits do projeto**

- **Técnica de private branches**

Criar a branch privada: ```git checkout -b private_nome_branch```

É possivel criar branche que não serão compartilhadas no repositório.
Ao fim da solução do problema podemos fazer um **rebase**

Comando: ```git rebase <atual> <privado> -i```

Escolhemos os branchs para excluir **(squash)** e renomear com **(reword)**
<br>

- **Melhorando as menssagens dos commits**

Usar quebra de linha e fechar aspas ao final.

Exemplo:

```bash
PS D:\LINUX\MACETARIO-PESSOAL> git commit -a -m "Adicionado novas informações a DOC de GIT
>>
>> Adicionado a doc: 
>> Como trabalhar com branches
>> Adimistração de reps
>> Melhorando os commits"
```


# **GIT e GITHUB**
<br>

- **[Git Fundamental](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/GIT%20E%20GITHUB/GIT.md#git-fundamental)**


> ### **GIT FUNDAMENTAL**

- **Ver Versão**
```bash
$ git --version
git version 2.46.0.windows.1
```

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

- **Ver Origem**

```git remote -v```

- **Remover Origem**

```git remote -v```



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


<hr>

- **Clonar Repositório**

[Clonando repositórios](https://docs.github.com/pt/repositories/creating-and-managing-repositories/cloning-a-repository)

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

- **Verificando alterações**
usar o ```git status```

- **Adiconando arquivos ao projeto**
usar o ```git add file``` ou  usar o ```git add .``` para adicionar todos os arquivos.

- **Salvando alterações.**
Usar o ```git commit```

Podemos usar a flag **-a** para commitar todos os arquivos.
Boa prática usar a flag **-m** para enviar uma mensagem no commit

Exemplo ```git commit .\index.html -m "envio do index html"```
Exemplo ```git commit -a -m "Enviando todos os arquivos"```

- **Enviando o código para o Repositório**
Usar o ```git push```
Exemplo ```git push```

- **Recebendo Alterações**

Usar o ```git pull```

- **Clonando Repositórios**

Usar o ```git clone```
Exemplo ```git clone https://github.com/aldrinreis/curso_git_01.git```

- **Removendo arquivos**

usar o ```git rm nome_arquivo```

- **Verificando alterações por meio de log**

usar o ```git log```

- **Renomeando arquivos**

usar o ```git mv``` pode ser usado para renomear ou mover o arquivo de pasta.

- **Desfazendo alterações**

usar o ```git checkout nome_arquivo```

- **Igonorando aquivos e diretórios em um projeto**

Inserir um arquivo chamdo .gitignore na raiz do projeto.
Nele podemos inserir todos os arquivos que não devem entrar no versionamento.

- **Resetando um branch**

usar o ```git reset``` usado normalmente ```git reset --hard origin/main```

Volta a branch ao estado inicial.
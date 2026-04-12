# 🚀 Setup Terminal Profissional (Zsh + Oh My Zsh + Powerlevel10k)

Guia completo para transformar o terminal padrão em um ambiente moderno, produtivo e visualmente agradável.

---

## 📦 1. Instalar Zsh

### Fedora

```bash
sudo dnf install zsh -y
```

### Ubuntu / WSL

```bash
sudo apt update
sudo apt install zsh git curl -y
```

---

## 🔄 2. Definir Zsh como shell padrão

```bash
chsh -s $(which zsh)
```

👉 Reinicie o terminal após isso

---

## ⚙️ 3. Instalar Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

---

## 🔌 4. Instalar Plugins

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

---

## 📝 5. Configurar plugins

Editar arquivo:

```bash
vim ~/.zshrc
```

Alterar:

```bash
plugins=(git)
```

Para:

```bash
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```

---

## 🎨 6. Instalar Powerlevel10k

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
```

---

## 📝 7. Ativar tema

Editar:

```bash
vim ~/.zshrc
```

Alterar:

```bash
ZSH_THEME="robbyrussell"
```

Para:

```bash
ZSH_THEME="powerlevel10k/powerlevel10k"
```

---

## 🔄 8. Aplicar configuração

```bash
source ~/.zshrc
```

---

## ⚙️ 9. Rodar assistente de configuração

```bash
p10k configure
```

---

## 🎯 Configuração recomendada (resumo rápido)

Durante o assistente, utilizar:

* Font issues → `n`
* Arrow alignment → `3` (se tiver dúvida)
* Icons → `Few icons`
* Style → `Lean`
* Charset → `Unicode`
* Colors → `256 colors`
* Time → `24h`
* Prompt Height → `Two lines`
* Prompt Connection → `Disconnected`
* Frame → `No frame`
* Flow → `Concise`
* Transient Prompt → `Yes`

---

## 🔤 10. (Opcional) Melhorar fontes

### Fedora

```bash
sudo dnf install powerline-fonts
```

---

### 🔥 Melhor opção (recomendado)

Instalar uma **Nerd Font** (ex: MesloLGS NF)

Depois configurar no terminal:

* Preferências → Perfil → Texto
* Ativar fonte personalizada
* Selecionar Nerd Font

---

## 💡 Comandos úteis

Recarregar config:

```bash
source ~/.zshrc
```

Reconfigurar tema:

```bash
p10k configure
```

---

## 🔥 Resultado esperado

Após tudo configurado você terá:

* Autocomplete inteligente
* Highlight de comandos
* Prompt moderno e limpo
* Integração com Git (branch visível)
* Terminal otimizado para produtividade

---

## 🚀 Próximos upgrades

* Criar aliases SSH (ex: `sshrocky`)
* Automatizar comandos (Asterisk, Node, etc.)
* Usar tmux para múltiplos terminais
* Padronizar setup entre Fedora e WSL

---

## 🧠 Observações

* Caso os ícones fiquem quebrados → use Nerd Font
* Caso o layout fique estranho → rode novamente:

  ```bash
  p10k configure
  ```
* Esse setup funciona em:

  * Fedora
  * Ubuntu
  * WSL
  * Qualquer distro Linux moderna

---

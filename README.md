## 📋 Índice
- [Visão Geral](#-visão-geral)
- [Características Principais](#-características-principais)
- [Estrutura de Diretórios](#-estrutura-de-diretórios)

## 🎯 Visão Geral
Frequentemente adiciono e removo plugins para ver se me adapto ou apenas utilizar por um tempo um plugin novo, porem ha plugins que são essenciais e nunca removi do meu projeto, portanto criei este repositorio com uma organização modular do neovim para facilitar instalacao e manutenção do neovim. Cada funcionalidade está isolada em seu próprio módulo, facilitando manutenção e adição de novas features.

OBS: obvio que usei IA pra gerar essa descrição, ate parece que vou escrever 150 linhas de README so pra mim

## 📁 Estrutura de Diretórios
```
lua/
├── config.lua              # 🎛️ Configuração principal
├── autocmds.lua            # ⚡ Autocmds personalizados
├── utils.lua               # 🛠️ Funções utilitárias
├── options.lua             # ⚙️ Opções do Neovim
├── mappings.lua            # ⌨️ Mappings principais
├── chadrc.lua              # 🎨 Configuração do NvChad
├── configs/                # 🔧 Configurações de plugins
│   ├── lsp/                # 📝 Configurações LSP por linguagem
│   │   ├── typescript.lua
│   │   ├── eslint.lua
│   │   ├── tailwindcss.lua
│   │   └── html.lua
│   ├── lspconfig.lua       # 🧠 Configuração principal do LSP
│   ├── conform.lua         # 🎨 Configuração do formatter
│   ├── lint.lua            # 🔍 Configuração do linter
│   ├── null-ls.lua         # 🔄 Configuração do null-ls
│   └── ...
├── mappings/               # ⌨️ Mappings organizados por categoria
│   ├── basic.lua           # 🏠 Mappings básicos
│   ├── ai.lua              # 🤖 Mappings de IA/Copilot
│   ├── folding.lua         # 📁 Mappings de folding
│   ├── git.lua             # 🌿 Mappings de Git
│   ├── lsp.lua             # 🧠 Mappings de LSP
│   ├── utilities.lua       # 🛠️ Mappings utilitários
│   └── ui.lua              # 🎨 Mappings de UI
└── plugins/                # 📦 Plugins organizados por categoria
    ├── init.lua            # 📋 Importa todos os plugins
    ├── ai.lua              # 🤖 Plugins de IA
    ├── development.lua     # 💻 Plugins de desenvolvimento
    ├── treesitter.lua      # 🌳 Plugins de syntax highlighting
    └── utilities.lua       # 🛠️ Plugins utilitários
```

## 🚀 Funcionalidades
### 🧠 **Linguagens Suportadas**
- **TypeScript/JavaScript** - LSP completo com ESLint
- **Go** - Gopls com formatação automática
- **Lua** - LSP nativo do Neovim
- **HTML/CSS** - Suporte completo com TailwindCSS
- **JSON, TOML, INI** - Syntax highlighting

### 🤖 **IA e Autocompletar**
- **GitHub Copilot** - Autocompletar inteligente
- **LSP** - IntelliSense para todas as linguagens
- **Snippets** - Snippets automáticos

### 🎨 **Formatação e Linting**
- **Conform.nvim** - Formatação automática
- **ESLint** - Linting para JavaScript/TypeScript
- **Prettier** - Formatação de código
- **Stylua** - Formatação de Lua

### 🌿 **Git Integration**
- **Lazygit** - Interface Git visual
- **Git pickers** - Navegação por branches, commits, etc.
- **Git browse** - Abertura de arquivos no GitHub

### 🎨 **UI e Experiência**
- **NvChad UI** - Interface moderna
- **Smear Cursor** - Cursor animado
- **Telescope** - Busca e navegação
- **Dashboard** - Tela inicial personalizada

## 📦 Instalação
### Pré-requisitos
- Neovim 0.11.2+
- Node.js (para LSPs JavaScript/TypeScript)
- Go (para desenvolvimento Go)

## ⚙️ Configuração

### ⌨️ **Mappings Personalizados**
Adicione seus mappings em `lua/mappings/`:
```lua
-- lua/mappings/custom.lua
local M = {}
M.setup = function()
  local map = vim.keymap.set
  map("n", "<leader>xx", ":!echo 'Hello World'<CR>", { desc = "Hello World" })
end
return M
```

### 🔧 **Configuração de LSP**
Para adicionar uma nova linguagem, crie `lua/configs/lsp/nova_linguagem.lua`:
```lua
local nvlsp = require "nvchad.configs.lspconfig"
return {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    -- Configurações específicas da linguagem
  },
}
```

## 🔧 Adicionando Novas Funcionalidades

### 🧠 **Adicionar Linguagem LSP**
1. Crie `lua/configs/lsp/linguagem.lua`
2. Importe em `lua/configs/lspconfig.lua`
3. Adicione ao Mason em `lua/plugins/development.lua`

### ⌨️ **Adicionar Mappings**
1. Crie `lua/mappings/categoria.lua`
2. Importe em `lua/mappings.lua`
3. Defina a função `setup()`

## 📦 Plugins Incluídos

### 🤖 **AI & Autocomplete**
- **github/copilot.vim** - GitHub Copilot
- **smear-cursor.nvim** - Cursor animado

### 💻 **Development**
- **neovim/nvim-lspconfig** - LSP
- **williamboman/mason.nvim** - Gerenciador de LSPs
- **stevearc/conform.nvim** - Formatação
- **mfussenegger/nvim-lint** - Linting
- **nvimtools/none-ls.nvim** - Formatação adicional

### 🌳 **Syntax & Treesitter**
- **nvim-treesitter/nvim-treesitter** - Syntax highlighting
- **windwp/nvim-ts-autotag** - Auto-tags

### 🛠️ **Utilities**
- **christoomey/vim-tmux-navigator** - Navegação tmux
- **folke/snacks.nvim** - Utilitários diversos
- **nvim-lua/plenary.nvim** - Funções auxiliares
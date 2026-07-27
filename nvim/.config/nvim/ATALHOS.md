# Atalhos do Neovim

> `<leader>` = tecla espaço (definido em `lua/vim-options.lua`)

## Geral (`lua/vim-options.lua`)

| Atalho | Modo | Ação |
| --- | --- | --- |
| `<C-k>` | Normal | Move para a janela acima |
| `<C-j>` | Normal | Move para a janela abaixo |
| `<C-h>` | Normal | Move para a janela à esquerda |
| `<C-l>` | Normal | Move para a janela à direita |
| `<C-j>` | Insert | Equivale a `<Esc>` (sai do modo de inserção) |
| `<F5>` | Normal | Remove espaços em branco no fim das linhas |
| `<leader>t` | Normal | Reindenta o arquivo inteiro (`:retab`) |
| `<leader>n` | Normal | Remove o destaque da última busca (`:nohlsearch`) |
| `<C-s>` | Normal | Salva o arquivo (`:w!`) |
| `<C-q>` | Normal | Fecha o Neovim (`:q`) |
| `<leader>h` | Normal | Divide a janela na vertical (`:vs`) |
| `<leader>v` | Normal | Divide a janela na horizontal (`:sp`) |
| `<leader>y` | Visual | Copia a seleção para a área de transferência do sistema |
| `<leader>p` | Visual | Cola da área de transferência do sistema |

## Busca e navegação de arquivos

### Telescope (`lua/plugins/telescope.lua`)

| Atalho | Modo | Ação |
| --- | --- | --- |
| `<C-p>` | Normal | Busca arquivos no projeto (`find_files`) |
| `<leader>fg` | Normal | Busca texto no projeto (`live_grep`) |
| `<leader>b` | Normal | Lista buffers abertos (`:Telescope buffers`, definido em `vim-options.lua`) |
| `<leader>fd` | Normal | Lista diagnósticos (erros/warnings) do projeto (definido em `lsp-config.lua`) |

### Neo-tree (`lua/plugins/neo-tree.lua`)

| Atalho | Modo | Ação |
| --- | --- | --- |
| `<C-n>` | Normal | Abre a árvore de arquivos à esquerda |
| `<leader>bf` | Normal | Abre a lista de buffers em janela flutuante |

### Oil (`lua/plugins/oil.lua`)

Usa os atalhos padrão do plugin (nenhum customizado neste config):

| Atalho | Modo | Ação |
| --- | --- | --- |
| `-` | Normal | Abre o diretório pai como buffer editável |
| `<CR>` | Normal | Abre o arquivo/diretório sob o cursor |

## LSP (`lua/plugins/lsp-config.lua`)

Válido para os servidores configurados: `ts_ls`, `html`, `lua_ls`, `clangd`, `pyright`, `bashls`.

| Atalho | Modo | Ação |
| --- | --- | --- |
| `K` | Normal | Mostra documentação/hover do símbolo sob o cursor |
| `<leader>gd` | Normal | Vai para a definição do símbolo |
| `<leader>gD` | Normal | Vai para a declaração do símbolo (ex: header em C/C++) |
| `<leader>gr` | Normal | Lista as referências do símbolo |
| `<leader>ca` | Normal | Mostra ações de código disponíveis (code actions) |
| `<leader>e` | Normal | Mostra o diagnóstico (erro/warning) da linha atual num popup |
| `[d` | Normal | Vai para o diagnóstico anterior |
| `]d` | Normal | Vai para o próximo diagnóstico |
| `<leader>fd` | Normal | Lista todos os diagnósticos via Telescope |

## Preview em popup (`lua/plugins/goto-preview.lua`)

Mostra o resultado num popup flutuante, sem sair do buffer atual.

| Atalho | Modo | Ação |
| --- | --- | --- |
| `<leader>pd` | Normal | Preview da definição |
| `<leader>pD` | Normal | Preview da declaração |
| `<leader>pr` | Normal | Preview das referências |
| `<leader>pi` | Normal | Preview da implementação |
| `<leader>pc` | Normal | Fecha todas as janelas de preview |

## Formatação (`lua/plugins/none-ls.lua`)

| Atalho | Modo | Ação |
| --- | --- | --- |
| `<leader>gf` | Normal | Formata o buffer atual (stylua, prettier, rubocop, conforme o filetype) |

## Comentários (`lua/plugins/comment.lua`)

Usa os atalhos padrão do Comment.nvim (nenhum customizado neste config):

| Atalho | Modo | Ação |
| --- | --- | --- |
| `gcc` | Normal | Alterna comentário de linha |
| `gbc` | Normal | Alterna comentário de bloco |
| `gc` | Visual | Alterna comentário na seleção (linha) |
| `gb` | Visual | Alterna comentário na seleção (bloco) |

## Git

### Gitsigns (`lua/plugins/git-stuff.lua`)

| Atalho | Modo | Ação |
| --- | --- | --- |
| `<leader>gp` | Normal | Mostra o preview das mudanças do hunk atual |
| `<leader>gt` | Normal | Alterna o "blame" da linha atual (inline) |

### Fugitive (`lua/plugins/git-stuff.lua`)

Sem atalhos customizados — use os comandos `:Git`, `:Gdiffsplit`, etc.

## Debug / DAP (`lua/plugins/debugging.lua`)

| Atalho | Modo | Ação |
| --- | --- | --- |
| `<leader>dt` | Normal | Adiciona/remove um breakpoint na linha atual |
| `<leader>dc` | Normal | Continua a execução (ou inicia o debug) |
| `<leader>dx` | Normal | Encerra a sessão de debug |
| `<leader>do` | Normal | Executa "step over" (passa por cima da linha atual) |

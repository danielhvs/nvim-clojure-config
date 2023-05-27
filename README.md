# Passo 1 instalar plugin manager
- packer: https://github.com/wbthomason/packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
- abre com nvim
- `:PackerSync`
- Vai dar erro no treesitter
- Fecha e abre o nvim
- `:PackerSync`

# Passo 2 instalar treesitter
- config basica para clojure
- ensure clojure

# Passo 3 instalar autocomplete e clojure-lsp
- instalar `clojure-lsp`: https://github.com/clojure-lsp/clojure-lsp
- ver as configs em ./.config/nvim/lua/*.lua
    - `:LspInfo` para verificar se funcionou

# Passo 4 instalar conjure
- usar localleader key
- exemplos: `-er`  (eval root form)
- exemplos: `-ee`  (eval form)
- exemplos: `-ew`  (eval word)
- exemplos: `-eb`  (eval buffer)

# Passo 5 instalar telescope
- fim: config minima funcional

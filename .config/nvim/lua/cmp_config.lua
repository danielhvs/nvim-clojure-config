local cmp = require('cmp')

local function _1_(entry, item)
  item.menu = (({
  buffer = "buff",
  conjure = "conj",
  path = "path",
  nvim_lsp = "lsp"}
  )[entry.source.name] or "")
  return item
end

return cmp.setup({
  formatting = {format = _1_},
  mapping = {["<S-Tab>"] = cmp.mapping.select_prev_item(),
             ["<Tab>"] = cmp.mapping.select_next_item(),
             ["<C-d>"] = cmp.mapping.scroll_docs(( - 4)),
             ["<C-f>"] = cmp.mapping.scroll_docs(4),
             ["<C-e>"] = cmp.mapping.close(),
             ["<CR>"] = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Insert, select = true})}, 
  sources = cmp.config.sources ({{name = "nvim_lsp"},
             {name = "conjure"}, 
             {name = "path"},
             {name = "buffer"}})})

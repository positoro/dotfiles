return {
  "hrsh7th/nvim-cmp",
  version = false,
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
--  "hrsh7th/cmp-nvim-lsp-signature-help",
--  "hrsh7th/cmp-buffer",
--  "hrsh7th/cmp-path",
  },
  opts = function()
    local cmp = require("cmp")

    return {
      completion = {
        completeopt = "menu,menuone,noinsert",
      },

      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      auto_brackets = {},
      preselect = true,

      mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-k>'] = cmp.mapping.scroll_docs(-1),
        ['<C-j>'] = cmp.mapping.scroll_docs(1),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm { select = true },
      }),

      formatting = {
        format = function(entry, item)
          item['abbr'] = vim.fn.strcharpart(item['abbr'], 0, 39) .. "..."
          item['menu'] = vim.fn.strcharpart(item['menu'], 0, 1) .. "..."
          return item
        end,
      },

      sources = cmp.config.sources({
        {name = "nvim_lsp"},
--        {name = "cmp-nvim-lsp-signature-help"},
--        {name = "buffer"},
--        {name = "path"},
      }),

      experimental = {
        ghost_text = true,
      },

   }
  end,
}

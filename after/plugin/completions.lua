local cmp = require('cmp')

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- confirm completion
    ['<tab>'] = cmp.mapping.confirm({select = true})

  }),
})

return {
  enabled = false,
  'Exafunction/windsurf.vim',
  event = 'BufEnter',

  config = function()
    -- Accept current completion
    vim.keymap.set('i', '<C-CR>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true, silent = true })
    -- Cycle forward through completions
    vim.keymap.set('i', '<C-N>', function()
      return vim.fn['codeium#CycleCompletions'](1)
    end, { expr = true, silent = true })
    -- Cycle backward through completions
    vim.keymap.set('i', '<C-P>', function()
      return vim.fn['codeium#CycleCompletions'](-1)
    end, { expr = true, silent = true })
    -- Clear the current completion
    vim.keymap.set('i', '<C-x>', function()
      return vim.fn['codeium#Clear']()
    end, { expr = true, silent = true })
  end,
}

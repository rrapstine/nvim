return {
  'rmagatti/auto-session',
  config = function()
    require('auto-session').setup {
      auto_session_suppress_dirs = { '~/', '~/Code', '~/Downloads', '/' },
      session_lens = {
        buftypes_to_ignore = {},
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false,
      },
    }
  end,
}

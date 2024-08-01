return {
  'mbbill/undotree',
  keys = {
    { '<leader>U', '<CMD>UndotreeToggle<CR>', desc = '[U]ndotree toggle' },
  },
  init = function()
    -- Persist undo, refer https://github.com/mbbill/undotree#usage
    local undodir = '/tmp/undotree.nvim/'

    if vim.fn.has 'persistent_undo' == 1 then
      if vim.fn.isdirectory(undodir) == 0 then
        os.execute('mkdir -p ' .. undodir)
      end

      vim.opt.undodir = undodir
      vim.opt.undofile = true
    end

    -- set layout style to 2, let g:undotree_WindowLayout = 2
    vim.g.undotree_WindowLayout = 2
  end,
}

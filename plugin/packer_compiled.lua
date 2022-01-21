-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/nick/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/nick/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/nick/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/nick/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/nick/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  catppuccin = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["feline.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/feline-nvim/feline.nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  neovim = {
    config = { "\27LJ\2\n;\0\0\2\0\3\0\0056\0\0\0009\0\1\0+\1\2\0=\1\2\0K\0\1\0\30rose_pine_disable_italics\6g\bvim\0" },
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/neovim",
    url = "https://github.com/rose-pine/neovim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\nw\0\1\4\0\6\0\n6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\0037\2\4\0007\1\5\0006\1\5\0L\1\2\0\rroot_dir\6_\nbufnr\29get_python_venv_for_file\26packages/python_utils\frequire˚\1\1\0\b\0\15\1#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\r\0004\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\4\0049\4\5\4>\4\1\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\4\0049\4\6\4>\4\2\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\a\0049\4\b\0049\4\t\0045\6\v\0003\a\n\0=\a\f\6B\4\2\0?\4\0\0=\3\14\2B\0\2\1K\0\1\0\fsources\1\0\0\bcwd\1\0\0\0\twith\vpylint\16diagnostics\nblack\vstylua\15formatting\rbuiltins\nsetup\fnull-ls\frequire\aÄÄ¿ô\4\0" },
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireí\4\1\0\b\0 \00066\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\1\6\0005\3\n\0005\4\b\0003\5\a\0=\5\t\4=\4\v\0035\4\14\0009\5\f\0009\5\r\5)\a¸ˇB\5\2\2=\5\15\0049\5\f\0009\5\r\5)\a\4\0B\5\2\2=\5\16\0049\5\f\0009\5\17\5B\5\1\2=\5\18\0049\5\f\0009\5\19\5B\5\1\2=\5\20\0049\5\f\0009\5\21\0055\a\22\0B\5\2\2=\5\23\4=\4\f\0034\4\6\0005\5\24\0>\5\1\0045\5\25\0>\5\2\0045\5\26\0>\5\3\0045\5\27\0>\5\4\0045\5\28\0>\5\5\4=\4\29\0035\4\30\0=\4\31\3B\1\2\1K\0\1\0\17experimental\1\0\1\15ghost_text\2\fsources\1\0\2\tname\vbuffer\19keyword_length\3\5\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\1\4\0\0\tmenu\fmenuone\rnoselect\16completeopt\bopt\bvim\0" },
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nè\3\0\2\b\0\21\00056\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\4\0006\6\0\0009\6\5\0069\6\6\0069\6\a\0065\a\b\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\n\0006\6\0\0009\6\5\0069\6\6\0069\6\v\0065\a\f\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\r\0006\6\0\0009\6\5\0069\6\6\0069\6\14\0065\a\15\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\16\0006\6\0\0009\6\5\0069\6\6\0069\6\17\0065\a\18\0=\1\t\aB\2\5\0016\2\0\0009\2\19\2'\4\20\0B\2\2\1K\0\1\0E autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync() \bcmd\1\0\0\15references\14<leader>r\1\0\0\vrename\14<leader>c\1\0\0\nhover\6K\vbuffer\1\0\0\15definition\bbuf\blsp\14<leader>d\6n\bset\vkeymap\bvim·\1\1\0\6\0\14\0\0216\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0026\4\5\0009\4\6\0049\4\a\0049\4\b\4B\4\1\0A\2\0\0029\3\t\0009\3\n\0035\5\v\0=\2\f\5=\1\r\5B\3\2\1K\0\1\0\14on_attach\17capabilities\1\0\0\nsetup\fpyright\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["onenord.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/onenord.nvim",
    url = "https://github.com/rmehri01/onenord.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    config = { "\27LJ\2\nQ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\17file_browser\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nÅ\2\0\0\5\0\16\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0B\0\4\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\14\0'\4\15\0B\0\4\1K\0\1\0\29:Telescope live_grep<cr>\14<leader>g\30:Telescope find_files<cr>\14<leader>f\6n\bset\vkeymap\bvim\fpickers\1\0\0\15find_files\1\0\0\1\0\1\ntheme\bivy\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["yabs.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/yabs.nvim",
    url = "https://github.com/pianocomposer321/yabs.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: yabs.nvim
time([[Config for yabs.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "yabs.nvim")
time([[Config for yabs.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireí\4\1\0\b\0 \00066\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\1\6\0005\3\n\0005\4\b\0003\5\a\0=\5\t\4=\4\v\0035\4\14\0009\5\f\0009\5\r\5)\a¸ˇB\5\2\2=\5\15\0049\5\f\0009\5\r\5)\a\4\0B\5\2\2=\5\16\0049\5\f\0009\5\17\5B\5\1\2=\5\18\0049\5\f\0009\5\19\5B\5\1\2=\5\20\0049\5\f\0009\5\21\0055\a\22\0B\5\2\2=\5\23\4=\4\f\0034\4\6\0005\5\24\0>\5\1\0045\5\25\0>\5\2\0045\5\26\0>\5\3\0045\5\27\0>\5\4\0045\5\28\0>\5\5\4=\4\29\0035\4\30\0=\4\31\3B\1\2\1K\0\1\0\17experimental\1\0\1\15ghost_text\2\fsources\1\0\2\tname\vbuffer\19keyword_length\3\5\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\1\4\0\0\tmenu\fmenuone\rnoselect\16completeopt\bopt\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nè\3\0\2\b\0\21\00056\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\4\0006\6\0\0009\6\5\0069\6\6\0069\6\a\0065\a\b\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\n\0006\6\0\0009\6\5\0069\6\6\0069\6\v\0065\a\f\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\r\0006\6\0\0009\6\5\0069\6\6\0069\6\14\0065\a\15\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\16\0006\6\0\0009\6\5\0069\6\6\0069\6\17\0065\a\18\0=\1\t\aB\2\5\0016\2\0\0009\2\19\2'\4\20\0B\2\2\1K\0\1\0E autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync() \bcmd\1\0\0\15references\14<leader>r\1\0\0\vrename\14<leader>c\1\0\0\nhover\6K\vbuffer\1\0\0\15definition\bbuf\blsp\14<leader>d\6n\bset\vkeymap\bvim·\1\1\0\6\0\14\0\0216\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0026\4\5\0009\4\6\0049\4\a\0049\4\b\4B\4\1\0A\2\0\0029\3\t\0009\3\n\0035\5\v\0=\2\f\5=\1\r\5B\3\2\1K\0\1\0\14on_attach\17capabilities\1\0\0\nsetup\fpyright\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: neovim
time([[Config for neovim]], true)
try_loadstring("\27LJ\2\n;\0\0\2\0\3\0\0056\0\0\0009\0\1\0+\1\2\0=\1\2\0K\0\1\0\30rose_pine_disable_italics\6g\bvim\0", "config", "neovim")
time([[Config for neovim]], false)
-- Config for: telescope-file-browser.nvim
time([[Config for telescope-file-browser.nvim]], true)
try_loadstring("\27LJ\2\nQ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\17file_browser\19load_extension\14telescope\frequire\0", "config", "telescope-file-browser.nvim")
time([[Config for telescope-file-browser.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nÅ\2\0\0\5\0\16\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0B\0\4\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\14\0'\4\15\0B\0\4\1K\0\1\0\29:Telescope live_grep<cr>\14<leader>g\30:Telescope find_files<cr>\14<leader>f\6n\bset\vkeymap\bvim\fpickers\1\0\0\15find_files\1\0\0\1\0\1\ntheme\bivy\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\nw\0\1\4\0\6\0\n6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\0037\2\4\0007\1\5\0006\1\5\0L\1\2\0\rroot_dir\6_\nbufnr\29get_python_venv_for_file\26packages/python_utils\frequire˚\1\1\0\b\0\15\1#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\r\0004\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\4\0049\4\5\4>\4\1\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\4\0049\4\6\4>\4\2\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\a\0049\4\b\0049\4\t\0045\6\v\0003\a\n\0=\a\f\6B\4\2\0?\4\0\0=\3\14\2B\0\2\1K\0\1\0\fsources\1\0\0\bcwd\1\0\0\0\twith\vpylint\16diagnostics\nblack\vstylua\15formatting\rbuiltins\nsetup\fnull-ls\frequire\aÄÄ¿ô\4\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

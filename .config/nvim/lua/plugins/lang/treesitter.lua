return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "cpp",
      "c",
      "ocaml"
    },
    auto_install = false,
    highlight = {
      enable = true,
      use_languagetree = true,
      additional_vim_regex_highlighting = false
    },
    indent = { enable = true },
    rainbow = {
      enable = true
    }
  }
}

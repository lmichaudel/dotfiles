return {
  "ibhagwan/fzf-lua",
  config = function()
    require("fzf-lua").setup({
      "borderless-full",
      file_ignore_patterns = { ".DS_Store", ".build/", ".cache/", ".idea/", ".vscode",
        "%.cmi$", "%.cmo$", "tempCodeRunnerFile.ml" },
    })
  end
}

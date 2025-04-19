return {
  cmd = {
    'clangd',
    "--background-index",
    "--pch-storage=memory",
    "--all-scopes-completion",
    "--pretty",
    "--suggest-missing-includes",
    "-j=6",
    "--inlay-hints",
    "--header-insertion-decorators",
    "--function-arg-placeholders",
    "--completion-style=detailed"
  },
  root_markers = { 'compile_commands.json' },
  filetypes = { 'c', 'cpp' },
}

let content = (open home/programs/nixvim.nix)
let fixed = ($content 
  | str replace -a "plugins.nvim-tree.renderer.icons.show.folder" "plugins.nvim-tree.settings.renderer.icons.show.folder"
  | str replace -a "plugins.nvim-tree.renderer.icons.show.file" "plugins.nvim-tree.settings.renderer.icons.show.file" 
  | str replace -a "plugins.nvim-tree.view.side" "plugins.nvim-tree.settings.view.side"
  | str replace -a "plugins.nvim-tree.view.width" "plugins.nvim-tree.settings.view.width"
  | str replace -a "plugins.nvim-tree.updateFocusedFile.enable" "plugins.nvim-tree.settings.update_focused_file.enable"
  | str replace -a "plugins.nvim-tree.hijackNetrw" "plugins.nvim-tree.settings.hijack_netrw"
  | str replace -a "plugins.nvim-tree.disableNetrw" "plugins.nvim-tree.settings.disable_netrw"
)
$fixed | save -f home/programs/nixvim.nix

{ pkgs, config, ... }: 
{
  extraPackages = with pkgs; [
    # Utilities
    wl-clipboard
    glow
    lazygit

    # LSPs
    bash-language-server 
    cmake-language-server             
    marksman                          
    taplo                             
    yaml-language-server              
    lua-language-server               
    zls                               
    nixd                              
    gopls                             
    pyright                           
    typescript-language-server
    clang-tools                       
  ];

  extraPlugins = with pkgs.vimPlugins; [
    bufdelete-nvim
  ];

  plugins.treesitter.grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
    bash make markdown toml yaml
    lua zig nix go python typescript c cpp
  ];
}

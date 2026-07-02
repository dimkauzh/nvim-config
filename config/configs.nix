{
  clipboard = {
    register = "unnamedplus";

    providers = {
      wl-copy.enable = true;
      xclip.enable = true;
    };
  };

  globals = {
    mapleader = " ";
    gruvbox_material_background = "medium";
  };

  colorschemes.gruvbox-material = {
    enable = true;
  };

  opts = {
    termguicolors = true;
    background = "dark";

    smartindent = true;
    expandtab = true;

    tabstop = 2;
    shiftwidth = 2;
    softtabstop = 2;
  };
}

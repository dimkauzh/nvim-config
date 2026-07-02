# Nixvim configuration
Welcome! This is the repo to my neovim configuration, written with Nixvim!

## Installation
You will need to have [nix](https://nixos.org/) for this to function

### Non-NixOS
To install it, run:
```
nix profile install git+https://codeberg.org/dimkauzh/nvim
```

### NixOS
Add the repo to your inputs
```nix
{
    inputs = {
        nvim-config.url = "git+https://codeberg.org/dimkauzh/nvim.git";
    };
};
```
And then add the package using `inputs.nvim-config.packages.${system}.default`

## Testing
To test the configuration simply run the following command
```
nix run .
```

To run it anywhere, just run

```
nix run git+https://codeberg.org/dimkauzh/nvim
```

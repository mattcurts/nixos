#!/usr/bin/env nix-shell
#! nix-shell -i bash
#! nix-shell -p bash git

git clone https://github.com/mattcurts/nixos.git
cd nixos
ix --version
export NIX_CONFIG="experimental-features = nix-command flakes"
sudo nixos-rebuild switch --flake .#nixos
sudo nix-collect-garbage -d
sudo nixos-rebuild switch --flake .#nixos

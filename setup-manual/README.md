1. Download `tvm` and add symlinks:

    ```bash
    ln -s ~/Dropbox/tvm-records ~/.tvm-records
    ln -s ~/Dropbox/tvm-records/tvm-config.json ~/.tvm-config.json
    ```

    (optional) Windows 10 (WSL):

    ```bash
    ln -s /mnt/c/Users/david/Dropbox/tvm-records/tvm-config.json ~/.tvm-config.json
    ln -s /mnt/c/Users/david/Dropbox/tvm-records ~/.tvm-records
    ```

1. Symlink `vscode` config:

    ```bash
    ln -s ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
    ln -s ~/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
    ln -s ~/dotfiles/vscode/snippets/ ~/Library/Application\ Support/Code/User/snippets
    ```

1. Install vscode plugins & themes (see `./dotfiles/vscode/README.md`)

1. Change the iTerm2 profile theme:

    ```
    iTerm>Preferences>Profiles>Colors>Color Presets...
    .. Solarized Dark
    ```

1. Configure Max OSX UI elements:

    * Execute `./setup/osx`
    * Adjust dock
    * Adjust battery+date+time
    * Remap cmd+space to Alfred from Spotlight
    * Adjust alert volume (annoying "ding" sound)
    * Adjust key repeat and dely until repeat
    * Use F1, F2, etc. keys as standard function keys

1. Install Jetbrains IDEs:

    * Webstorm
    * PyCharm CE
    * IntelliJ IDEA CE

1. Install LaTeX:

    * LaTeX, [http://www.tug.org/mactex/](http://www.tug.org/mactex/)

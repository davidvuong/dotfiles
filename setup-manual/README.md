1. Download `tvm` and add symlinks:

    ```

    ln -s ~/Dropbox/tvm-records ~/.tvm-records
    ln -s ~/Dropbox/tvm-config.json ~/.tvm-config.json
    ```

1. Symlink the `~/workspace` directory inside Dropbox:

    ```
    ln -s ~/Dropbox/workspace ~/workspace
    ```
1. Symlink `vscode` config:

    ```
    ln -s ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
    ln -s ~/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
    ln -s ~/dotfiles/vscode/snippets/ ~/Library/Application\ Support/Code/User/snippets
    ```

1. Install vscode plugins & themes:

    ```
    eslint
    vim
    vscode-flow-ide
    one-dark-pro
    ```

1. Symlink the `atom` config:

    ```
    ln -s ~/dotfiles/atom ~/.atom
    ```

1. Install Atom 3rd party packages:

    ```
    bash ~/dotfiles/setup/apm.sh
    ```

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

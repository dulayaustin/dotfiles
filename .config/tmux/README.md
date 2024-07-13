Terminal Multiplexer or simply called **TMUX**.<br/><br/>
It allows you to manage multiple terminal sessions with a single terminal window, and you can easily switch between those multiple terminal sessions.

### Setup
- Create a configuration directory for tmux
  ```
  mkdir ~/.config/tmux
  ```
- Then you can now clone the repository to this folder
  ```
  git clone https://github.com/dulayaustin/tmux-setup.git ~/.config/tmux
  ```

### Install <a href="https://github.com/tmux/tmux/wiki">Tmux</a>
```
brew install tmux
```

### Prefix Leader
- Configured to `Ctrl` + `space` instead of the default `Ctrl` + `b` to make it more ergonomic

### <a href="https://github.com/tmux-plugins/tpm">Tmux TPM _(Tmux Plugin Manager)_</a>
- Cloning the repository:
  ```
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  ```
- Reload tmux environment
  - Manually on terminal
    ```
    tmux source ~/.config/tmux/tmux.conf
    ```
  - Or automatically when viewing on tmux window, use `prefix` + `R`
- **Key Bindings**
  - `prefix` + `I`
    - Installs new plugins from GitHub or any other git repository
    - Refreshes TMUX environment
  - `prefix` + `U`
    - Updates plugin(s)
  - `prefix` + `alt` + `u`
    - Remove/uninstall plugins not on the plugin list

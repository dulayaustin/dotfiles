This neovim setup uses Lua and Lazy package manager.<br/>
### Setup
- Create a configuration directory for neovim
  ```
  mkdir ~/.config/nvim
  ```
- Then you can now clone the repository to this folder
  ```
  git clone https://github.com/dulayaustin/nvim-setup.git ~/.config/nvim
  ```
  
### Install Neovim
```
brew install neovim
```

### Switch terminal to ITerm2 app
- Installation https://iterm2.com/downloads.html
- <a href="https://www.nerdfonts.com/">Nerd font</a> installation to have icons
  ```
  brew install font-hack-nerd-font
  ```
- Apply the font to _ITerm2 > Settings > Profiles > Text > Font_, select **Hack Nerd Font**
- Checked **Preserve window size when tab bar shows or hides** on _ITerm2 > Settings > Appearance > Tabs_
- Update default window size to fullscreen on _ITerm2 > Settings > Profiles > Window > Settings for New Windows > Columns/Rows_

### ZSH and its dependencies
- Check if you already using zsh by:
  ```
  echo $0
  ```
- If not, <a href="https://formulae.brew.sh/formula/zsh">ZSH</a> installation will be:
  ```
  brew install zsh
  ```
  - Change shell to zsh
    ```
    chsh -s $(which zsh)
    ```
- Install <a href="https://ohmyz.sh/">Oh My Zsh</a>. This will generate `~/.zshrc` file.
  ```
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```
- Install <a href="https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#oh-my-zsh" target="_blank">Powerlevel10k</a> by Oh My Zsh
  - Clone the repository
    ```
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    ```
  - Set them in `~/.zshrc`:
    ```
    ZSH_THEME="powerlevel10k/powerlevel10k"
    ```
  - Then run and choose your preference for terminal appearance.
    ```
    source ~/.zshrc
    ```
- Install <a href="https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh">Zsh Syntax Highlighting</a> by Oh My Zsh
  - Clone the repository
    ```
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    ```
  - Activate the plugin in `~/.zshrc`:
    ```
    plugins=( [plugins...] zsh-syntax-highlighting)
    ```
  - Restart your terminal
- Install <a href="https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh">Zsh Auto Suggestions</a> by Oh My Zsh
  - Clone the repository
    ```
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    ```
  - Activate the plugin in `~/.zshrc`:
    ```
    plugins=( [plugins...] zsh-autosuggestions)
    ```
  - Restart your terminal
- Install <a href="https://github.com/athityakumar/colorls">ColorLS</a> for better `ls` command output.
  ```
  sudo gem install colorls
  ```
  - Bind **colorls** to use **ls** in `~/.zshrc`:
    ```
    alias ls='colorls'
    ```
  

## Neovim Configuration

This repository contains configuration and customizations for **Neovim** based on **NvChad** / **LazyVim**.

This setup is tailored to Rust.

---

### Installation

This setup assumes you already have **Git** installed.

1.  **Install Prerequisites:**
    Install Neovim from snap not apt, rust-analyzer:
    ```bash
    # sudo apt remove neovim
    # sudo add-apt-repository --remove ppa:neovim-ppa/unstable
    sudo snap install nvim --classic
    rustup component add rust-analyzer
    ```

3.  **Clone the Repository:**
    Clone this repository into your Neovim configuration directory:
    ```bash
    git clone https://github.com/JoelBondurant/neovim ~/.config/nvim
    ```

4.  **Launch Neovim:**
    Open Neovim. Lazy.nvim will automatically download all necessary plugins.
    ```bash
    nvim
    ```

5.  **LazyVim Sync:**
    In Neovim, force a full cleanup and update cycle of LazyVim.
    ```bash
    :Lazy sync
    ```

6.  **Setup Alternatives:**
    Point vim to Neovim (nvim).
    ```bash
    echo "alias gvim='vim.gtk3'" >> ~/.bash_aliases  
    NEOVIM_PATH="/snap/nvim/current/usr/bin/nvim"
    sudo update-alternatives --install /usr/bin/vim vim "$NEOVIM_PATH" 100
    sudo update-alternatives --install /usr/bin/vi vi "$NEOVIM_PATH" 100
    sudo update-alternatives --install /usr/bin/editor editor "$NEOVIM_PATH" 100
    sudo update-alternatives --config vim
    ```

---

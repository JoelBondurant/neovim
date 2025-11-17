## Neovim Configuration

This repository contains configuration and customizations for **Neovim** based on **NvChad**, a highly modular and fast Neovim configuration framework.

This setup is tailored to a Rust specific workflow..

---

### Installation

This setup assumes you already have **Neovim (v0.9.0+)** and **Git** installed.

1.  **Backup Existing Configuration (Optional but Recommended):**
    If you have an existing Neovim configuration, back it up first.
    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    ```

2.  **Clone the Repository:**
    Clone this repository into your Neovim configuration directory:
    ```bash
    git clone https://github.com/JoelBondurant/neovim ~/.config/nvim
    ```

3.  **Launch Neovim:**
    Open Neovim. Lazy.nvim will automatically download all necessary plugins.
    ```bash
    nvim
    ```

4.  **Setup Alternatives:**
    Point vim to Neovim (nvim).
    ```bash
    echo "alias gvim='vim.gtk3'" >> ~/.bash_aliases  
    sudo update-alternatives --install /usr/bin/vim vim /usr/local/bin/nvim 60
    sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/nvim 60
    sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/nvim 60
    sudo update-alternatives --config vim
    ```
---


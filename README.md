## Neovim Configuration

This repository contains my personal configuration and customizations for **NvChad**, a highly modular and fast Neovim configuration framework.

This setup is tailored to my specific workflow, combining the power of NvChad's foundation with my preferred plugins, keymappings, and aesthetics.

### Features and Highlights

* **Plugin Management:** Uses NvChad's default setup, powered by **[Lazy.nvim](https://github.com/folke/lazy.nvim)**.
* **Aesthetics:** Custom colorscheme and font settings for a comfortable coding experience.
    * **Colorscheme:** [Insert Colorscheme Name Here]
    * **Font:** [Insert Font Name Here] (e.g., *Fira Code Nerd Font*)
* **Language Support:** Optimized for [List Primary Languages, e.g., TypeScript, Python, Rust] with pre-configured Language Server Protocol (LSP), linters, and formatters.
* **Custom Keymappings:** Streamlined and ergonomic mappings focused on **[e.g., efficient window management, text manipulation, or specific plugin commands]**.

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
    git clone [https://github.com/YOUR_GITHUB_USERNAME/YOUR_REPO_NAME.git](https://github.com/YOUR_GITHUB_USERNAME/YOUR_REPO_NAME.git) ~/.config/nvim
    ```
    *(**Note:** Replace `YOUR_GITHUB_USERNAME/YOUR_REPO_NAME` with the actual path.)*

3.  **Launch Neovim:**
    Open Neovim. Lazy.nvim will automatically download all necessary plugins.
    ```bash
    nvim
    ```
    If you encounter any issues, try running `:Lazy sync` after the first launch.

---

### Customizations Overview

My personal configuration lives primarily within the `custom/` directory, following the NvChad structure.

| File/Directory | Description |
| :--- | :--- |
| `custom/chadrc.lua` | Main configuration file for overriding NvChad's core settings (e.g., theme, mappings). |
| `custom/init.lua` | Loaded after `chadrc.lua`. Contains general setup or function definitions. |
| `custom/plugins/` | Contains all my custom plugin configurations. |
| `custom/plugins/init.lua` | Defines the list of **added** and **disabled** plugins. |
| `custom/plugins/SPECIFIC_PLUGIN.lua` | Configuration for a specific custom plugin (e.g., `telescope.lua`). |
| `custom/mappings.lua` | My personal keybinding overrides and additions. |

#### **1. Added Plugins**

These are the main plugins I've added to enhance my workflow:

* **[Plugin Name 1]** ([Link to GitHub Repo]) - [Brief description of its purpose]
* **[Plugin Name 2]** ([Link to GitHub Repo]) - [Brief description of its purpose]
* **[Plugin Name 3]** ([Link to GitHub Repo]) - [Brief description of its purpose]

#### **2. Custom Keybindings**

Key mappings are defined in `custom/mappings.lua`. Here are a few notable additions:

| Keybinding | Mode | Description |
| :--- | :--- | :--- |
| `<leader>ff` | Normal | Open **[Telescope]** for file finder. |
| `<leader>w` | Normal | Save current buffer. |
| `<C-h>`, `<C-j>`, `<C-k>`, `<C-l>` | Normal | Navigate between windows (split panes). |
| **[Add More Custom Mappings Here]** | | |


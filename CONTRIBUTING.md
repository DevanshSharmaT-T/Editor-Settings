# Contributing to Editor Settings

First off, thank you for considering contributing! ❤️

This repository exists to help developers discover, experiment with, and share different editor configurations, themes, workflows, and setups.

There is no such thing as the "perfect" editor setup. Everyone has different preferences, workflows, and questionable font choices—and that's exactly what makes this repository interesting.

Whether you're contributing a completely new configuration, improving an existing one, fixing documentation, or sharing a small workflow improvement, you're welcome here.

## 📦 What Can You Contribute?

You can contribute things like:

* 🖥️ Editor configurations
* 🎨 Themes and color setups
* ⌨️ Custom keybindings
* 🧩 Recommended extensions or plugins
* ⚙️ Workflow improvements
* 📝 Installation instructions
* 🖼️ Screenshots of editor setups
* 🛠️ Fixes and improvements to existing configurations

The goal is simple:

> Make it easy for developers to discover and try different editor experiences.

---

## 🚀 Adding a New Editor Configuration

Want to share your setup? Awesome.

### 1. Fork the repository

Click the **Fork** button at the top of this repository.

Then clone your fork:

```bash
git clone https://github.com/YOUR_USERNAME/Editor-Settings.git
```

Move into the project:

```bash
cd Editor-Settings
```

---

### 2. Create a new branch

Use a descriptive branch name:

```bash
git checkout -b add-my-editor-config
```

Examples:

```text
add-vscode-minimal-setup
add-neovim-catppuccin-config
add-zed-rust-workflow
update-vscode-keybindings
```

---

### 3. Add your configuration

Please keep your contribution organized and easy to understand.

A configuration should ideally include:

* The editor name
* A name for the setup
* Configuration files
* Required extensions/plugins
* Installation instructions
* Screenshots (optional but highly recommended)

For example:

```text
Editor/
└── VSCode/
    └── Minimal-Dark/
        ├── settings.json
        ├── keybindings.json
        ├── extensions.md
        ├── README.md
        └── preview.png
```

The exact structure may evolve as the repository grows, but please try to follow the existing organization.

---

## 📝 Document Your Setup

Every configuration should include a `README.md` explaining the setup.

Try to include:

### About

Briefly describe the configuration.

Example:

> A minimal VS Code setup focused on reducing visual clutter while keeping useful navigation and Git features easily accessible.

### Requirements

Mention anything users need before installing:

* Editor version
* Extensions
* Plugins
* Fonts
* External tools

### Installation

Explain clearly how users can install your configuration.

Avoid instructions like:

> Just put this in your config folder.

Instead, explain exactly where it goes.

### Preview

Screenshots or GIFs are highly encouraged.

People are here partly to explore different **looks and feels**, so showing your setup before they download it is incredibly helpful.

---

## 🧹 Keep It Clean

Please:

* Use meaningful file and folder names.
* Remove personal paths, usernames, API keys, tokens, and secrets.
* Avoid committing unnecessary files.
* Keep configuration files readable.
* Add comments where something isn't immediately obvious.
* Test your configuration before submitting it.

### ⚠️ Never commit secrets

Before opening a Pull Request, double-check that you haven't included:

```text
API keys
Tokens
Passwords
SSH keys
Personal paths containing sensitive information
Private URLs
```

If your configuration depends on personal information, replace it with a placeholder.

For example:

```json
{
  "some.path": "/home/YOUR_USERNAME/project"
}
```

instead of:

```json
{
  "some.path": "/home/john/projects/company-secret"
}
```

---

## 🎨 Screenshots

Screenshots are optional, but highly recommended.

A good screenshot helps contributors quickly understand:

* The theme
* Font
* Icons
* Layout
* Sidebar configuration
* Terminal appearance
* Overall vibe™

If possible, avoid screenshots containing sensitive information such as:

* Private repositories
* API keys
* Personal emails
* Company information
* Customer data

---

## 🔌 Extensions and Plugins

If your setup requires extensions or plugins, please list them clearly.

For example:

```markdown
## Required Extensions

- Prettier
- ESLint
- GitLens
- Material Icon Theme
- Catppuccin Theme
```

If an extension is optional, mention that too.

```markdown
## Optional Extensions

- GitHub Copilot
- Error Lens
- Todo Tree
```

---

## 🧪 Test Before Submitting

Before opening a Pull Request:

* [ ] Configuration files are valid.
* [ ] The setup works on a clean editor installation.
* [ ] Installation instructions are accurate.
* [ ] Required extensions/plugins are documented.
* [ ] No secrets or sensitive information are included.
* [ ] Screenshots don't contain sensitive information.
* [ ] Folder structure follows the repository conventions.

---

## 📬 Opening a Pull Request

Once you're ready:

```bash
git add .
git commit -m "Add <editor> <configuration-name> setup"
git push origin add-my-editor-config
```

Then open a Pull Request.

Please give your PR a clear title.

Good:

```text
Add minimal VS Code configuration
```

```text
Add Catppuccin Neovim setup
```

```text
Update Zed installation instructions
```

Less helpful:

```text
Update
```

```text
Changes
```

```text
My config
```

In the Pull Request description, briefly explain:

* What you added or changed
* Which editor it supports
* Any dependencies or requirements
* Screenshots, if applicable

---

## 💡 Suggestions and Ideas

Have an idea but don't want to write the configuration yourself?

Open a **Discussion**!

You can suggest:

* Editors you'd like to see
* Interesting workflows
* Configuration ideas
* Theme combinations
* Plugin recommendations
* Improvements to the repository structure

Someone else might be interested in building it.

---

## 🤝 Be Respectful

Different developers prefer different tools.

Some people use VS Code.

Some use Neovim.

Some use Zed.

Some use JetBrains.

Some have spent 14 hours configuring their terminal so they can run `ls` with slightly nicer colors.

All setups are welcome here.

Please be respectful when discussing preferences and remember:

> The best editor is the one that helps someone get their work done.

---

## ❤️ Thank You

Every contribution—big or small—helps make this repository more useful.

The goal is to build a collection where developers can explore different editor setups, experiment with new workflows, and maybe discover their next favorite development environment.

Thanks for contributing! 🚀
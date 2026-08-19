# Contribution Guide

Thanks for your interest in contributing to **Editor Settings**! This guide walks you through how to submit your own editor configs, and how to explore what's already here.

## Before You Start

You don't need permission to look around or try things out. Clone the repo and mess around with any of the existing setups — mine or anyone else's — to see what works for you.

```bash
git clone https://github.com/DevanshSharmaT-T/Editor-Settings.git
cd Editor-Settings
```

## Submitting Your Own Setup

If you'd like to share your own editor configuration, follow these steps:

### 1. Fork the repository

Click **Fork** at the top right of the [repo page](https://github.com/DevanshSharmaT-T/Editor-Settings) to create your own copy.

### 2. Create a branch named after yourself

This keeps contributions organized and easy to track. Name your branch using your username or name, for example:

```bash
git checkout -b yourname
```

Examples: `johndoe`, `jane-smith`, `devansh123`

### 3. Add your configuration

- If the editor already has a folder (`lazyvim`, `subllimetext`, `vscode`, `zed`), add your files inside a subfolder named after you, e.g. `vscode/yourname/`.
- If you're adding a new editor that isn't listed yet, create a new top-level folder for it, e.g. `neovim/yourname/`.
- Include only the relevant config files (settings, keybindings, themes, extension lists, etc.) — no unrelated personal files.
- A short `README.md` inside your folder explaining your setup is appreciated but optional.

### 4. Commit your changes

```bash
git add .
git commit -m "Add [your name]'s [editor] config"
```

### 5. Push and open a Pull Request

```bash
git push origin yourname
```

Then open a pull request from your branch to `master` on the main repository.

## Guidelines

- Keep your submission scoped to editor configs — no unrelated files.
- Feel free to reference or build on existing configs, but keep your own contributions in your own named branch/folder.
- Be respectful of other contributors' setups — you're welcome to experiment locally, but please don't overwrite other people's folders in your PR.

## Questions or Suggestions?

If anything is unclear, or you have suggestions for how this repo could be improved, reach out via:

👉 [https://github.com/DevanshSharmaT-T](https://github.com/DevanshSharmaT-T)

or any related links found on that profile.

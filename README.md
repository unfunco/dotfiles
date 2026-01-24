# Daniel does dotfiles

## Getting started

### Requirements

* [macOS] 11+

Clone the repository and change into the `dotfiles` directory.

```bash
git clone git@github.com:unfunco/dotfiles.git
cd dotfiles
```

Install [Homebrew] to for package management.

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo >> "$HOME/.zprofile"
echo 'eval "$(/opt/homebrew/bin/brew shellenv zsh)"' >> "$HOME/.zprofile"
eval "$(/opt/homebrew/bin/brew shellenv zsh)"
```

Install dependencies with Homebrew.

```bash
brew bundle install
```

Dotfiles are managed with [rcm]. The following commands will symbolically link
the files in the repository to your operating system home directory and will
prefix filenames with a period so that they're hidden. This allows dotfiles to
be edited in place and committed.

```bash
rcup -d default -v
rcup -d . -S ssh ssh
rcup -d . -S zsh zsh
ln -sf "$PWD/ghostty/config" "${XDG_CONFIG_HOME:-$HOME/.config}/ghostty/config"
```

## License

Copyright © 2016 [Daniel Morris](https://unfun.co)  
Made available under the terms of the [MIT License](LICENSE.md).

[homebrew]: https://brew.sh/
[macos]: https://www.apple.com/uk/macos/
[rcm]: https://github.com/thoughtbot/rcm

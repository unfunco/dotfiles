# Daniel does dotfiles

## Getting started

### Requirements

* [macOS] 11+

Clone the repository and change into the `dotfiles` directory.

```bash
git clone git@github.com:unfunco/dotfiles.git
cd dotfiles
```

Install [Homebrew].

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

Install dependencies with Homebrew.

```bash
brew bundle install
```

Dotfiles are managed with [rcm].

```bash
rcup -d home -v
```

## License

Copyright © 2016 [Daniel Morris](https://unfun.co)  
Made available under the terms of the [Apache License, Version 2.0](LICENSE.md).

[Homebrew]: https://brew.sh/
[macOS]: https://www.apple.com/uk/macos/
[rcm]: https://github.com/thoughtbot/rcm

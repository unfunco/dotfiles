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
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

Install dependencies with Homebrew.

```bash
brew bundle install
```

Dotfiles are managed with [rcm]. The following command will symbolically link
the files in the repository home directory to your operating system home
directory and will prefix filenames with a period so that they're hidden.
This allows dotfiles to be edited in place and committed.

```bash
rcup -d home -v
```

## License

Copyright © 2016 [Daniel Morris](https://unfun.co)  
Made available under the terms of the [Apache License, Version 2.0](LICENSE.md).

[Homebrew]: https://brew.sh/
[macOS]: https://www.apple.com/uk/macos/
[rcm]: https://github.com/thoughtbot/rcm

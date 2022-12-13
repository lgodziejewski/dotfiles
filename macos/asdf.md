# 1. install asdf
```sh
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
```

# 2. add asdf to shell configs

in `~/.zshrc`
```sh
. $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit
```

and `~/.bash_profile` (necessary for npm scripts to work properly)
```
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

```

[config docs](https://asdf-vm.com/guide/getting-started.html#_3-install-asdf)


# 3. plugins
```sh
asdf plugin add ruby
# asdf plugin add erlang
# asdf plugin add elixir
asdf plugin add nodejs
```

# pyenv-uninstall-global
Removes the pyenv version file (`$(pyenv root)/version`) when you try to uninstall the globally selected pyenv version.

## installation
Clone this repository to your `$(pyenv root)/plugins` directory and restart your shell:
```bash
git clone https://github.com/ramonvermeulen/pyenv-uninstall-global.git $(pyenv root)/plugins/pyenv-uninstall-global
exec $SHELL
```

Verify installation via the following command, the cloned plugin directory should be listed:
```bash
pyenv hooks uninstall
```


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

## example
Try to uninstall a python version which is globally defined in `$(pyenv root)/version`, e.g.:

```bash
pyenv install 3.12.4
pyenv global 3.12.4
pyenv uninstall 3.12.4
```

Output will look like:

```
pyenv: remove /home/ramon/.pyenv/versions/3.12.4? [y|N] y
pyenv: 3.12.4 uninstalled
pyenv-uninstall-global plugin: 3.12.4 was the pyenv global version
pyenv-uninstall-global plugin: removing the /home/ramon/.pyenv/version file
```

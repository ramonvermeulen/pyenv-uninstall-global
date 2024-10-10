#!/usr/bin/env bash

pyenv_uninstall_global () {
  if [[ $(pyenv-global) == "$VERSION_NAME" ]]; then
    echo "pyenv-uninstall-global plugin: $VERSION_NAME was the pyenv global version"
    echo "pyenv-uninstall-global plugin: removing the $(pyenv-root)/version file"
    rm $(pyenv-root)/version
  fi
}

after_uninstall "pyenv_uninstall_global"

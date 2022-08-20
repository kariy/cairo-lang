#! /bin/bash

echo -e "y\n" | vsce package --allow-missing-repository && code --install-extension *.vsix
#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "node binary exists" [ $(command -v node) ]
check "curl binary exists" [ $(command -v curl) ]
check "tini binary exists" [ $(command -v tini) ]
check "brew binary exists" [ $(command -v brew) ]
check "gh binary exists" [ $(command -v gh) ]
check "redis binary exists" [ $(command -v redis) ]
check "mkcert binary exists" [ $(command -v mkcert) ]
check "fzf binary exists" [ $(command -v fzf) ]
check "active user is node" [ $(whoami) = "node" ]
check "active shell is zsh" [ $(echo $0) = "zsh" ]

# Report result
reportResults

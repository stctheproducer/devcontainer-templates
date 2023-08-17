#!/bin/bash

if [ ! -f .gitattributes ]; then
  cat <<EOF | tee .gitattributes
* text=auto eol=lf
*.{cmd,[cC][mM][dD]} text eol=crlf
*.{bat,[bB][aA][tT]} text eol=crlf
EOF
fi

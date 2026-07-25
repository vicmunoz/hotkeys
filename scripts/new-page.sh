#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "Usage: scripts/new-page.sh <section> <page-name>"
  echo "Example: scripts/new-page.sh editors vscode"
  exit 1
fi

section="$1"
page="$2"
target="docs/${section}/${page}.md"

if [ ! -d "docs/${section}" ]; then
  echo "Unknown section: ${section}"
  exit 1
fi

if [ -e "${target}" ]; then
  echo "File already exists: ${target}"
  exit 1
fi

cp docs/page-templates/shortcut-page-template.md "${target}"
echo "Created ${target}"
echo "Now add it to mkdocs.yml nav."

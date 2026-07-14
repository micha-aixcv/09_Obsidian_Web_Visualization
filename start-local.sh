#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

if [[ -s "${NVM_DIR:-$HOME/.nvm}/nvm.sh" ]]; then
  export NVM_DIR="${NVM_DIR:-$HOME/.nvm}"
  # shellcheck source=/dev/null
  set +u
  source "$NVM_DIR/nvm.sh"
  nvm use 22 >/dev/null 2>&1 || true
  set -u
fi

cd "$PROJECT_DIR"

if ! command -v node >/dev/null 2>&1; then
  echo "Error: Node.js is not available. Quartz requires Node.js 22 or newer." >&2
  exit 1
fi

NODE_MAJOR="$(node -p 'process.versions.node.split(".")[0]')"
if (( NODE_MAJOR < 22 )); then
  echo "Error: Quartz requires Node.js 22 or newer; found $(node --version)." >&2
  exit 1
fi

if [[ ! -d node_modules ]]; then
  echo "Error: dependencies are missing. Run 'npm install' in $PROJECT_DIR first." >&2
  exit 1
fi

exec npm run quartz -- build --serve

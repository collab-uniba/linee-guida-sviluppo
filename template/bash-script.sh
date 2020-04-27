#!/usr/bin/env bash
# Bash3 Boilerplate. Copyright (c) 2014, kvz.io - https://kvz.io/bash-best-practices.html

# -Ee ensures script will stop on first command failure (alternatively, use: set -o errexit)
# -u ensures script will exit on first unset variable encountered (alternatively, use: set -o nounset)
# -o pipefail ensures that if any command in a set of piped commands failed, the overal status is that of the failed one
# -x forces bash to print each command before executing it, useful during debugging sessions (alternatively, use: set -o xtrace)
set -Eeuxo pipefail

# Set magic variables for current file & dir
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"
__base="$(basename ${__file} .sh)"
__root="$(cd "$(dirname "${__dir}")" && pwd)" # <-- change this as it depends on your app

arg1="${1:-}"

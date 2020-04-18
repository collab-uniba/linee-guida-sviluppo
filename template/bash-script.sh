#!/usr/bin/env bash

# -Ee ensures script will stop on first command failure
# -u ensures script will exit on first unset variable encountered
# -o pipefail ensures that if any command in a set of piped commands failed, the overal status is that of the failed one
# -x forces bash to print each command before executing it
set -Eeuxo pipefail


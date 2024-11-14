#!/usr/bin/env bash

set -euo pipefail

FORCE=''

if [[ "${force}" == 'true' ]]; then
  FORCE='--force'
fi

git push ${force} "${remote}" "${branch}"

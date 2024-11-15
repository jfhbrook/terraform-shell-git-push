#!/usr/bin/env bash

set -euo pipefail

FORCE_FLAG=''
if [[ "${force}" == 'true' ]]; then
  FORCE_FLAG='--force'
fi

git push ${force} "${remote}" "${branch}"

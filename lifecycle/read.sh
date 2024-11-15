#!/usr/bin/env bash

set -euo pipefail

RESPONSE="$(echo '{"sha":null}' | jq -cM \
  --arg path "${path}" \
  --arg remote "${remote}" \
  --arg branch "${branch}" \
  '.path = $path | .remote = $remote | .branch = $branch')"

git fetch "${remote}" 1>/dev/null

BRANCH="$(git rev-parse --abbrev-ref HEAD)"
SHA="$(git rev-parse HEAD)"

if [[ "${BRANCH}" != "${branch}" ]]; then
  echo "Current branch must be ${branch} to push" 1>&2
  exit 1
fi

echo "${RESPONSE}" | jq -cM \
  --arg sha "${SHA}" \
  '.sha = $sha'

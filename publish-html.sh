#!/usr/bin/env bash
# Publish files already placed under site/ to GitHub Pages.
set -euo pipefail

message="${1:-Publish HTML update}"

if [[ ! -d site ]]; then
  echo "Missing site/ directory." >&2
  exit 1
fi

git add site .github/workflows/deploy-pages.yml

if git diff --cached --quiet; then
  echo "No deployable changes in site/."
  exit 0
fi

git commit -m "$message"
git push origin main

echo "Pushed. GitHub Actions will publish the site."

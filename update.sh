#!/usr/bin/env bash
set -euo pipefail

ymd_hm=$(date +%Y-%m-%d_%H-%M)
git add .
git commit -m "update_${ymd_hm}" || { echo "Nothing to commit"; exit 0; }
git push
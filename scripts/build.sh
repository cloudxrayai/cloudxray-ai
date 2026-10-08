#!/bin/sh
# Packages the shared skill for each platform into dist/ (attach dist/ files to a GitHub release).
#   dist/finops-vendor-selection.zip   claude.ai "Upload a skill" (skill folder at the zip root)
#   dist/cursor/cloudxray-finops-vendor-selection.mdc   Cursor project rule generated from SKILL.md
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SKILL="finops-vendor-selection"
DIST="$ROOT/dist"
rm -rf "$DIST" && mkdir -p "$DIST/cursor"

(cd "$ROOT/skills" && zip -r -q "$DIST/$SKILL.zip" "$SKILL" -x '*.DS_Store')

# Cursor rule: SKILL.md body + references, with Cursor's rule frontmatter.
{
  echo "---"
  echo "description: Shortlist and compare FinOps and cloud cost management vendors with the CloudXray AI MCP server"
  echo "alwaysApply: false"
  echo "---"
  awk 'BEGIN{n=0} /^---$/{n++; next} n>=2' "$ROOT/skills/$SKILL/SKILL.md"
  for f in "$ROOT/skills/$SKILL"/references/*.md; do echo; echo; cat "$f"; done
} > "$DIST/cursor/cloudxray-$SKILL.mdc"

echo "Built:"; (cd "$DIST" && find . -type f | sort)

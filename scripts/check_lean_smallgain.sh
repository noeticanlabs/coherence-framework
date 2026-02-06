#!/usr/bin/env bash
set -euo pipefail

if ! command -v lake >/dev/null 2>&1; then
  echo "Lean toolchain (lake) not found; skipping Lean check." >&2
  exit 0
fi

if ! command -v lean >/dev/null 2>&1; then
  echo "Lean executable not found; skipping Lean check." >&2
  exit 0
fi

echo "Checking coherence_math_spine/lean/SmallGain.lean with lean..."
lean coherence_math_spine/lean/SmallGain.lean

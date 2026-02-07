---
title: "Notation"
description: "Standard notation for state spaces, residual maps, debt functionals, and gate sets"
last_updated: "2026-02-07"
authors: ["Coherence Framework Authors"]
tags: ["coherence", "notation", "mathematics", "notation-reference"]
---

# Notation

## Spaces and norms
- State space: \(X\) (metric space or normed vector space as needed).
- Metric: \(d_X(\cdot,\cdot)\).
- Norm: \(\|\cdot\|\) (context determines which; must be stated).

## Residual blocks
Residual map \(r: X \to \mathbb R^m\) partitioned into blocks:
\[
r(x) = (r_{\text{phys}}(x), r_{\text{cons}}(x), r_{\text{sem}}(x), r_{\text{tool}}(x), r_{\text{ops}}(x)).
\]

Each block may itself be vector-valued; write \(\|r_i(x)\|\) for its norm.

## Normalization scales
For each residual block choose a **scale** \(s_i>0\) with units matching \(r_i\), and define
\[
\tilde r_i(x) := r_i(x)/s_i.
\]
This makes thresholds portable.

## Debt functional
Weights \(w_i\ge 0\), penalties \(p_j(x)\ge 0\), penalty weights \(v_j\ge 0\):
\[
\mathfrak C(x) := \sum_i w_i\|\tilde r_i(x)\|^2 + \sum_j v_j p_j(x).
\]
\(\mathfrak C\) is the **coherence debt**.

## Gate sets
- Hard invariants: \(I_{\text{hard}}(x)\in\{\text{true},\text{false}\}\).
- Soft metrics: \(q_\ell(x)\in\mathbb R_{\ge 0}\) (typically selected residual norms).

Acceptance set (for a fixed policy):
\[
\mathcal A := \{x\in X : I_{\text{hard}}(x)=\text{true} \ \wedge\  q_\ell(x)\le \tau_\ell \ \forall \ell\}.
\]

## Rails (bounded repair maps)
A rail action is a (possibly state-dependent) map \(a: X\to X\) with a bound
\[
d_X(a(x),x)\le \delta_a \quad \text{for all admissible }x,
\]
and a legality condition “does not break hard invariants when invoked under its trigger”.

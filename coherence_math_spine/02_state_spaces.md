---
title: "State Spaces and Invariants"
description: "Metric, normed, and manifold formulations with hard invariant definitions"
last_updated: "2026-02-07"
authors: ["Coherence Framework Authors"]
tags: ["coherence", "state-spaces", "invariants", "manifolds", "metrics"]
---

# State Spaces and Invariants

This spine works with any of the following, provided you state which case you’re in.

## 1) Metric-state formulation (most general)
Assume \((X,d_X)\) is a metric space. This is enough to define:
- bounded rails (\(d_X(a(x),x)\le \delta\)),
- continuity assumptions,
- convergence statements.

## 2) Normed/Banach formulation (for analysis)
Assume \(X\) is a normed vector space (Banach if completeness needed).
Then:
- Lipschitz assumptions on residual maps are natural,
- contraction arguments become standard,
- Grönwall-type bounds apply for ODE/PDE discretizations.

## 3) Manifold formulation (geometric systems)
Assume \(X\) is a smooth manifold with a Riemannian metric \(g\) inducing distance \(d_g\).
Then:
- rails must be defined in charts or via exponential maps,
- invariants may be geometric (e.g., \(\det \gamma > 0\) for a metric tensor).

## Hard invariants
Hard invariants are predicates \(I_{\text{hard}}:X\to\{\text{true},\text{false}\}\).
They are “non-negotiable”: accepted states must satisfy them.

Common patterns:
- domain: positivity (\(\rho\ge 0\)), bounded parameters (\(\kappa\in[\kappa_{\min},\kappa_{\max}]\))
- regularity: NaN/Inf-free, bounded condition number (if declared)
- geometry: \(\det(\gamma)>0\), orientation constraints
- conservation within absolute tolerance (safety-critical applications)

## Soft invariants
Soft invariants are inequality constraints that admit repair:
\[
q_\ell(x) \le \tau_\ell.
\]
They often include:
- equation defects,
- constraint norms,
- balance drift,
- operational thrash metrics.

## Legality axiom for rails
A rail \(a\) is **hard-legal** if, whenever invoked under its trigger conditions,
it maps admissible states to admissible states:
\[
x \in \mathcal D,\ I_{\text{hard}}(x)=\text{true} \implies I_{\text{hard}}(a(x))=\text{true}.
\]
(If a rail can violate hard invariants, that is a design bug, not a theorem.)

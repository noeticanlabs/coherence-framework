# Coherence Packages Index

This repository contains three complementary Coherence packages. Use this guide to pick the right entry point and to understand how they connect.

## Packages

### 1) `Coherence_Spec_v1_0/` — Operational spec (governance-first)
- Purpose: end-to-end operational definition of coherence with gates, rails, receipts, and audit artifacts.
- Audience: implementers and operators who need a concrete, enforceable contract.
- Entry point: `Coherence_Spec_v1_0/README.md`.

### 2) `coherence_spine/` — Layered documentation spine (L0–L5)
- Purpose: a structured documentation spine that ties principle → measurement → control → runtime → validation.
- Audience: system designers and integrators who want a clear path from definitions to tests.
- Entry point: `coherence_spine/README.md`.

### 3) `coherence_math_spine/` — Mathematical kernel
- Purpose: formal definitions, theorems, and multiscale templates that justify the governance claims.
- Audience: researchers and proof-minded implementers who need formal scaffolding.
- Entry point: `coherence_math_spine/README.md`.

## How they fit together

- **Theory → Practice:** The math spine provides the formal statements and conditions; the documentation spine translates those conditions into implementable gates, rails, and receipts; the spec is the operational contract that systems can claim compliance against.
- **Receipts as bridges:** Receipts are the shared artifact that lets the operational system satisfy mathematical assumptions (bounded retries, hard-legal rails, contractive repair) with evidence.

## Recommended reading order
1) `Coherence_Spec_v1_0/README.md`
2) `coherence_spine/README.md`
3) `coherence_math_spine/README.md`

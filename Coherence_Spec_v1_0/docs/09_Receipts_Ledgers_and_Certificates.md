---
title: "Receipts, Ledgers, and Certificates"
description: "Specification for receipt structure, hash chaining, run certificates, and replay requirements"
last_updated: "2026-02-07"
authors: ["Coherence Framework Authors"]
tags: ["coherence", "receipts", "ledgers", "certificates", "audit"]
---

# 09 Receipts, Ledgers, and Certificates

## Receipt Required Fields
A receipt must log:
- State summary
- Residual vector and scalar debt
- Debt decomposition terms
- Gate status (hard/soft)
- Actions with before/after + bounds
- Decision (accept/retry/abort)
- Parent hash
- Receipt hash

## Hash Chaining Rule
Receipts must be chained:

\[
 h_n = H(\text{receipt}_n \,\|\, h_{n-1})
\]

## Certificate Definition
A **run certificate** summarizes a run:
- Pass/fail
- Maxima of \(\mathfrak C\) and residuals
- Final hash
- Config hash

## Replay Requirements
Receipts must contain enough data to recompute decisions and verify hashes under the same inputs/config/seed.

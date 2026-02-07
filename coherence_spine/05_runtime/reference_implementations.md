---
title: "Reference Implementations (L4)"
description: "Canonical gated step loop pseudocode for implementers"
last_updated: "2026-02-07"
authors: ["Coherence Framework Authors"]
tags: ["coherence", "implementation", "algorithm", "reference", "runtime"]
---

# Reference Implementations (L4)

This is implementation-grade pseudocode: fully specified, language-agnostic.

## Canonical gated step loop
Inputs: state x, model M, scheduler S, gate policy G, rails set 𝒜, receipt emitter E, retry cap N_retry.

Algorithm:
1) dt ← S.choose_dt(x)
2) for attempt = 0..N_retry:
     x_prop ← M.step(x,t,dt)
     metrics ← M.residual(x,x_prop,t,dt) + invariants + ops metrics
     verdicts ← G.evaluate(metrics)
     if verdicts.hard_failed:
        x ← rollback(x)
        E.emit(reject_receipt(hard_failed))
        return (x,"reject")
     if verdicts.soft_passed:
        E.emit(accept_receipt())
        return (x_prop,"accept")
     else:
        a ← select_rail(𝒜, metrics)  (deterministic priority)
        (x,dt) ← a.apply(x,metrics,dt)
        E.emit(retry_receipt(rail=a))
        continue
   end
   x ← rollback(x)
   E.emit(reject_receipt("retry_cap"))
   return (x,"reject")

## Deterministic rail priority
1) dt deflation (phys/CFL)
2) projection (constraints)
3) bounded damping/gain
4) rollback

## Failure classification tags
hard_invariant | soft_unrepairable | budget_exceeded | tool_violation

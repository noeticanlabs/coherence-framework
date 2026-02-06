# Validation Test Plan (L5)

Goal: not “unit tests”, but **tests of coherence claims** (gates + receipts + bounded drift).

## T1 — Receipt correctness
- schema validation
- deterministic hashing
- hash chain verification

Pass: 100% receipts validate; chain verifies.

## T2 — Gate behavior
- hard gate fail ⇒ rollback/abort
- soft gate fail ⇒ bounded rail then retry
- hysteresis prevents chatter-as-default

Pass: observed decisions match policy; retries bounded.

## T3 — Debt boundedness (Lemma 4)
Inject disturbance → observe repair → confirm accepted debt stays ≤ C_max.

Pass: max accepted debt ≤ C_max; repairs reduce targeted debt block.

## T4 — Projection legality (lexicon enforcement)
Inject illegal layer jump → ensure tool residual triggers and is receipted.

Pass: reject or explicit violation receipt.

## T5 — Minimal physics example
Stable ODE x'=-λx: residual decreases as dt shrinks; gates pass below threshold.

Pass: residual monotone in dt; acceptance stable.

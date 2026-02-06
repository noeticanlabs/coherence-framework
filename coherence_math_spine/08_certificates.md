# Certificates (What Counts as Proof in a Governed System)

In coherence engineering, a “certificate” is a compact artifact that can be checked mechanically.

## 1) Inequality certificates
### Sum-of-squares (SOS)
To certify a polynomial inequality \(p(x)\ge 0\) on a region, provide an SOS decomposition:
\[
p(x)=\sum_i s_i(x)^2 + \sum_k \lambda_k(x) g_k(x),
\]
where \(g_k(x)\ge 0\) describe the region. Verification reduces to algebra.

### Interval arithmetic bounds
To certify numerical claims (e.g., max residual ≤ \(\tau\)), provide interval bounds:
- exact input bounds,
- interval evaluation method,
- final interval width.

## 2) Discrete invariants certificates
For a discrete scheme, certify:
- invariants preserved to tolerance,
- monotone energy decay,
- contractive repair inequality parameters \((\gamma,b)\).

## 3) Small-gain certificates
Provide \(\alpha,\beta,e_A,e_B\) and verify \(\alpha\beta<1\).
Then the bound is checkable with a few arithmetic operations.

## 4) Trace (receipt) certificates
A receipt log is a *witness trace*:
- shows every step’s residuals,
- shows gate verdicts,
- shows bounded rails,
- forms a hash-chained evidence stream.

This is not “math by faith”; it is math plus a verifiable execution trace.

# Gated Dynamics as a Hybrid System

We model coherence enforcement as a **hybrid dynamical system**:
- a proposed evolution map (physics / reasoning step),
- gates that decide accept/reject,
- bounded rails that repair and retry.

## 1) Proposed step map
Let a proposal operator be:
\[
x^+ = \Phi_{\Delta t}(x; \eta)
\]
where \(\eta\) collects declared inputs (controls/noise/tool calls).

## 2) Gate policy
A gate policy is:
- hard predicates \(I_{\text{hard}}(x)\),
- soft metrics \(q_\ell(x)\) with thresholds and hysteresis.

Define the acceptance set:
\[
\mathcal A := \{x: I_{\text{hard}}(x)\ \wedge\ q_\ell(x)\le \tau_\ell \ \forall \ell\}.
\]

## 3) Rails
Rails are bounded maps \(a\in\mathcal R\) applied only under triggers.
A retry loop yields a sequence:
\[
x^{(0)}=x,\quad x^{(k+1)} = a_k(x^{(k)}),\quad x^{(k)}\notin \mathcal A,
\]
until either \(x^{(k)}\in \mathcal A\) (accept) or retry cap is hit (reject/rollback).

## 4) Contractive repair hypothesis (core)
A repair action sequence is **contractive in debt** if for some \(\gamma\in(0,1)\), \(b\ge 0\):
\[
\mathfrak C(x^{(k+1)}) \le \gamma\,\mathfrak C(x^{(k)}) + b.
\]
This is the exact condition needed for global boundedness theorems.

## 5) Receipt as mathematical object
Treat each attempt as producing a labeled transition:
\[
(x,\text{context}) \xrightarrow{\text{metrics, gates, rails}} (x',\text{context}')
\]
A receipt is the recorded label. In proof terms, the receipt log is a *certificate trace*.

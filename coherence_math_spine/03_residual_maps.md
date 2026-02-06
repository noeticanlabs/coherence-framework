# Residual Maps

## Definition (Residual map)
A residual map is a function \(r:X\to \mathbb R^m\) whose components quantify violations of contracts.

## Typical physics defect (discrete)
For an evolution law \(\dot x = F(x,t)\) and a one-step proposal \(x^+\),
the defect is:
\[
r_{\text{phys}}(x,x^+,t,\Delta t) := \frac{x^+-x}{\Delta t} - F(x,t).
\]
In practice one reduces this to a scalar metric such as RMS or max norm.

## Constraint residual
If constraints are \(c(x)=0\), set \(r_{\text{cons}}(x):=c(x)\).

## Balance drift residual
If an invariant is \(Q(x)\), define relative drift:
\[
r_Q := \frac{Q(x^+)-Q(x)}{\max(|Q(x)|,Q_{\text{floor}})}.
\]

## Semantic/tool residuals (symbolic systems)
- \(r_{\text{sem}}\): type errors, contradiction count, illegal layer projections.
- \(r_{\text{tool}}\): missing citations when required, staleness flags, unresolved conflicts.

## Operational residuals
- retries, rollbacks, saturation, oscillatory dt, etc.

## Regularity assumptions (what you need for theorems)
You can pick one of these regimes:

### R1 (Continuity regime)
Each monitored scalar metric \(q_\ell(x)\) is continuous on admissible states.

### R2 (Lipschitz regime)
There exist \(L_\ell\) such that:
\[
|q_\ell(x)-q_\ell(y)|\le L_\ell d_X(x,y).
\]
This supports robustness bounds (“small state changes can’t hide big gate violations”).

### R3 (Differentiable regime)
On a Banach space, \(q_\ell\) is Fréchet differentiable, enabling local linearization:
\[
q_\ell(x+\delta) \approx q_\ell(x) + Dq_\ell(x)[\delta].
\]

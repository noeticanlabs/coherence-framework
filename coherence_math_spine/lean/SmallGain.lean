import Mathlib.Data.Real.Basic
import Mathlib.Tactic

/-
Small-gain bound in ℝ (nonnegative scalars).
This is the algebraic kernel behind coupled-residual bounds.
-/

theorem small_gain_x_bound
    {a b x y eA eB : ℝ}
    (ha : 0 ≤ a) (hb : 0 ≤ b) (hab : a*b < 1)
    (hx : x ≤ a*y + eA) (hy : y ≤ b*x + eB) :
    x ≤ (a*eB + eA) / (1 - a*b) := by
  have hpos : 0 < (1 - a*b) := by linarith
  have hx' : x ≤ a*(b*x + eB) + eA := by
    -- substitute y ≤ b*x + eB into hx
    have : a*y ≤ a*(b*x + eB) := by
      exact mul_le_mul_of_nonneg_left hy ha
    linarith
  have hmul : x * (1 - a*b) ≤ a*eB + eA := by
    -- rearrange: x ≤ a*b*x + a*eB + eA
    -- -> x - a*b*x ≤ a*eB + eA
    -- -> x*(1 - a*b) ≤ a*eB + eA
    nlinarith
  -- divide both sides by positive (1 - a*b)
  exact (le_div_iff hpos).2 hmul

theorem small_gain_y_bound
    {a b x y eA eB : ℝ}
    (ha : 0 ≤ a) (hb : 0 ≤ b) (hab : a*b < 1)
    (hx : x ≤ a*y + eA) (hy : y ≤ b*x + eB) :
    y ≤ (b*eA + eB) / (1 - a*b) := by
  have hpos : 0 < (1 - a*b) := by linarith
  have hy' : y ≤ b*(a*y + eA) + eB := by
    have : b*x ≤ b*(a*y + eA) := by
      exact mul_le_mul_of_nonneg_left hx hb
    linarith
  have hmul : y * (1 - a*b) ≤ b*eA + eB := by
    nlinarith
  exact (le_div_iff hpos).2 hmul

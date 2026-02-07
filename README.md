# Coherence Framework

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Python Version](https://img.shields.io/badge/python-3.10+-blue.svg)](pyproject.toml)
[![CI Status](https://img.shields.io/badge/CI-In%20Progress-orange)](.github/workflows/ci.yml)
[![Lean Proofs](https://img.shields.io/badge/Lean-Proofs-green)](coherence_math_spine/lean/SmallGain.lean)

A Unifying Principle of Coherence-Governed Evolution
Proof-Carrying Governance Across Physics, Computation, Language, and Cognition

---

## Quick Links

- 📘 **[coherence_spine](/coherence_spine/)** - Core framework documentation and validation tests
- 🔢 **[coherence_math_spine](/coherence_math_spine/)** - Mathematical formalization and Lean proofs
- 📋 **[Coherence_Spec_v1_0](/Coherence_Spec_v1_0/)** - JSON schemas and specification documents
- 🧪 **[Tests](/coherence_spine/06_validation/)** - Python validation tests
- 📜 **[API Reference](/COHERENCE_INDEX.md)** - Generated documentation index

---

## Getting Started

### Prerequisites

- Python 3.10 or higher
- Lean 4 (for mathematical proofs)
- pre-commit hooks (optional, for development)

### Installation

```bash
# Clone the repository
git clone https://github.com/coherence-framework/coherence-framework.git
cd coherence-framework

# Install development dependencies
pip install -r requirements-dev.txt

# Install pre-commit hooks (optional)
pre-commit install
```

### Running Tests

```bash
# Run Python validation tests
pytest coherence_spine/06_validation/

# Validate JSON schemas
python -c "import json; json.load(open('Coherence_Spec_v1_0/schemas/coherence_receipt.schema.json'))"

# Check Lean proofs
cd coherence_math_spine/lean && lake build
```

---

## Project Structure

```
coherence-framework/
├── .github/workflows/
│   ├── ci.yml              # Main CI pipeline (Python tests, JSON/YAML validation)
│   └── lean.yml            # Lean proof verification pipeline
├── coherence_spine/               # Core framework documentation
│   ├── 01_principle/              # Axioms and definitions
│   ├── 02_math/                   # Coherence functionals and theorems
│   ├── 03_measurement/            # Residuals, metrics, telemetry
│   ├── 04_control/                # Gates, rails, scheduler
│   ├── 05_runtime/                # Interfaces, schemas, implementations
│   ├── 06_validation/             # Python tests
│   │   ├── minimal_tests.py
│   │   ├── test_coherence_*.py
│   │   └── test_plan.md
│   ├── 07_glossary/               # Terminology
│   └── 08_appendix/               # References
├── coherence_math_spine/          # Mathematical formalization
│   ├── lean/                      # Lean 4 proof files
│   │   └── SmallGain.lean
│   ├── 00_manifest.yaml
│   └── README.md
├── Coherence_Spec_v1_0/           # JSON schemas and specification
│   ├── docs/                      # Formal documentation
│   ├── examples/                  # JSON examples
│   ├── manifest/                  # Manifest documentation
│   ├── schemas/                   # JSON Schema files
│   └── README.md
├── scripts/                       # Utility scripts
│   └── check_lean_smallgain.sh
├── COHERENCE_INDEX.md             # Documentation index
├── README.md                      # This file
├── pyproject.toml                 # Python project configuration
└── requirements-dev.txt           # Development dependencies
```

---

## Related Spines

The Coherence Framework is organized into three complementary spines:

### 1. coherence_spine

The **core documentation spine** containing the conceptual framework, governance principles, and validation tests. This spine provides the narrative and conceptual foundation for coherence-governed evolution.

**Key components:**
- Principle and axioms (`01_principle/`)
- Mathematical foundations (`02_math/`)
- Measurement and telemetry (`03_measurement/`)
- Control mechanisms (`04_control/`)
- Runtime interfaces (`05_runtime/`)

### 2. coherence_math_spine

The **mathematical formalization spine** containing rigorous definitions, theorems, and Lean 4 proofs. This spine provides the formal, machine-verifiable foundation for the framework.

**Key components:**
- State spaces and notation
- Residual maps and debt functionals
- Gated dynamics
- Stability theorems
- SmallGain proof (Lean 4)

### 3. Coherence_Spec_v1_0

The **specification spine** containing JSON schemas, examples, and reference documentation. This spine provides the machine-readable specifications for implementing the framework.

**Key components:**
- JSON schemas (receipts, gate policies, certificates)
- Example JSON documents
- Formal definitions and axioms
- Algorithm specifications

**Relationship:** The three spines form a consistent, multi-layered representation where `Coherence_Spec_v1_0` provides the implementation interface, `coherence_math_spine` provides the formal verification, and `coherence_spine` provides the conceptual guidance.

---

## Citation

If you use the Coherence Framework in your research, please cite it as follows:

```bibtex
@misc{coherence-framework,
  author = {Coherence Framework Maintainers},
  title = {A Unifying Principle of Coherence-Governed Evolution},
  url = {https://github.com/coherence-framework/coherence-framework},
  year = {2024},
  note = {Proof-Carrying Governance Across Physics, Computation, Language, and Cognition}
}
```

---

0. Executive Summary

This document presents a unifying principle for systems that evolve through time while maintaining internal structure. The principle is coherence-governed evolution: stability is not accidental, but enforced through explicit coherence budgets, gates, and auditable constraints. The framework applies uniformly across physical systems, numerical simulation, computation, language, and cognition.

1. The Principle (Core Statement)

Principle of Coherence-Governed Evolution

Any system that evolves through time while maintaining internal structure must obey coherence budgets.
When those budgets are violated, the system destabilizes, fragments, or collapses into noise.

This principle is domain-agnostic. It assumes only:
a state,
an evolution rule,
constraints,
and limited resources.

It makes no reference to specific physical entities, representations, or substrates.

2. Minimal Structural Assumptions

Every coherence-governed system instantiates the following abstract components.

2.1 State Space

A representation of the system at a given instant.
Physical fields
Discrete solver variables
Symbolic or semantic context
Cognitive working memory

2.2 Evolution Operator

A rule advancing the state through time.
Differential equations
Discrete steppers
Token generation
Cognitive update dynamics

2.3 Constraints

Conditions defining structural validity.
Conservation laws
Algebraic constraints
Grammar and semantics
Logical or conceptual consistency

2.4 Limited Resources

Finite capacity required to sustain structure.
Energy
Time / resolution
Attention / memory
Computational budget

3. Coherence Budgets

3.1 Definition

A coherence budget quantifies how much structural deviation a system can absorb before stability is lost.
Budgets may track:

constraint violation
residual growth
entropy production
semantic drift
uncertainty accumulation

3.2 Budget Dynamics

Budgets evolve with time:
dissipation reduces debt,
forcing and noise increase it,
governance mechanisms regulate the balance.

4. Gates and Governance

4.1 Gates

A gate is a control function that modulates evolution based on coherence state.
timestep control
dissipation scaling
acceptance / rejection of updates
continuation / refusal in language

4.2 Governance Layer

A governance layer:
enforces budgets,
applies bounded corrective actions,
prevents silent failure,
and records decisions.
This layer is orthogonal to the underlying domain model.

5. Receipts and Auditability

5.1 Receipts

A receipt is a logged, inspectable record of:
state,
budget,
gate value,
corrective action,
and outcome.

5.2 Proof-Carrying Execution

A run is valid not because it “looks right,” but because:
local step conditions are satisfied,
global inequalities are certified,
and receipts support post-hoc verification.

6. Global Inequalities (What Can Be Proven)

From local step conditions, one derives global guarantees, such as:
bounded energy growth,
certified dissipation,
minimum effective time advancement,
prevention of runaway instability.
These results are expressed as inequalities, not heuristics.

7. Domain Instantiations

7.1 Physics and Simulation

PDE solvers
Numerical relativity
Navier–Stokes
Yang–Mills
Coherence budgets govern stability, constraint propagation, and timestep control.

7.2 Computation

Programs as evolving state machines
Resource-bounded execution
Verified invariants
Failure-aware runtime systems

7.3 Language

Semantic coherence
Syntactic constraints
Context budgets
Gated generation and refusal

7.4 Cognition

Attention as resource
Coherence debt as confusion
Dissipation as learning or resolution
Time dilation as subjective focus

8. Formalization Strategy

8.1 What Is Formalized

budgets
gates
inequalities
monotonicity
invariants
acceptance logic

8.2 What Is Not Assumed

no specific physics
no analytic miracles
no metaphysical claims
Formalization focuses on contracts, not ontology.

9. Proof-Carrying Governance Layer

The coherence framework is implemented as a proof-carrying governance layer:
independent of the model,
enforceable at runtime,
certifiable with theorem provers,
compatible with empirical simulation.
This layer explains why stable systems remain stable.

10. Relation to Existing Frameworks

Thermodynamics → energy budgets
Control theory → feedback and stability
Type theory → correctness by construction
Formal methods → proof-carrying execution
Coherence-governed evolution unifies these at the system-level.

11. What This Is Not

Not a replacement for existing physical theories
Not a single equation of everything
Not a metaphysical claim
It is a governing principle, not a competing model.

12. Outlook
This principle enables:
trustworthy simulation, failure-aware AI, coherence-gated reasoning, cross-domain safety guarantees. Its power lies in its restraint.

13. One-Sentence Summary

Stable evolution is not guaranteed by equations alone, but by coherence budgets that are actively governed, gated, and auditable across time.

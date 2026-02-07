# Contributing to Coherence Framework

Thank you for your interest in contributing to the Coherence Framework! This document provides guidelines and instructions for contributing to this project.

## Table of Contents

- [Getting Started](#getting-started)
- [Reporting Issues](#reporting-issues)
- [Submitting Pull Requests](#submitting-pull-requests)
- [Coding Standards](#coding-standards)
- [Testing Requirements](#testing-requirements)
- [Documentation Standards](#documentation-standards)
- [Review Process](#review-process)

## Getting Started

To contribute to the Coherence Framework:

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/YOUR-USERNAME/coherence-framework.git
   cd coherence-framework
   ```
3. **Set up the development environment**:
   ```bash
   pip install -r requirements-dev.txt
   pre-commit install
   ```
4. **Create a branch** for your changes (see [Branching Conventions](#branching-conventions))
5. **Make your changes** following the coding standards
6. **Run tests** to ensure everything works
7. **Submit a pull request**

## Reporting Issues

### Bug Reports

When reporting bugs, please include:

- **Clear title** describing the issue
- **Detailed description** of the problem
- **Steps to reproduce** the bug
- **Expected behavior** vs actual behavior
- **Screenshots or error messages** if applicable
- **Environment information** (OS, Python version, etc.)
- **Minimal reproduction example** if possible

Use the issue template with the "Bug report" label.

### Feature Requests

For feature requests, please include:

- **Clear title** describing the proposed feature
- **Problem description** - why this feature is needed
- **Proposed solution** - how you envision it working
- **Use cases** - specific scenarios where this would help
- **Alternatives considered** - other approaches you've thought of

Use the issue template with the "Feature request" label.

### Questions

For questions about the framework:

- Check existing [documentation](README.md) and [specifications](Coherence_Spec_v1_0/)
- Search existing issues to see if your question has been answered
- If not, open an issue with the "Question" label

## Submitting Pull Requests

### Forking

1. Click the "Fork" button on the GitHub repository page
2. Clone your fork locally
3. Add the original repository as an upstream remote:
   ```bash
   git remote add upstream https://github.com/ORIGINAL-OWNER/coherence-framework.git
   ```

### Branching Conventions

- **Main branches**:
  - `main` - stable, production-ready code
  - `develop` - integration branch for next release

- **Feature branches** should be created from `develop`:
  ```
  feature/short-description-of-change
  bugfix/issue-number-short-description
  docs/documentation-update
  ```

- **Branch naming**:
  - Use lowercase letters and hyphens
  - Keep names concise (max 50 characters)
  - Include issue number if applicable: `bugfix/123-fix-typo`

### Commit Message Format

Follow the [Conventional Commits](https://www.conventionalcommits.org/) specification:

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

**Types**:
- `feat`: A new feature
- `fix`: A bug fix
- `docs`: Documentation only changes
- `style`: Changes that do not affect the meaning of the code (formatting, etc.)
- `refactor`: Code change that neither fixes a bug nor adds a feature
- `perf`: Performance improvement
- `test`: Adding or modifying tests
- `chore`: Maintenance tasks

**Examples**:
```
feat(gates): add new rail transition validation

Implement validation for rail state transitions to ensure
coherence constraints are maintained during gate operations.

Fixes #123
```

```
docs: update contribution guidelines for Lean formalization

Added section on Lean proof conventions and verification
requirements.
```

### Pull Request Process

1. **Keep PRs focused** - one logical change per PR
2. **Update documentation** for any user-facing changes
3. **Add tests** for new functionality
4. **Ensure CI passes** all checks
5. **Fill out the PR template** completely
6. **Request review** from maintainers

## Coding Standards

### Python Style

Follow [PEP 8](https://pep8.org/) with these additions:

- Use type hints for all function signatures
- Use `black` for formatting (configured in `pyproject.toml`)
- Use `isort` for import sorting
- Use `flake8` for linting

**Formatting**:
```bash
# Format code
black src/ tests/

# Sort imports
isort src/ tests/

# Lint
flake8 src/ tests/
```

**Type Hints Example**:
```python
from typing import List, Optional

def compute_coherence(
    states: List[float],
    threshold: Optional[float] = None
) -> float:
    """Compute coherence metric for given states."""
    if threshold is None:
        threshold = DEFAULT_THRESHOLD
    return sum(states) / len(states)
```

### Markdown Formatting

- Use [Markdownlint](https://github.com/DavidAnson/markdownlint) rules
- Line length: 80-100 characters
- Use ATX-style headings (`##` not `##`)
- Include code blocks with language identifiers
- Add blank lines between sections

### Lean Formalization Guidelines

When contributing Lean formalizations:

1. **Structure**: Follow the existing structure in `coherence_math_spine/lean/`
2. **Naming**: Use camelCase for variables, PascalCase for theorems
3. **Documentation**: Add docstrings to all theorems and definitions
4. **Proofs**: Include comments explaining proof strategy
5. **Testing**: Verify with `lean` and `leanproject` tools

**Example**:
```lean
/--
  Small-gain theorem for compositional stability.
  If each subsystem satisfies the small-gain condition,
  then the composed system is stable.
-/
theorem small_gain_stability
  {α β : Type*}
  [measurable_space α] [measurable_space β]
  (Φ Ψ : α → ℝ)
  (hΦ : small_gain_condition Φ Ψ)
  (hΨ : small_gain_condition Ψ Φ) :
  is_stable (Φ ⊗ Ψ) :=
begin
  -- Proof strategy: construct Lyapunov function
  -- and show dissipation inequality
  sorry
end
```

### Configuration Files

- `pyproject.toml` - Python project configuration
- `.pre-commit-config.yaml` - Pre-commit hooks
- `.gitignore` - Git ignore rules (do not modify)

## Testing Requirements

### Running Existing Tests

```bash
# Run all tests
pytest

# Run specific test file
pytest coherence_spine/06_validation/

# Run with coverage
pytest --cov=src --cov-report=html

# Run Lean tests
./scripts/check_lean_smallgain.sh
```

### Adding New Tests

**Python tests**:
- Place in `coherence_spine/06_validation/`
- Use `pytest` framework
- Follow naming convention: `test_*.py`
- Include docstrings for test functions

**Lean tests**:
- Add to appropriate `.lean` file or create new test file
- Use `verify` and `example` statements
- Test edge cases and boundary conditions

**Test coverage**:
- Aim for 80%+ coverage on new code
- Include both positive and negative test cases
- Test error handling paths

### Validation Suite

Before submitting, run the full validation suite:

```bash
# Format and lint
black .
isort .
flake8 .

# Run tests
pytest

# Check pre-commit hooks
pre-commit run --all-files
```

## Documentation Standards

### Updating Documentation

Documentation is located in:
- `README.md` - Main project documentation
- `Coherence_Spec_v1_0/docs/` - Formal specification documents
- `coherence_spine/` - Implementation documentation
- `coherence_math_spine/` - Mathematical spine documentation

### Style Guidelines

- Use clear, concise language
- Include examples where helpful
- Cross-reference related sections
- Keep technical terms consistent
- Use active voice

### Document Structure

For new documentation files:
1. Start with a clear title
2. Provide a brief overview
3. Include table of contents for longer documents
4. Use hierarchical headings
5. End with references to related documents

### Mathematical Notation

Follow the notation defined in:
- `coherence_math_spine/01_notation.md`
- `Coherence_Spec_v1_0/docs/02_Formal_Definitions.md`

## Review Process

### Code Review Criteria

PRs are reviewed based on:
- **Correctness**: Code works as intended
- **Style**: Follows coding standards
- **Tests**: Adequate test coverage
- **Documentation**: Updated docs for user-facing changes
- **Coherence**: Aligns with framework principles

### Merge Criteria

A PR can be merged when:
- [ ] All CI checks pass
- [ ] At least one maintainer approves
- [ ] No unresolved comments
- [ ] Tests added/modified as needed
- [ ] Documentation updated
- [ ] Rebased on latest `develop`

### Response Time

- Initial review: Within 5 business days
- Follow-up reviews: Within 3 business days
- Complex changes may take longer

## Questions?

If you have questions, feel free to:
- Open an issue with the "Question" label
- Check existing [documentation](README.md)
- Review [closed issues](https://github.com/coherence-framework/coherence-framework/issues?q=is%3Aissue+is%3Aclosed)

---

Thank you for contributing to the Coherence Framework!

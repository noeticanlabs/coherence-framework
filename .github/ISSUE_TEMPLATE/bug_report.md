---
name: 🐛 Bug Report
description: Report a bug or unexpected behavior in the Coherence Framework
labels: bug
body:

- type: markdown
  attributes:
    value: |
      ## Bug Description
      Please describe the bug clearly and concisely.

- type: textarea
  attributes:
    label: What happened?
    description: A clear description of what you expected to happen vs what actually happened.
    placeholder: "I expected X, but Y happened instead."
  validations:
    required: true

- type: textarea
  attributes:
    label: To Reproduce
    description: |
      Steps to reproduce the bug:
      1. First step
      2. Second step
      3. ...
      
      Expected result:
      What you expected to happen.
      
      Actual result:
      What actually happened.
    placeholder: |
      1. First step...
      2. Second step...
      
      Expected: ...
      Actual: ...
  validations:
    required: true

- type: input
  attributes:
    label: OS
    description: Operating system (e.g., Linux, macOS, Windows)
    placeholder: "Linux, macOS, Windows"

- type: input
  attributes:
    label: Python Version
    description: Python version (e.g., 3.9, 3.10, 3.11)
    placeholder: "3.10"

- type: input
  attributes:
    label: Coherence Framework Version
    description: Version of the Coherence Framework (if known)
    placeholder: "e.g., v1.0.0 or main branch"

- type: textarea
  attributes:
    label: Screenshots/Logs
    description: |
      If applicable, add screenshots or logs to help explain the problem.
      For logs, please use code blocks with appropriate syntax highlighting.
    placeholder: |

- type: textarea
  attributes:
    label: Additional Context
    description: |
      Add any other context about the problem here.
      This might include:
      - Configuration files (remove sensitive data)
      - Related issues or discussions
      - Workarounds you've discovered
    placeholder: |

- type: checkboxes
  attributes:
    label: Code of Conduct
    options:
    - label: I have searched for existing issues and this bug hasn't been reported yet
    - label: I agree to follow the project's Code of Conduct

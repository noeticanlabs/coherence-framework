---
name: ❓ Question
description: Ask a question about the Coherence Framework
labels: question
body:

- type: markdown
  attributes:
    value: |
      ## Question Summary
      A brief summary of your question.

- type: textarea
  attributes:
    label: Question Summary
    description: What is your question in one sentence?
    placeholder: "How do I..."
  validations:
    required: true

- type: textarea
  attributes:
    label: Background/Context
    description: |
      Provide context for your question. What are you trying to accomplish?
      What part of the Coherence Framework are you working with?
    placeholder: |
      I'm working on... and trying to understand...

- type: textarea
  attributes:
    label: What You've Already Tried
    description: |
      Describe what you've already done to find the answer.
      This helps avoid repeating steps others have already taken.
    placeholder: |
      I've checked:
      - The documentation at [link]
      - The README
      - Existing issues
      - Code examples

- type: textarea
  attributes:
    label: Additional Context
    description: |
      Add any additional information that might help answer your question.
      This could include:
      - Code snippets (use code blocks)
      - Error messages
      - Links to related resources
    placeholder: |

- type: checkboxes
  attributes:
    label: Code of Conduct
    options:
    - label: I have searched the documentation and existing issues first
    - label: I agree to follow the project's Code of Conduct

---
name: 💡 Feature Request
description: Suggest a new feature or enhancement for the Coherence Framework
labels: enhancement
body:

- type: markdown
  attributes:
    value: |
      ## Feature Description
      A clear and concise description of the feature you'd like to see.

- type: textarea
  attributes:
    label: Feature Description
    description: What the feature should do or provide.
    placeholder: "As a [user], I want [goal] so that [benefit]."
  validations:
    required: true

- type: textarea
  attributes:
    label: Problem Solved
    description: |
      Describe the problem this feature would solve.
      Why is this feature needed? What pain point does it address?
    placeholder: |
      Currently, it's difficult to...

- type: textarea
  attributes:
    label: Proposed Solution
    description: |
      Describe your proposed solution. Include:
      - How the feature should work
      - Any API changes or new interfaces
      - Examples of how it would be used
    placeholder: |

- type: textarea
  attributes:
    label: Alternatives Considered
    description: |
      Describe any alternative solutions you've considered and why they weren't chosen.
    placeholder: |

- type: textarea
  attributes:
    label: Additional Context
    description: |
      Add any other context, screenshots, or references that might help.
    placeholder: |

- type: checkboxes
  attributes:
    label: Code of Conduct
    options:
    - label: I have searched for existing feature requests and this isn't a duplicate
    - label: I agree to follow the project's Code of Conduct

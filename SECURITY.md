# Security Policy

## Supported Versions

The Coherence Framework project currently supports the following versions:

| Version | Supported |
|---------|-----------|
| Latest release (main branch) | ✅ Yes |
| Previous release | ✅ Security fixes only |
| Older versions | ❌ No |

Security updates are provided for the current major version and the previous
major version for a period of 12 months after each major release.

## Supported Components

Security support applies to:

- **Python code**: Core implementation in `coherence_spine/` and `coherence_math_spine/`
- **Lean formalizations**: Proofs in `coherence_math_spine/lean/`
- **Schemas**: JSON schemas in `Coherence_Spec_v1_0/schemas/`
- **Documentation**: Specification documents in `Coherence_Spec_v1_0/docs/`

Note: Example files, scripts, and development tools may not receive security
updates. Use these components at your own risk in production environments.

## How to Report Vulnerabilities

We take the security of the Coherence Framework seriously. If you believe you
have found a security vulnerability, please report it responsibly.

### Reporting Channels

**Preferred**: Email security reports to:
```
security@coherence-framework.org
```

**Alternative**: For GitHub-based reports, you may use:
- Private vulnerability reporting (if enabled)
- Create an issue with the "Security" label (use only for non-sensitive issues)

### What to Include

When reporting a vulnerability, please include:

1. **Description**: A clear description of the vulnerability
2. **Impact**: How the vulnerability could be exploited
3. **Affected Component**: Which part of the codebase is affected
4. **Steps to Reproduce**: How to demonstrate the vulnerability
5. **Suggested Fix**: If you have ideas for fixes (optional)
6. **Contact Information**: How to reach you for clarification

### Response Time

We commit to responding to security reports within **72 hours** of receipt.
You will receive:

- An acknowledgment of your report
- Initial assessment of the vulnerability
- Expected timeline for remediation (if confirmed)

## Disclosure Process

When a security vulnerability is confirmed:

1. **Initial Response** (0-72 hours): Acknowledge report and begin assessment
2. **Investigation** (1-2 weeks): Confirm vulnerability, assess impact, develop fix
3. **Fix Development**: Create patch and test fix
4. **Coordinated Release**: Notify you of the fix before public disclosure
5. **Public Disclosure**: Publish security advisory with patch information

### Coordination

We follow responsible disclosure practices:

- We will coordinate with you on disclosure timing
- We will provide credit (unless you request anonymity)
- We will work to minimize disruption while ensuring security

### Security Advisories

Confirmed vulnerabilities will be documented in:
- GitHub Security Advisories
- Project CHANGELOG.md (security section)
- Release notes for patched versions

## Security Best Practices for Users

### General Recommendations

1. **Stay Updated**: Use the latest released version
2. **Validate Inputs**: Sanitize all inputs when using the framework
3. **Limit Privileges**: Run with minimum necessary permissions
4. **Monitor**: Implement logging and monitoring for anomalies

### Deployment Considerations

- Review permissions before deploying
- Use environment isolation (development vs production)
- Keep dependencies updated
- Follow the principle of least privilege

### Reporting Known Issues

For current known security-related issues, please check:
- [GitHub Security Advisories](https://github.com/coherence-framework/coherence-framework/security/advisories)
- [CHANGELOG.md](coherence_spine/CHANGELOG.md)

## Thank You

We appreciate your responsible disclosure of security vulnerabilities. Your
efforts help ensure the security and reliability of the Coherence Framework
for all users.

We recognize that security researchers and contributors who report
vulnerabilities responsibly play a vital role in keeping our community safe.

## Contact

For security-related questions:

- **Email**: security@coherence-framework.org
- **PGP Key**: Available upon request

For non-security issues, please use:
- GitHub Issues for bugs and feature requests
- CONTRIBUTING.md for contribution guidelines

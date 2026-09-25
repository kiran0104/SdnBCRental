# SDN BC Rental

This repository contains a small Microsoft Dynamics 365 Business Central AL extension for vehicle rental data management.

## Custom agent setup

This repository now includes a GitHub Copilot custom agent setup for repo-specific guidance.

### Configuration files

- `.github/copilot-instructions.md`
  - defines the agent role, expected inputs, outputs, and safety guardrails
- `.github/instructions/al.instructions.md`
  - adds AL-specific coding guidance for files under `src/**/*.al`
- `.github/workflows/copilot-setup-steps.yml`
  - prepares the Copilot cloud agent environment with minimal permissions and deterministic checks

### How to use it

1. Keep the workflow file on the default branch so Copilot can pick it up.
2. Start a Copilot coding agent task in this repository.
3. Give the agent a task related to the AL objects in `src`.
4. Update the instruction files when you want to change the agent behavior or guardrails.

### What the agent can do

- work on AL tables, pages, enums, and related documentation
- follow repository-specific naming and safety rules
- validate the repository layout before starting work

### Current limits

- there is no automated AL test suite configured in this repository
- the setup workflow currently prepares context and validates structure only
- any Business Central build or publish pipeline still needs to be added separately if required

# SDN BC Rental Copilot agent

You are working in a Microsoft Dynamics 365 Business Central AL extension for vehicle rental management.

## Agent responsibility

- Help with changes to the AL objects under `/src`
- Keep the solution centered on vehicle, maintenance, and API objects already in this repository
- Prefer small, safe, reviewable changes

## Inputs

- The user task
- Repository files in this project
- Existing AL tables, pages, enums, and workflow files

## Allowed actions

- Read and update AL source files under `/src`
- Update repository documentation and GitHub workflow files when directly related to the task
- Run non-destructive validation commands available in the environment

## Expected outputs

- A concise summary of what changed
- The list of files touched
- Validation results and any follow-up notes

## Guardrails

- Preserve the `SDN` object naming convention
- Reuse existing object ranges and avoid renumbering existing objects
- Do not introduce secrets, credentials, or private endpoints
- Do not make destructive data-model changes unless the task explicitly requires them
- Keep API changes backward-compatible unless the user asks for a breaking change
- Prefer Business Central AL patterns already used in this repository

## Repository notes

- Main functional areas currently present:
  - vehicle master data
  - vehicle maintenance
  - vehicle API exposure
- There is no existing automated test suite in this repository, so validate changes with available repository checks and targeted file-level verification

# Git Branching Strategy

This document explains the branching strategy used in the **DevOps Git Workflow Project**.

The purpose of this strategy is to keep the `main` branch stable while allowing development, documentation, and maintenance work to happen independently.

---

## Branch Structure

This project uses three main types of branches:

```text
main
  ↑
  │
 dev
  ↑
  │
feature/*
```

The branches used during this project include:

```text
main
dev
feature/system-info
feature/documentation
feature/readme-finalization
feature/v1.0.1-documentation
```

---

# 1. Main Branch

The `main` branch contains the stable and release-ready version of the project.

New features and documentation changes are not developed directly on `main`.

Changes reach `main` only after they have first been reviewed and merged into the `dev` branch.

Typical promotion flow:

```text
dev
 ↓
Pull Request
 ↓
main
```

The `main` branch is also used for stable release tagging.

Release tags created in this project:

```text
v1.0.0
v1.0.1
```

---

# 2. Dev Branch

The `dev` branch acts as the integration branch.

Completed features and documentation updates are first merged into `dev` through Pull Requests.

Example:

```text
feature/system-info
        ↓
   Pull Request
        ↓
       dev
```

After the changes in `dev` are reviewed and considered stable, another Pull Request is created:

```text
dev
 ↓
Pull Request
 ↓
main
```

This keeps the stable `main` branch separate from active development work.

---

# 3. Feature Branches

Feature branches are created from the latest `dev` branch.

Each feature branch should focus on one specific task.

Naming convention:

```text
feature/<task-name>
```

Examples used in this project:

```text
feature/system-info
feature/documentation
feature/readme-finalization
feature/v1.0.1-documentation
```

Feature branches allow work to happen without directly modifying `dev` or `main`.

---

# Feature Development Workflow

The general workflow is:

```text
dev
 ↓
Create feature branch
 ↓
Make changes
 ↓
Stage changes
 ↓
Commit changes
 ↓
Push feature branch
 ↓
Create Pull Request
 ↓
Merge feature into dev
```

---

# Pull Request Workflow

Pull Requests are used instead of directly merging important branches.

This creates a clear and traceable GitHub history.

---

## Feature → Dev

For feature development:

```text
base: dev
compare: feature/<feature-name>
```

Example:

```text
base: dev
compare: feature/system-info
```

Meaning:

```text
Take changes FROM feature/system-info
              ↓
Merge changes INTO dev
```

---

## Dev → Main

After integration and review:

```text
base: main
compare: dev
```

Meaning:

```text
Take changes FROM dev
              ↓
Merge changes INTO main
```

---

# Workflow 1 — System Information Feature

The first feature developed in this project was the Linux system information script.

The feature branch was:

```text
feature/system-info
```

The workflow was:

```text
dev
 ↓
feature/system-info
 ↓
Add system-info.sh
 ↓
Test on Ubuntu Linux
 ↓
Commit
 ↓
Push
 ↓
Pull Request
 ↓
dev
```

The completed feature was then promoted to `main`:

```text
feature/system-info
        ↓
   Pull Request
        ↓
       dev
        ↓
   Pull Request
        ↓
       main
        ↓
     v1.0.0
```

---

# Release v1.0.0

The first stable version of the project was tagged:

```text
v1.0.0
```

Release message:

```text
First stable release
```

The release represented the first completed feature workflow:

```text
feature/system-info
        ↓
       dev
        ↓
       main
        ↓
     v1.0.0
```

---

# Workflow 2 — Documentation Feature

Detailed Git documentation was created in a separate branch:

```text
feature/documentation
```

The documentation workflow was:

```text
dev
 ↓
feature/documentation
 ↓
Add branching-strategy.md
 ↓
Add git-commands.md
 ↓
Update CHANGELOG.md
 ↓
Commit changes
 ↓
Push branch
 ↓
Pull Request
 ↓
dev
```

This demonstrated that documentation changes can follow the same branching workflow as code changes.

---

# Workflow 3 — README Finalization

The final project README and architecture image were developed using:

```text
feature/readme-finalization
```

The workflow was:

```text
dev
 ↓
feature/readme-finalization
 ↓
Finalize README.md
 ↓
Add architecture image
 ↓
Commit
 ↓
Push
 ↓
Pull Request
 ↓
dev
 ↓
Pull Request
 ↓
main
 ↓
v1.0.1
```

The complete release flow was:

```text
feature/readme-finalization
        ↓
   Pull Request
        ↓
       dev
        ↓
   Pull Request
        ↓
       main
        ↓
     v1.0.1
```

---

# Release v1.0.1

The second project release was tagged:

```text
v1.0.1
```

Release message:

```text
Documentation and README finalization
```

This release included:

- Finalized project README
- Git workflow architecture image
- Additional project evidence
- Updated documentation
- Completed project presentation

Release flow:

```text
feature/readme-finalization
        ↓
       dev
        ↓
       main
        ↓
     v1.0.1
```

---

# Workflow 4 — v1.0.1 Documentation Update

After creating the `v1.0.1` release, some documentation still referenced only `v1.0.0`.

A GitHub Issue was created to track this work:

```text
Issue #7
```

Issue title:

```text
docs: update project documentation for v1.0.1 release with Additional Project Evidence
```

A dedicated branch was created:

```text
feature/v1.0.1-documentation
```

The workflow is:

```text
dev
 ↓
feature/v1.0.1-documentation
 ↓
Update CHANGELOG.md
 ↓
Update branching-strategy.md
 ↓
Update git-commands.md
 ↓
Verify README release information
 ↓
Commit changes
 ↓
Push branch
 ↓
Pull Request
 ↓
dev
```

The Pull Request can reference:

```text
Closes #7
```

This connects the documentation work directly to GitHub Issue `#7`.

---

# Complete Project Branch Flow

The complete project workflow can be represented as:

```text
feature/system-info
        ↓
       dev
        ↓
       main
        ↓
     v1.0.0


feature/documentation
        ↓
       dev


feature/readme-finalization
        ↓
       dev
        ↓
       main
        ↓
     v1.0.1


feature/v1.0.1-documentation
        ↓
       dev
```

---

# Branching Rules

The following branching rules are followed in this project:

1. Do not develop features directly on `main`.
2. Keep `main` stable and release-ready.
3. Use `dev` as the integration branch.
4. Create feature branches from the latest `dev`.
5. Keep each feature branch focused on one task.
6. Use meaningful feature branch names.
7. Use meaningful commit messages.
8. Push feature branches to GitHub.
9. Use Pull Requests to merge feature branches into `dev`.
10. Use Pull Requests to promote `dev` into `main`.
11. Create Git tags from stable releases.
12. Track documentation and maintenance work using GitHub Issues when useful.
13. Delete obsolete feature branches after successful merges when they are no longer needed.

---

# Commit Message Examples

Meaningful commit messages used in the project include:

```text
docs: add initial project README

chore: add project gitignore

docs: add project changelog

feat: add system information script

chore: make system info script executable

docs: document Git branching strategy

docs: add Git command reference

docs: update project changelog

docs: finalize README with Git workflow architecture

docs: document v1.0.1 release
```

---

# Branch Naming Convention

The project uses descriptive branch names.

Examples:

```text
feature/system-info
feature/documentation
feature/readme-finalization
feature/v1.0.1-documentation
```

Format:

```text
feature/<task-name>
```

This makes it easier to understand the purpose of each branch.

---

# Release Strategy

Stable versions are tagged from the `main` branch.

Current releases:

| Version | Description |
|---|---|
| `v1.0.0` | First stable release |
| `v1.0.1` | Documentation and README finalization |

Release workflow:

```text
feature/*
   ↓
  dev
   ↓
 main
   ↓
Git Tag
```

---

# Benefits of This Branching Strategy

This workflow provides several advantages:

- Keeps `main` stable
- Separates active development from stable content
- Makes individual features easier to track
- Encourages review using Pull Requests
- Creates a visible GitHub history
- Supports release tagging
- Makes documentation changes traceable
- Allows GitHub Issues to track maintenance work
- Reduces accidental changes to stable branches
- Demonstrates a structured DevOps version-control workflow

---

# Final Workflow

```text
                    FEATURE DEVELOPMENT
                           │
                           ▼
                       feature/*
                           │
                           ▼
                     Pull Request
                           │
                           ▼
                          dev
                           │
                           ▼
                     Pull Request
                           │
                           ▼
                          main
                           │
                           ▼
                      Release Tag
```

Current releases:

```text
v1.0.0
   ↓
First stable release


v1.0.1
   ↓
Documentation and README finalization
```

---

# Conclusion

This project demonstrates a structured Git and GitHub workflow using:

```text
main
dev
feature/*
Pull Requests
GitHub Issues
Git Tags
Meaningful Commits
Markdown Documentation
```

The workflow provides a clear and traceable development process:

```text
feature/*
   ↓
  dev
   ↓
 main
   ↓
release
```

The latest documented release is:

```text
v1.0.1
```

with the release description:

```text
Documentation and README finalization
```
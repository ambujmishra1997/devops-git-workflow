# DevOps Git Workflow Project

A hands-on **Git and GitHub project** demonstrating version-control best practices commonly used in DevOps environments.

This project focuses on structured branching, meaningful commits, Pull Requests, GitHub Issues, release tagging, `.gitignore`, Markdown documentation, release history, and repository maintenance.

A small Linux system-information Bash script is used as the practical feature developed through the Git workflow.

<p align="center">
  <img src="docs/images/devops-git-workflow-architecture.png"
       alt="DevOps Git and GitHub Workflow Architecture"
       width="100%">
</p>

---

## Project Objective

The objective of this project is to manage a DevOps project using Git best practices and demonstrate a clear, traceable version-control workflow.

```text
Repository Setup
      ↓
main Branch
      ↓
dev Branch
      ↓
Feature / Fix Branch
      ↓
Meaningful Commits
      ↓
Pull Request
      ↓
Merge into dev
      ↓
Pull Request
      ↓
Merge into main
      ↓
Release / Maintenance
```

---

## Key Features

- Git repository initialization
- GitHub remote repository
- `main` stable branch
- `dev` integration branch
- Task-specific `feature/*` branches
- Maintenance-specific `fix/*` branches
- Meaningful commit messages
- Pull Request based merging
- GitHub Issue tracking
- Issue-to-PR traceability
- Git release tagging
- `.gitignore`
- Markdown documentation
- Linux Bash scripting
- Release history documentation
- Project evidence
- Branching architecture documentation
- Post-release maintenance workflow

---

## Tech Stack

- **Git**
- **GitHub**
- **Bash**
- **Markdown**
- **Ubuntu Linux**
- **Vagrant**

---

## Repository Structure

```text
devops-git-workflow/
|
|-- docs/
|   |-- images/
|   |   |-- devops-git-workflow-architecture.png
|   |   `-- Additonal-Project-Evidence/
|   |
|   |-- branching-strategy.md
|   `-- git-commands.md
|
|-- scripts/
|   `-- system-info.sh
|
|-- .gitignore
|-- CHANGELOG.md
`-- README.md
```

---

# Git Branching Strategy

The project follows this branching model:

```text
feature/* or fix/*
        ↓
   Pull Request
        ↓
       dev
        ↓
   Pull Request
        ↓
       main
```

For stable release work:

```text
feature/*
   ↓
  dev
   ↓
 main
   ↓
Release Tag
```

The branch types used in this project are:

```text
main
dev
feature/*
fix/*
```

---

## `main`

The `main` branch contains stable and release-ready project content.

Responsibilities:

- Contains stable project versions
- Receives changes through Pull Requests
- Used as the source for release tags
- Avoids direct feature development
- Receives completed maintenance fixes

---

## `dev`

The `dev` branch acts as the integration branch.

Responsibilities:

- Receives completed feature branches
- Receives maintenance fixes
- Combines development work
- Provides a staging point before `main`
- Acts as the source branch for promotion into `main`

---

## `feature/*`

Feature branches are created from the latest `dev` branch.

Examples used in this project:

```text
feature/system-info
feature/documentation
feature/readme-finalization
feature/v1.0.1-documentation
```

Each feature branch focuses on one specific task.

---

## `fix/*`

Fix branches are used for maintenance work discovered after previous changes have already been merged.

Current example:

```text
fix/readme-encoding-architecture
```

This branch is associated with:

```text
GitHub Issue #10
```

---

# Feature Development Workflow

The normal feature workflow is:

```text
dev
 ↓
Create feature branch
 ↓
Make changes
 ↓
git add
 ↓
git commit
 ↓
git push
 ↓
Pull Request
 ↓
dev
```

After integrated changes are ready:

```text
dev
 ↓
Pull Request
 ↓
main
```

For a release:

```text
main
 ↓
Git Tag
```

---

# Workflow 1 — System Information Feature

The first practical feature was developed in:

```text
feature/system-info
```

Workflow:

```text
dev
 ↓
feature/system-info
 ↓
Develop system-info.sh
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
 ↓
Pull Request
 ↓
main
 ↓
v1.0.0
```

This became the first stable release.

---

# Workflow 2 — Documentation

The Git documentation was developed through:

```text
feature/documentation
```

Workflow:

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
Commit
 ↓
Push
 ↓
Pull Request
 ↓
dev
```

This demonstrated that documentation changes can follow the same version-control process as application or infrastructure changes.

---

# Workflow 3 — README Finalization

The README and architecture image finalization work was developed through:

```text
feature/readme-finalization
```

Workflow:

```text
dev
 ↓
feature/readme-finalization
 ↓
Finalize README.md
 ↓
Add Git workflow architecture image
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

The resulting release was:

```text
v1.0.1
```

Release message:

```text
Documentation and README finalization
```

---

# Release History

| Version | Description |
|---|---|
| `v1.0.0` | First stable release |
| `v1.0.1` | Documentation and README finalization |

The latest release tag is:

```text
v1.0.1
```

---

## Release `v1.0.0`

The first stable release followed:

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

Release message:

```text
First stable release
```

---

## Release `v1.0.1`

The README finalization release followed:

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

Release message:

```text
Documentation and README finalization
```

This release focused on:

- Final README presentation
- Git workflow architecture
- Project documentation improvements
- Additional project evidence
- Release-ready repository presentation

---

# Post-Release Documentation Alignment

After `v1.0.1` was created, some documentation still referenced only the earlier project state.

This work was tracked through:

```text
GitHub Issue #7
```

Issue:

```text
docs: update project documentation for v1.0.1 release with Additional Project Evidence
```

The work was completed through:

```text
feature/v1.0.1-documentation
```

Workflow:

```text
Issue #7
   ↓
feature/v1.0.1-documentation
   ↓
Update CHANGELOG.md
   ↓
Update branching-strategy.md
   ↓
Update git-commands.md
   ↓
Update README.md
   ↓
Add project evidence
   ↓
Pull Request
   ↓
dev
   ↓
Pull Request
   ↓
main
   ↓
Issue #7 Closed
```

This work documented the existing `v1.0.1` release.

It did **not** move or recreate the `v1.0.1` tag.

---

# Current Maintenance — Issue #10

A later README review identified an encoding problem and an outdated branching architecture image.

The maintenance work is tracked through:

```text
GitHub Issue #10
```

Issue title:

```text
fix: correct encoding and update branching architecture image
```

The fix branch is:

```text
fix/readme-encoding-architecture
```

Current workflow:

```text
Issue #10
   ↓
fix/readme-encoding-architecture
   ↓
Correct README encoding
   ↓
Preserve manual README updates
   ↓
Correct repository structure rendering
   ↓
Update branching architecture image
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
Issue #10 Closed
```

This maintenance work does **not** change or recreate the existing `v1.0.1` release tag.

---

# Pull Request Workflow

## Feature → Dev

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

## Fix → Dev

For Issue #10:

```text
base: dev
compare: fix/readme-encoding-architecture
```

Meaning:

```text
Take changes FROM fix/readme-encoding-architecture
              ↓
Merge changes INTO dev
```

The first PR can reference:

```text
Refs #10
```

---

## Dev → Main

After the integrated work is ready:

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

For the final Issue #10 PR, the description can include:

```text
Closes #10
```

This allows GitHub to automatically close the issue when the change reaches `main`.

---

# GitHub Issue Tracking

GitHub Issues are used to track project work and maintenance.

Completed issue:

```text
Issue #7 - Closed
```

Current maintenance issue:

```text
Issue #10
```

Issue #10 tracks:

- README encoding correction
- Removal of corrupted rendering
- Preservation of manual README changes
- Repository structure formatting
- Updated branching architecture image
- Final verification on `main`

Issue-to-branch relationship:

```text
Issue #10
   ↓
fix/readme-encoding-architecture
```

Issue-to-PR relationship:

```text
fix/readme-encoding-architecture
        ↓
      dev
        ↓
      main
        ↓
Closes #10
```

---

# System Information Script

The project includes:

```text
scripts/system-info.sh
```

The script was tested on Ubuntu Linux.

```bash
#!/bin/bash

echo "======================================"
echo "       SYSTEM INFORMATION"
echo "======================================"

echo
echo "Operating System:"
grep PRETTY_NAME /etc/os-release

echo
echo "Kernel Version:"
uname -r

echo
echo "CPU Cores:"
nproc

echo
echo "Memory Information:"
free -h

echo
echo "Disk Usage:"
df -h /

echo
echo "Git Version:"
git --version

echo
echo "======================================"
echo "System information collected"
echo "======================================"
```

Make it executable:

```bash
chmod +x scripts/system-info.sh
```

Run it:

```bash
./scripts/system-info.sh
```

The script intentionally avoids displaying sensitive information such as:

```text
Passwords
Access Tokens
Private Keys
AWS Credentials
Environment Secrets
```

---

# Meaningful Commit Messages

The project uses clear commit messages instead of generic messages such as:

```text
update
changes
final
done
```

Examples used during the project:

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
docs: update branching strategy for v1.0.1
docs: update Git command reference for v1.0.1
docs: update README for v1.0.1 release
docs: add project evidence for v1.0.1
```

For the current maintenance fix, a suitable commit is:

```text
fix: correct README encoding and update architecture image
```

---

## Commit Prefixes

| Prefix | Purpose |
|---|---|
| `feat:` | New functionality |
| `fix:` | Bug fix |
| `docs:` | Documentation |
| `chore:` | Maintenance or configuration |
| `test:` | Testing-related changes |
| `refactor:` | Code restructuring |

---

# Git Tagging

Git tags identify stable points in repository history.

Tags used in this project:

```text
v1.0.0
v1.0.1
```

View tags:

```bash
git tag
```

View tag descriptions:

```bash
git tag -n
```

Inspect the latest release:

```bash
git show v1.0.1
```

---

## Historical Tag Commands

First release:

```bash
git tag -a v1.0.0 -m "First stable release"
git push origin v1.0.0
```

README finalization release:

```bash
git tag -a v1.0.1 -m "Documentation and README finalization"
git push origin v1.0.1
```

Published release tags should normally be treated as stable historical references.

Issue #10 does not require recreating or moving `v1.0.1`.

---

# `.gitignore`

The project uses `.gitignore` to avoid committing unnecessary or sensitive files.

```gitignore
# Environment files
.env
.env.*

# Logs
*.log

# OS files
.DS_Store
Thumbs.db

# IDE files
.vscode/
.idea/

# Temporary files
*.tmp
*.swp

# Secrets
*.key
*.pem
secrets/
```

Important:

> `.gitignore` prevents untracked files from being added to Git. It does not automatically remove files that have already been committed.

---

# Project Documentation

Detailed project documentation is stored under:

```text
docs/
```

---

## `docs/branching-strategy.md`

Documents:

- `main`
- `dev`
- `feature/*`
- Feature development workflow
- Pull Request workflow
- `v1.0.0`
- `v1.0.1`
- Issue `#7`
- Documentation alignment workflow

---

## `docs/git-commands.md`

Documents:

- Repository initialization
- Remote repository configuration
- Branch management
- Feature branches
- Staging
- Commits
- Push and pull
- Fetch
- Pull Requests
- GitHub Issues
- Merge
- Rebase
- Merge conflicts
- Git stash
- Git tags
- Release history
- Branch comparison
- Branch cleanup

---

# Common Git Commands

Check repository status:

```bash
git status
```

View current branch:

```bash
git branch --show-current
```

View branches:

```bash
git branch
git branch -a
```

Switch branches:

```bash
git switch main
git switch dev
```

Create a feature branch:

```bash
git switch -c feature/<task-name>
```

Create a fix branch:

```bash
git switch -c fix/<task-name>
```

Stage files:

```bash
git add <file>
```

Commit:

```bash
git commit -m "message"
```

Push:

```bash
git push
```

Pull:

```bash
git pull
```

Fetch:

```bash
git fetch --all
```

View Git history:

```bash
git log --oneline --graph --decorate --all
```

View tags:

```bash
git tag
git tag -n
```

---

# Merge vs Rebase

## Merge

```bash
git merge <branch>
```

Merge combines branch histories.

It may create a merge commit and preserves the original branch history.

---

## Rebase

```bash
git rebase <branch>
```

Rebase moves commits onto another base.

It rewrites commit history.

For this learning project, Pull Request based merges are used because they provide a clear and visible GitHub history.

---

# Merge Conflict Resolution

A merge conflict can occur when Git cannot automatically combine changes.

Typical conflict markers:

```text
<<<<<<< HEAD
Current branch content
=======
Incoming branch content
>>>>>>> branch-name
```

Resolution flow:

```text
Open conflicting file
        ↓
Choose correct content
        ↓
Remove conflict markers
        ↓
git add <file>
        ↓
git commit
```

---

# Git Stash

Temporarily save uncommitted work:

```bash
git stash
```

View saved stashes:

```bash
git stash list
```

Restore the latest stash:

```bash
git stash pop
```

Git stash is useful when switching branches while unfinished changes exist.

---

# Additional Project Evidence

Project evidence is stored under:

```text
docs/images/
```

The architecture image is:

```text
docs/images/devops-git-workflow-architecture.png
```

Additional evidence includes:

```text
GitHub branch structure
Feature -> Dev Pull Request
Dev -> Main Pull Request
GitHub Issue #7
GitHub Issue #10
v1.0.0 tag
v1.0.1 tag
Commit history
System information script execution
Repository structure
```

Additional evidence stored under:

```text
docs/images/Additonal-Project-Image-Evidences/
```

Screenshots should avoid exposing:

```text
Access tokens
Passwords
Private keys
AWS credentials
Sensitive environment variables
Personal machine information
```

---

# Git Best Practices Demonstrated

This project demonstrates:

- Keeping `main` stable
- Using `dev` as an integration branch
- Creating task-specific feature branches
- Creating maintenance-specific fix branches
- Creating branches from the latest `dev`
- Writing meaningful commit messages
- Keeping commits focused
- Using Pull Requests
- Using GitHub Issues to track work
- Linking Issues with Pull Requests
- Using `.gitignore`
- Avoiding secrets in Git
- Using release tags
- Treating published tags as historical references
- Maintaining release history
- Maintaining Markdown documentation
- Testing Bash scripts on Linux
- Managing Git work across Windows and Ubuntu
- Performing post-release repository maintenance

---

# Complete Project Workflow

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


Issue #7
   ↓
feature/v1.0.1-documentation
        ↓
       dev
        ↓
       main
        ↓
Issue #7 Closed


Issue #10
   ↓
fix/readme-encoding-architecture
        ↓
       dev
        ↓
       main
        ↓
Issue #10 Closed
```

---

# What I Learned

This project helped me practice:

- Git repository initialization
- GitHub repositories
- Local and remote repositories
- Branch creation
- Branch switching
- Feature-based development
- Maintenance fix branches
- `main` and `dev` branch strategy
- Meaningful commit messages
- Pull Requests
- GitHub Issues
- Issue-to-PR linking
- Branch merging
- Git tags
- Git stash
- Merge conflict concepts
- `.gitignore`
- Markdown documentation
- Linux Bash scripting
- GitHub authentication using a Personal Access Token
- Managing Git across Windows and Ubuntu Linux
- Release documentation
- Version-control workflow planning
- Post-release maintenance

---

# Future Improvements

Possible future improvements include:

- Add branch protection rules
- Require Pull Request approvals
- Add GitHub Actions checks
- Add automated validation before merge
- Add a merge-conflict practice scenario
- Add automated release notes
- Practice semantic versioning
- Add signed commits or signed tags
- Add more Linux automation scripts
- Add CI workflow validation

---

# Current Project Status

Latest release:

```text
v1.0.1
```

Release message:

```text
Documentation and README finalization
```

Completed documentation issue:

```text
Issue #7 - Closed
```

Current maintenance issue:

```text
Issue #10
```

Current fix branch:

```text
fix/readme-encoding-architecture
```

Current maintenance workflow:

```text
Issue #10
   ↓
fix/readme-encoding-architecture
   ↓
dev
   ↓
main
   ↓
Issue #10 Closed
```

The current maintenance work corrects README encoding and updates the branching architecture image without modifying the existing `v1.0.1` release tag.

---

# Conclusion

This project demonstrates a structured Git and GitHub version-control workflow using:

```text
Git
GitHub
main
dev
feature/*
fix/*
Commits
Pull Requests
GitHub Issues
Git Tags
.gitignore
Markdown
Bash
```

The primary development workflow is:

```text
feature/*
   ↓
Pull Request
   ↓
  dev
   ↓
Pull Request
   ↓
 main
   ↓
release
```

The maintenance workflow is:

```text
Issue
 ↓
fix/*
 ↓
dev
 ↓
main
 ↓
Issue Closed
```

The latest release tag is:

```text
v1.0.1
```

with the release description:

```text
Documentation and README finalization
```

---

## Author

**Ambuj Mishra**

GitHub:

```text
ambujmishra1997
```
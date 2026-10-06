# DevOps Git Workflow Project

A hands-on **Git and GitHub project** demonstrating version-control best practices commonly used in DevOps environments.

This project focuses on structured branching, meaningful commits, Pull Requests, release tagging, `.gitignore`, and Markdown documentation. It also includes a small Linux system-information Bash script used as the feature developed through the Git workflow.

<p align="center">
  <img src="docs/images/devops-git-workflow-architecture.png"
       alt="DevOps Git and GitHub Workflow Architecture"
       width="100%">
</p>

---

## Project Objective

Manage a DevOps project using Git best practices and demonstrate a clean version-control workflow.

```text
Repository Setup
      
main Branch
      
dev Branch
      
feature Branch
      
Meaningful Commits
      
Pull Request
      
Merge into dev
      
Pull Request
      
Merge into main
      
Release Tag
```

---

## Key Features

- Structured Git branching workflow
- Dedicated `main`, `dev`, and `feature/*` branches
- Feature development through isolated branches
- Pull Request based integration
- Meaningful and categorized commit messages
- Git release tagging using `v1.0.0`
- Project-wide `.gitignore`
- Detailed Markdown documentation
- Linux Bash utility script used as a practical feature
- Public GitHub repository suitable for portfolio submission

---

## Tech Stack

- **Git**
- **GitHub**
- **Bash**
- **Markdown**
- **Ubuntu Linux**
- **Vagrant** for Linux testing

---

## Repository Structure

```text
devops-git-workflow/

 docs/
    images/
       devops-git-workflow-architecture.png
    branching-strategy.md
    git-commands.md

 scripts/
    system-info.sh

 .gitignore
 CHANGELOG.md
 README.md
```

---

## Git Workflow

The project follows this branching model:

```text
feature/*
    
Pull Request
    
   dev
    
Pull Request
    
  main
    
 Release Tag
```

The feature workflow used in this project was:

```text
feature/system-info
        
   Pull Request
        
       dev
        
   Pull Request
        
       main
        
     v1.0.0
```

Documentation work was handled separately through:

```text
dev
 
feature/documentation
 
Update Markdown files
 
Commit
 
Push
 
Pull Request
 
dev
```

---

## Branching Strategy

### `main`

The `main` branch represents stable and release-ready content.

- Stores stable project content
- Receives changes through Pull Requests
- Used for release tagging
- Should not be used for direct feature development

### `dev`

The `dev` branch is the integration branch.

- Receives completed features
- Combines development work before release
- Acts as the source branch for promotion into `main`

### `feature/*`

Feature branches are created from `dev`.

Examples:

```text
feature/system-info
feature/documentation
```

- One task or feature per branch
- Isolated development
- Merged into `dev` using Pull Requests

---

## Pull Request Workflow

### Feature  Dev

```text
base: dev
compare: feature/system-info
```

Meaning:

```text
Take changes FROM feature/system-info
              
Merge changes INTO dev
```

### Dev  Main

```text
base: main
compare: dev
```

Meaning:

```text
Take changes FROM dev
              
Merge changes INTO main
```

---

## System Information Script

The project includes:

```text
scripts/system-info.sh
```

It was tested on Ubuntu Linux.

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

Run:

```bash
./scripts/system-info.sh
```

The script intentionally avoids printing passwords, tokens, private keys, or environment secrets.

---

## Meaningful Commit Messages

Examples used in this project:

```text
docs: add initial project README
chore: add project gitignore
docs: add project changelog
feat: add system information script
chore: make system info script executable
docs: document Git branching strategy
docs: add Git command reference
docs: update project changelog
```

| Prefix | Purpose |
|---|---|
| `feat:` | New functionality |
| `fix:` | Bug fix |
| `docs:` | Documentation |
| `chore:` | Maintenance or configuration |
| `test:` | Test-related changes |
| `refactor:` | Code restructuring |

---

## Git Tagging

The first stable release is tagged:

```text
v1.0.0
```

```bash
git tag -a v1.0.0 -m "First stable release"
git push origin v1.0.0
git show v1.0.0
```

---

## `.gitignore`

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

> `.gitignore` prevents untracked files from being added to Git. It does not automatically remove files that were already committed.

---

## Project Documentation

### `docs/branching-strategy.md`

Covers:

- Branch roles
- Feature workflow
- Pull Request direction
- Release workflow
- Branching rules
- Commit examples

### `docs/git-commands.md`

Covers:

- Repository setup
- Branching
- Staging and committing
- Push and pull
- Fetch
- Pull Requests
- Merge and rebase
- Merge conflicts
- Git stash
- Git tags
- Branch deletion
- History inspection

---

## Common Git Commands Used

```bash
git status
git branch
git branch -a
git switch main
git switch dev
git switch feature/system-info
git add .
git commit -m "feat: add system information script"
git push
git pull
git fetch --all
git log --oneline --graph --decorate --all
git stash
git stash pop
git tag
```

---

## Merge vs Rebase

### Merge

```bash
git merge <branch>
```

Merge combines histories and may create a merge commit. It preserves the existing branch history.

### Rebase

```bash
git rebase <branch>
```

Rebase moves commits onto another base and rewrites commit history.

For this learning project, Pull Request based merges were used because they provide a clear and visible workflow on GitHub.

---

## Merge Conflict Resolution

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
        
Choose or combine correct content
        
Remove conflict markers
        
git add <file>
        
git commit
```

---

## Git Stash

```bash
git stash
git stash list
git stash pop
```

---

## Git Best Practices Demonstrated

- Keep `main` stable
- Use a separate integration branch
- Create task-specific feature branches
- Use meaningful branch names
- Write meaningful commit messages
- Review changes before committing
- Use Pull Requests for important merges
- Avoid committing secrets
- Use `.gitignore`
- Tag stable releases
- Keep project documentation under version control
- Delete obsolete feature branches after merge

---

## Project Evidence

Recommended screenshots can be stored under:

```text
docs/images/
```

Suggested evidence:

```text
github-branches.png
feature-to-dev-pr.png
dev-to-main-pr.png
git-tag-v1.0.0.png
commit-history.png
```

---

## Changelog

Project changes are documented in:

```text
CHANGELOG.md
```

The first stable release is:

```text
v1.0.0
```

---

## What I Learned

- Git repository initialization
- Local and remote repositories
- Branch creation and switching
- Feature-based development
- `main` and `dev` branch strategy
- Meaningful commit messages
- GitHub Pull Requests
- Branch merging
- Git tags
- Git stash
- Merge conflict concepts
- `.gitignore`
- Markdown documentation
- Linux script version control
- GitHub authentication using a Personal Access Token
- Managing the same Git project across Windows and Linux environments

---

## Future Improvements

- Add branch protection rules
- Require Pull Request approvals
- Add GitHub Actions checks before merge
- Add more feature branches
- Add an intentional merge-conflict exercise
- Add automated release notes
- Add semantic versioning examples
- Add a Docker-based feature
- Add a simple CI workflow

---

## Conclusion

This project demonstrates a complete Git and GitHub workflow using branching, Pull Requests, meaningful commits, tags, `.gitignore`, and structured Markdown documentation.

```text
feature/*
   
  dev
   
 main
   
release tag
```

---

## Author

**Ambuj Mishra**

GitHub: **ambujmishra1997**


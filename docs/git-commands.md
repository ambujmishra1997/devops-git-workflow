# Git Command Reference

This document contains the Git commands used and practiced in the **DevOps Git Workflow Project**.

The purpose of this file is to document the most important Git commands used for repository setup, branching, committing, pushing, merging, tagging, stashing, and reviewing project history.

---

## 1. Initialize a Git Repository

Create a new Git repository:

```bash
git init
```

This creates a local `.git` directory and starts tracking the project with Git.

---

## 2. Rename the Default Branch to Main

```bash
git branch -M main
```

This renames the current branch to:

```text
main
```

---

## 3. Connect the Local Repository to GitHub

Add the remote GitHub repository:

```bash
git remote add origin <repository-url>
```

Example:

```bash
git remote add origin https://github.com/username/devops-git-workflow.git
```

Verify the remote:

```bash
git remote -v
```

---

## 4. Check Repository Status

```bash
git status
```

This shows:

- Current branch
- Modified files
- Staged files
- Untracked files
- Whether the branch is ahead or behind the remote

---

## 5. View Local Branches

```bash
git branch
```

Example:

```text
* main
  dev
  feature/system-info
```

The `*` shows the currently checked-out branch.

---

## 6. View Local and Remote Branches

```bash
git branch -a
```

Example:

```text
* main
  dev
  feature/system-info

  remotes/origin/main
  remotes/origin/dev
  remotes/origin/feature/system-info
```

---

## 7. Create the Dev Branch

Create and switch to the `dev` branch:

```bash
git switch -c dev
```

Older Git syntax:

```bash
git checkout -b dev
```

---

## 8. Push the Dev Branch to GitHub

```bash
git push -u origin dev
```

The `-u` option sets the upstream branch.

After that, future pushes can normally use:

```bash
git push
```

---

## 9. Create a Feature Branch

Feature branches are created from `dev`.

First switch to `dev`:

```bash
git switch dev
```

Then create the feature branch:

```bash
git switch -c feature/system-info
```

Another example:

```bash
git switch -c feature/documentation
```

---

## 10. Switch Between Branches

Switch to `main`:

```bash
git switch main
```

Switch to `dev`:

```bash
git switch dev
```

Switch to a feature branch:

```bash
git switch feature/system-info
```

---

## 11. View File Changes

Check which files have changed:

```bash
git status
```

View the actual line-by-line changes:

```bash
git diff
```

---

## 12. Stage a Specific File

```bash
git add README.md
```

Another example:

```bash
git add scripts/system-info.sh
```

---

## 13. Stage All Changes

```bash
git add .
```

This stages all changed and untracked files in the current repository.

Use it carefully so unwanted files are not accidentally committed.

---

## 14. Create a Commit

```bash
git commit -m "commit message"
```

Example:

```bash
git commit -m "feat: add system information script"
```

---

## 15. Meaningful Commit Messages

This project uses descriptive commit messages.

Examples:

```text
docs: add initial project README
chore: add project gitignore
docs: add project changelog
feat: add system information script
chore: make system info script executable
docs: document Git branching strategy
docs: add Git command reference
```

Common prefixes:

```text
feat:   New feature
fix:    Bug fix
docs:   Documentation
chore:  Maintenance or configuration
refactor: Code restructuring
test:   Test-related changes
```

---

## 16. Push the Current Branch

If an upstream branch already exists:

```bash
git push
```

For the first push of a new branch:

```bash
git push -u origin <branch-name>
```

Example:

```bash
git push -u origin feature/system-info
```

---

## 17. Pull the Latest Changes

Pull changes from the current tracked branch:

```bash
git pull
```

Or explicitly:

```bash
git pull origin main
```

Example for `dev`:

```bash
git pull origin dev
```

---

## 18. Fetch Remote Changes

```bash
git fetch --all
```

This downloads remote branch information without automatically merging it.

---

## 19. Create a Local Branch From a Remote Branch

Example:

```bash
git switch -c feature/system-info --track origin/feature/system-info
```

This creates a local branch that tracks the remote branch.

---

## 20. View Commit History

Basic history:

```bash
git log
```

Compact history:

```bash
git log --oneline
```

Graph view:

```bash
git log --oneline --graph --decorate --all
```

This is useful for visualizing branch and merge history.

---

## 21. Pull Request Workflow

Pull Requests are created in GitHub, not with a basic Git command.

For this project:

### Feature to Dev

```text
base: dev
compare: feature/system-info
```

This means:

```text
feature/system-info
        
       dev
```

### Dev to Main

```text
base: main
compare: dev
```

This means:

```text
dev
 
main
```

---

## 22. Merge Branches Locally

Although this project uses GitHub Pull Requests, local merging can be done with:

```bash
git switch dev
git merge feature/system-info
```

Another example:

```bash
git switch main
git merge dev
```

For this project, Pull Requests are preferred because they provide a visible review and merge history on GitHub.

---

## 23. Merge vs Rebase

### Merge

```bash
git merge <branch-name>
```

Merge combines histories and may create a merge commit.

Example:

```bash
git merge feature/system-info
```

### Rebase

```bash
git rebase <branch-name>
```

Rebase moves commits onto another branch and rewrites commit history.

Example:

```bash
git switch feature/system-info
git rebase dev
```

For beginners and collaborative workflows, merge is often easier to understand because it preserves the original history.

---

## 24. Resolve Merge Conflicts

If Git cannot automatically merge changes, it may show:

```text
CONFLICT (content)
```

Check the conflict:

```bash
git status
```

Open the conflicting file and look for markers like:

```text
<<<<<<< HEAD

Current branch content

=======

Incoming branch content

>>>>>>> branch-name
```

Edit the file and keep the correct content.

Then stage it:

```bash
git add <file-name>
```

Complete the merge:

```bash
git commit
```

---

## 25. Git Stash

Temporarily save uncommitted changes:

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

Apply a stash without deleting it:

```bash
git stash apply
```

Git stash is useful when you need to switch branches without committing unfinished work.

---

## 26. Create a Git Tag

Create an annotated release tag:

```bash
git tag -a v1.0.0 -m "First stable release"
```

This project uses:

```text
v1.0.0
```

to represent the first stable release.

---

## 27. View Git Tags

```bash
git tag
```

Expected example:

```text
v1.0.0
```

---

## 28. Push a Tag to GitHub

```bash
git push origin v1.0.0
```

Push all local tags:

```bash
git push origin --tags
```

---

## 29. Inspect a Tag

```bash
git show v1.0.0
```

This displays information about the tagged commit.

---

## 30. Delete a Local Branch

After a feature has been merged:

```bash
git branch -d feature/system-info
```

The `-d` option safely deletes a branch that has already been merged.

Force delete if necessary:

```bash
git branch -D feature/system-info
```

Use force deletion carefully.

---

## 31. Delete a Remote Branch

```bash
git push origin --delete feature/system-info
```

This removes the branch from GitHub.

---

## 32. Delete a Local Tag

```bash
git tag -d v1.0.0
```

---

## 33. Delete a Remote Tag

```bash
git push origin --delete v1.0.0
```

---

## 34. Check Remote Repository Information

```bash
git remote -v
```

Example:

```text
origin  https://github.com/username/devops-git-workflow.git (fetch)
origin  https://github.com/username/devops-git-workflow.git (push)
```

---

## 35. Check the Current Branch

```bash
git branch --show-current
```

Example:

```text
feature/documentation
```

---

## 36. Show the Latest Commit

```bash
git log -1
```

Compact version:

```bash
git log -1 --oneline
```

---

## 37. Undo an Unstaged File Change

```bash
git restore <file-name>
```

Example:

```bash
git restore README.md
```

This restores the file to the last committed version.

---

## 38. Unstage a File

```bash
git restore --staged <file-name>
```

Example:

```bash
git restore --staged README.md
```

The file remains modified but is removed from the staging area.

---

## 39. Compare Two Branches

```bash
git diff dev..feature/system-info
```

Example:

```bash
git diff main..dev
```

This shows differences between branches.

---

## 40. Check Which Branches Contain a Commit

```bash
git branch --contains <commit-id>
```

This can help verify whether a commit has already been merged.

---

# Git Workflow Used in This Project

The project follows this workflow:

```text
main
 
dev
 
feature/*
```

Feature development:

```text
dev
 
feature/system-info
 
Make changes
 
git add
 
git commit
 
git push
 
Pull Request
 
dev
```

Release workflow:

```text
dev
 
Pull Request
 
main
 
Create Git Tag
 
v1.0.0
```

Documentation workflow:

```text
dev
 
feature/documentation
 
Update Markdown documentation
 
Commit
 
Push
 
Pull Request
 
dev
```

---

# Commands Used Most Frequently

```bash
git status

git branch
git branch -a

git switch main
git switch dev
git switch feature/system-info

git add .
git commit -m "message"

git push
git pull

git fetch --all

git log --oneline --graph --decorate --all

git tag

git stash
```

---

# Key Git Best Practices Demonstrated

- Keep `main` stable
- Use a `dev` integration branch
- Create feature branches for individual tasks
- Use meaningful commit messages
- Review changes before committing
- Use Pull Requests instead of directly merging important branches
- Use `.gitignore` to avoid committing unnecessary or sensitive files
- Tag stable releases
- Keep documentation version controlled
- Delete obsolete feature branches after merge

---

# Conclusion

This Git command reference documents the commands and version-control practices used throughout the DevOps Git Workflow Project.

The project demonstrates how Git and GitHub can be used to manage feature development, integration, releases, and project documentation in a structured DevOps workflow.

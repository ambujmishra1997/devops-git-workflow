# Git Command Reference

This document contains the Git and GitHub commands, workflows, and version-control practices used in the **DevOps Git Workflow Project**.

The project demonstrates repository initialization, branching, commits, remote repositories, Pull Requests, GitHub Issues, release tags, stash, merge concepts, conflict resolution, and project documentation.

---

# 1. Initialize a Git Repository

Create a new local Git repository:

```bash
git init
```

This creates the hidden `.git` directory used by Git to store repository history and configuration.

---

# 2. Rename the Default Branch to Main

```bash
git branch -M main
```

The stable branch used in this project is:

```text
main
```

---

# 3. Connect the Repository to GitHub

Add the GitHub repository as the remote named `origin`:

```bash
git remote add origin <repository-url>
```

Example:

```bash
git remote add origin https://github.com/username/devops-git-workflow.git
```

Verify the configured remote:

```bash
git remote -v
```

---

# 4. Check Repository Status

```bash
git status
```

This command shows:

- Current branch
- Modified files
- Staged files
- Untracked files
- Branch tracking information
- Whether the local branch is ahead or behind the remote

---

# 5. View the Current Branch

```bash
git branch --show-current
```

Example:

```text
feature/v1.0.1-documentation
```

---

# 6. View Local Branches

```bash
git branch
```

Example:

```text
  main
  dev
  feature/system-info
  feature/documentation
  feature/readme-finalization
* feature/v1.0.1-documentation
```

The `*` represents the currently checked-out branch.

---

# 7. View Local and Remote Branches

```bash
git branch -a
```

This displays both local branches and remote-tracking branches.

Example:

```text
main
dev
feature/system-info
feature/documentation
feature/readme-finalization
feature/v1.0.1-documentation

remotes/origin/main
remotes/origin/dev
remotes/origin/feature/system-info
remotes/origin/feature/documentation
remotes/origin/feature/readme-finalization
```

---

# 8. Create the Dev Branch

The `dev` branch is used as the integration branch.

Create and switch to it:

```bash
git switch -c dev
```

Older Git syntax:

```bash
git checkout -b dev
```

---

# 9. Push the Dev Branch

```bash
git push -u origin dev
```

The `-u` option sets the upstream tracking branch.

After the upstream has been configured, future pushes can normally use:

```bash
git push
```

---

# 10. Create a Feature Branch

Feature branches should be created from the latest `dev` branch.

First:

```bash
git switch dev
git pull origin dev
```

Then create a feature branch:

```bash
git switch -c feature/system-info
```

Other feature branches used in this project:

```bash
git switch -c feature/documentation
```

```bash
git switch -c feature/readme-finalization
```

```bash
git switch -c feature/v1.0.1-documentation
```

---

# 11. Feature Branches Used in This Project

The project has used the following feature branches:

```text
feature/system-info
feature/documentation
feature/readme-finalization
feature/v1.0.1-documentation
```

Their purposes were:

| Branch | Purpose |
|---|---|
| `feature/system-info` | Add and test the Linux system information script |
| `feature/documentation` | Add Git and branching documentation |
| `feature/readme-finalization` | Finalize README and architecture image |
| `feature/v1.0.1-documentation` | Update remaining documentation for `v1.0.1` |

---

# 12. Switch Between Branches

Switch to `main`:

```bash
git switch main
```

Switch to `dev`:

```bash
git switch dev
```

Switch to the system-info branch:

```bash
git switch feature/system-info
```

Switch to the documentation branch:

```bash
git switch feature/documentation
```

Switch to the README finalization branch:

```bash
git switch feature/readme-finalization
```

Switch to the current documentation update branch:

```bash
git switch feature/v1.0.1-documentation
```

---

# 13. View Changed Files

```bash
git status
```

View line-by-line unstaged changes:

```bash
git diff
```

View staged changes:

```bash
git diff --staged
```

---

# 14. Stage a Specific File

Example:

```bash
git add README.md
```

Another example:

```bash
git add docs/branching-strategy.md
```

Another example:

```bash
git add docs/git-commands.md
```

---

# 15. Stage All Changes

```bash
git add .
```

This stages all changed and untracked files in the current directory.

Use this carefully to avoid accidentally staging sensitive or unnecessary files.

---

# 16. Create a Commit

General syntax:

```bash
git commit -m "commit message"
```

Example:

```bash
git commit -m "feat: add system information script"
```

---

# 17. Commit Message Convention

The project uses descriptive commit messages.

Examples:

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
```

Common prefixes:

| Prefix | Meaning |
|---|---|
| `feat:` | New functionality |
| `fix:` | Bug fix |
| `docs:` | Documentation |
| `chore:` | Maintenance or configuration |
| `test:` | Testing-related change |
| `refactor:` | Code restructuring |

---

# 18. Push a New Branch

For the first push of a branch:

```bash
git push -u origin <branch-name>
```

Example:

```bash
git push -u origin feature/system-info
```

Current documentation branch:

```bash
git push -u origin feature/v1.0.1-documentation
```

After upstream tracking is configured:

```bash
git push
```

---

# 19. Pull the Latest Changes

Pull from the tracked remote branch:

```bash
git pull
```

Explicitly pull `main`:

```bash
git pull origin main
```

Pull `dev`:

```bash
git pull origin dev
```

A common feature-branch preparation flow is:

```bash
git switch dev
git pull origin dev
git switch -c feature/<task-name>
```

---

# 20. Fetch Remote Changes

```bash
git fetch --all
```

This downloads information about remote branches and commits without automatically merging anything.

---

# 21. Create a Local Branch From a Remote Branch

If a branch already exists on GitHub:

```bash
git switch -c <branch-name> --track origin/<branch-name>
```

Example:

```bash
git switch -c feature/system-info --track origin/feature/system-info
```

---

# 22. View Commit History

Full history:

```bash
git log
```

Compact history:

```bash
git log --oneline
```

Graphical branch history:

```bash
git log --oneline --graph --decorate --all
```

Recent commits:

```bash
git log --oneline -10
```

Latest commit:

```bash
git log -1 --oneline
```

---

# 23. Pull Request Workflow

Pull Requests are created through GitHub.

They are used to review and merge changes instead of directly modifying important branches.

---

## Feature → Dev

For feature development:

```text
base: dev
compare: feature/<branch-name>
```

Example:

```text
base: dev
compare: feature/system-info
```

Meaning:

```text
feature/system-info
        ↓
       dev
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
dev
 ↓
main
```

---

# 24. System Information Feature Workflow

The system information script followed this workflow:

```text
dev
 ↓
feature/system-info
 ↓
Develop script
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

---

# 25. Documentation Workflow

The first documentation improvements used:

```text
feature/documentation
```

Workflow:

```text
dev
 ↓
feature/documentation
 ↓
branching-strategy.md
 ↓
git-commands.md
 ↓
CHANGELOG.md
 ↓
Commit
 ↓
Push
 ↓
Pull Request
 ↓
dev
```

---

# 26. README Finalization Workflow

The final README and architecture image were developed in:

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

---

# 27. v1.0.1 Documentation Update Workflow

After the `v1.0.1` release was created, some documentation still referenced only `v1.0.0`.

A new branch was created:

```text
feature/v1.0.1-documentation
```

Branch creation:

```bash
git switch dev
git pull origin dev
git switch -c feature/v1.0.1-documentation
```

The documentation update includes:

```text
CHANGELOG.md
docs/branching-strategy.md
docs/git-commands.md
README.md verification
Additional Project Evidence
```

Current workflow:

```text
dev
 ↓
feature/v1.0.1-documentation
 ↓
Update documentation
 ↓
Commit
 ↓
Push
 ↓
Pull Request
 ↓
dev
```

---

# 28. GitHub Issue #7

The remaining `v1.0.1` documentation work is tracked using:

```text
Issue #7
```

Issue title:

```text
docs: update project documentation for v1.0.1 release with Additional Project Evidence
```

GitHub Issues are managed through the GitHub interface rather than a basic local Git command.

The issue provides traceability between the required documentation work and the Pull Request used to complete it.

---

# 29. Link a Pull Request to Issue #7

The Pull Request description can include:

```text
Closes #7
```

When the Pull Request reaches and is merged into the repository's default branch, GitHub can automatically close the linked issue.

Example PR description:

```markdown
## Summary

Updates project documentation to accurately reflect the v1.0.1 release.

## Changes

- Updated CHANGELOG.md
- Updated branching strategy
- Updated Git command reference
- Verified README release information
- Added additional project evidence

Closes #7
```

---

# 30. Merge Branches Locally

Although this project primarily demonstrates GitHub Pull Requests, local merges can also be performed.

Example:

```bash
git switch dev
git merge feature/system-info
```

Merge `dev` into `main` locally:

```bash
git switch main
git merge dev
```

For this project, GitHub Pull Requests are preferred for important integrations because they create a visible review and merge history.

---

# 31. Merge vs Rebase

## Merge

```bash
git merge <branch-name>
```

Example:

```bash
git merge feature/system-info
```

Merge combines branch histories and may create a merge commit.

It preserves the existing branch structure.

---

## Rebase

```bash
git rebase <branch-name>
```

Example:

```bash
git switch feature/system-info
git rebase dev
```

Rebase moves commits onto a different base and rewrites commit history.

For this learning project, Pull Request based merging is preferred because the history is easier to visualize.

---

# 32. Resolve Merge Conflicts

A conflict can occur when Git cannot automatically combine changes.

Git may display:

```text
CONFLICT (content)
```

Check the affected files:

```bash
git status
```

Typical conflict markers:

```text
<<<<<<< HEAD
Current branch content
=======
Incoming branch content
>>>>>>> branch-name
```

Edit the file and keep the correct content.

Then stage the resolved file:

```bash
git add <file-name>
```

Complete the merge:

```bash
git commit
```

---

# 33. Git Stash

Temporarily save uncommitted changes:

```bash
git stash
```

View saved stashes:

```bash
git stash list
```

Restore and remove the latest stash:

```bash
git stash pop
```

Apply the stash without removing it:

```bash
git stash apply
```

Git stash is useful when unfinished work exists but another branch needs to be checked out.

---

# 34. Git Tags

Git tags identify important points in repository history, such as stable releases.

The releases currently documented in this project are:

```text
v1.0.0
v1.0.1
```

---

# 35. Release v1.0.0

The first stable release was:

```text
v1.0.0
```

Release message:

```text
First stable release
```

Historical tag command:

```bash
git tag -a v1.0.0 -m "First stable release"
```

Push:

```bash
git push origin v1.0.0
```

---

# 36. Release v1.0.1

The next release is:

```text
v1.0.1
```

Release message:

```text
Documentation and README finalization
```

The tag was created after the README finalization workflow reached `main`.

Historical tag command:

```bash
git tag -a v1.0.1 -m "Documentation and README finalization"
```

Push:

```bash
git push origin v1.0.1
```

The existing `v1.0.1` tag should not be recreated simply because documentation is being updated afterward.

---

# 37. View Git Tags

```bash
git tag
```

Expected project release history:

```text
v1.0.0
v1.0.1
```

---

# 38. Inspect a Release Tag

Inspect `v1.0.0`:

```bash
git show v1.0.0
```

Inspect `v1.0.1`:

```bash
git show v1.0.1
```

---

# 39. View Tags With Messages

```bash
git tag -n
```

Example:

```text
v1.0.0  First stable release
v1.0.1  Documentation and README finalization
```

---

# 40. Check Which Commit a Tag Points To

```bash
git rev-list -n 1 v1.0.1
```

Another useful command:

```bash
git show --no-patch --oneline v1.0.1
```

---

# 41. Delete a Local Branch

After a branch has been successfully merged:

```bash
git branch -d <branch-name>
```

Example:

```bash
git branch -d feature/system-info
```

Force deletion:

```bash
git branch -D <branch-name>
```

Force deletion should be used carefully.

---

# 42. Delete a Remote Branch

```bash
git push origin --delete <branch-name>
```

Example:

```bash
git push origin --delete feature/system-info
```

Feature branches can be removed after they are safely merged and no longer required.

---

# 43. Delete a Local Tag

```bash
git tag -d <tag-name>
```

Example:

```bash
git tag -d v1.0.1
```

This should only be done when intentionally correcting a local tag.

---

# 44. Delete a Remote Tag

```bash
git push origin --delete <tag-name>
```

Example:

```bash
git push origin --delete v1.0.1
```

Published release tags should generally be treated as immutable.

---

# 45. Check Remote Repository Information

```bash
git remote -v
```

Example:

```text
origin  https://github.com/username/devops-git-workflow.git (fetch)
origin  https://github.com/username/devops-git-workflow.git (push)
```

---

# 46. Undo an Unstaged Change

Restore a modified file to the last committed version:

```bash
git restore <file-name>
```

Example:

```bash
git restore README.md
```

Use this carefully because unstaged changes in that file will be discarded.

---

# 47. Unstage a File

```bash
git restore --staged <file-name>
```

Example:

```bash
git restore --staged README.md
```

The file remains modified but is removed from the staging area.

---

# 48. Compare Branches

Compare `main` and `dev`:

```bash
git diff main..dev
```

Compare a feature branch with `dev`:

```bash
git diff dev..feature/system-info
```

Current documentation branch:

```bash
git diff dev..feature/v1.0.1-documentation
```

---

# 49. View Commits Between Branches

```bash
git log dev..feature/v1.0.1-documentation --oneline
```

This shows commits that exist on the feature branch but not yet on `dev`.

---

# 50. Check Whether a Branch Has Been Merged

```bash
git branch --merged
```

View branches not yet merged:

```bash
git branch --no-merged
```

---

# 51. Check Which Branches Contain a Commit

```bash
git branch --contains <commit-id>
```

This can help determine whether a specific commit has already reached another branch.

---

# 52. Check the Difference Before Creating a Pull Request

Before opening a PR from the current documentation branch:

```bash
git diff dev..feature/v1.0.1-documentation
```

View only the commits:

```bash
git log dev..feature/v1.0.1-documentation --oneline
```

---

# 53. Current Documentation Commit Flow

For the `v1.0.1` documentation update:

```bash
git add CHANGELOG.md
git commit -m "docs: document v1.0.1 release"
```

```bash
git add docs/branching-strategy.md
git commit -m "docs: update branching strategy for v1.0.1"
```

For this file:

```bash
git add docs/git-commands.md
git commit -m "docs: update Git command reference for v1.0.1"
```

---

# 54. Push the Current Documentation Branch

After all required files have been updated:

```bash
git push -u origin feature/v1.0.1-documentation
```

If upstream is already configured:

```bash
git push
```

---

# 55. Pull Request for v1.0.1 Documentation

Create:

```text
base: dev
compare: feature/v1.0.1-documentation
```

Suggested title:

```text
docs: update project documentation for v1.0.1
```

Include:

```text
Closes #7
```

in the Pull Request description.

Workflow:

```text
feature/v1.0.1-documentation
              ↓
         Pull Request
              ↓
             dev
```

---

# 56. Promote Updated Documentation to Main

After the documentation branch has been merged into `dev`, the integrated documentation can later be promoted using:

```text
base: main
compare: dev
```

Workflow:

```text
feature/v1.0.1-documentation
              ↓
             dev
              ↓
         Pull Request
              ↓
             main
```

This updates the documentation describing the existing `v1.0.1` release.

It does not require moving or recreating the `v1.0.1` tag.

---

# 57. Complete Project Version-Control Workflow

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
```

---

# 58. Release History

| Version | Description |
|---|---|
| `v1.0.0` | First stable release |
| `v1.0.1` | Documentation and README finalization |

The latest release currently documented by the project is:

```text
v1.0.1
```

---

# 59. Most Frequently Used Commands

```bash
git status

git branch
git branch -a
git branch --show-current

git switch main
git switch dev
git switch feature/v1.0.1-documentation

git add <file>
git add .

git commit -m "message"

git push
git pull
git fetch --all

git log --oneline
git log --oneline --graph --decorate --all

git diff
git diff --staged

git stash
git stash list
git stash pop

git tag
git tag -n
git show v1.0.1
```

---

# 60. Git Best Practices Demonstrated

This project demonstrates the following Git and GitHub practices:

- Keep `main` stable
- Use `dev` as the integration branch
- Create task-specific feature branches
- Create features from the latest `dev`
- Write meaningful commit messages
- Keep commits focused
- Push feature branches to GitHub
- Use Pull Requests instead of direct important-branch changes
- Use GitHub Issues to track work
- Link Issues and Pull Requests
- Use `.gitignore`
- Avoid committing secrets
- Use Git tags for stable releases
- Treat published release tags as stable historical references
- Maintain Markdown documentation
- Keep release history documented
- Remove obsolete feature branches after merging

---

# Conclusion

This project demonstrates a structured version-control workflow using:

```text
Git
GitHub
Branches
Commits
Pull Requests
GitHub Issues
Git Tags
.gitignore
Markdown Documentation
```

The primary workflow is:

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

The project currently documents two release tags:

```text
v1.0.0
v1.0.1
```

The latest release is:

```text
v1.0.1
```

with the release message:

```text
Documentation and README finalization
```

The remaining documentation alignment is tracked through:

```text
Issue #7
```

and:

```text
feature/v1.0.1-documentation
```
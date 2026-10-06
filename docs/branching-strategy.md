# Git Branching Strategy

This document explains the branching strategy used in the **DevOps Git Workflow Project**.

The purpose of this strategy is to keep the `main` branch stable while allowing development and feature work to happen independently.

---

## Branch Structure

This project uses three types of branches:

```text
main
  
  
 dev
  
  
feature/*
```

The branches used in this project are:

```text
main
dev
feature/system-info
feature/documentation
```

---

## 1. Main Branch

The `main` branch contains the stable and release-ready version of the project.

Changes should not normally be developed directly on `main`.

Changes reach `main` only after they have first been tested and merged into the `dev` branch.

Example:

```text
dev
 
Pull Request
 
main
```

The `main` branch is also used for release tagging.

Example release tag:

```text
v1.0.0
```

---

## 2. Dev Branch

The `dev` branch acts as the integration branch.

Completed features are first merged into `dev` through Pull Requests.

This allows changes to be reviewed and combined before they are promoted to `main`.

Example:

```text
feature/system-info
        
   Pull Request
        
       dev
```

After the changes in `dev` are ready, another Pull Request is created:

```text
dev
 
Pull Request
 
main
```

---

## 3. Feature Branches

Feature branches are created from the `dev` branch.

Each feature branch should focus on one specific task or change.

The naming format used in this project is:

```text
feature/<feature-name>
```

Examples:

```text
feature/system-info
feature/documentation
```

Feature branches allow development work to happen without directly modifying the stable branches.

---

## Feature Development Workflow

The general feature workflow is:

```text
dev
 
Create feature branch
 
Make changes
 
Stage changes
 
Commit changes
 
Push feature branch
 
Create Pull Request
 
Merge feature into dev
```

Example:

```text
dev
 
feature/system-info
 
Add system-info.sh
 
Commit changes
 
Push branch
 
Pull Request
 
dev
```

---

## Pull Request Workflow

Pull Requests are used instead of directly merging changes into important branches.

### Feature to Dev

For a completed feature:

```text
base: dev
compare: feature/system-info
```

This means:

```text
Take changes FROM feature/system-info
              
Merge changes INTO dev
```

---

### Dev to Main

After features have been integrated into `dev`:

```text
base: main
compare: dev
```

This means:

```text
Take changes FROM dev
              
Merge changes INTO main
```

---

## Workflow Used in This Project

The first feature implemented in this project was the system information script.

The workflow was:

```text
main
 
  dev
      
       feature/system-info
```

The feature was then merged using Pull Requests:

```text
feature/system-info
        
   Pull Request
        
       dev
        
   Pull Request
        
       main
```

After the stable changes were merged into `main`, the first release tag was created:

```text
v1.0.0
```

The complete workflow therefore became:

```text
feature/system-info
        
       dev
        
       main
        
     v1.0.0
```

---

## Documentation Feature Workflow

Documentation improvements are also developed using a feature branch.

For example:

```text
dev
 
feature/documentation
 
Add or update Markdown documentation
 
Commit
 
Push
 
Pull Request
 
dev
```

This follows the same workflow used for application or script changes.

---

## Branching Rules

The following rules are followed in this project:

1. Do not develop new features directly on `main`.
2. Create feature branches from `dev`.
3. Keep each feature branch focused on one task.
4. Use meaningful branch names.
5. Make clear and meaningful commits.
6. Push the feature branch to GitHub.
7. Use Pull Requests to merge features into `dev`.
8. Use a Pull Request to promote `dev` into `main`.
9. Tag stable releases on `main`.
10. Delete old feature branches when they are no longer required.

---

## Commit Message Examples

Meaningful commit messages are used throughout the project.

Examples:

```text
docs: add initial project README
chore: add project gitignore
docs: add project changelog
feat: add system information script
chore: make system info script executable
docs: document Git branching strategy
```

These messages make the Git history easier to understand.

---

## Benefits of This Branching Strategy

This workflow provides several advantages:

- Keeps `main` stable
- Separates development work from stable code
- Makes feature development easier to track
- Encourages code review through Pull Requests
- Creates a clear Git history
- Supports release tagging
- Reduces the risk of accidental changes to `main`
- Reflects a common version-control workflow used in DevOps projects

---

## Final Branch Flow

```text
                 feature/system-info
                         
                         
                        dev
                         
                         
                        main
                         
                         
                      v1.0.0


                 feature/documentation
                         
                         
                        dev
```

---

## Conclusion

This project demonstrates a structured Git workflow using `main`, `dev`, and `feature/*` branches.

By combining feature branches, meaningful commits, Pull Requests, and release tags, the repository maintains a clear and organized version-control history.

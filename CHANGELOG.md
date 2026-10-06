# Changelog

All notable changes to this project will be documented in this file.

---

## [Unreleased]

### Added

- Added detailed Git branching strategy documentation
- Added Git command reference documentation
- Documented the `main`, `dev`, and `feature/*` branching workflow
- Documented Pull Request workflow
- Documented commonly used Git commands
- Added merge, rebase, stash, tagging, and conflict-resolution references

---

## [1.0.0]

### Added

- Initial project structure
- Initial README documentation
- `.gitignore` configuration
- System information Bash script
- `main` branch
- `dev` integration branch
- `feature/system-info` feature branch
- Feature-to-dev Pull Request workflow
- Dev-to-main Pull Request workflow

### Release

- Created the first stable release
- Added Git tag:

```text
v1.0.0
```

### Git Workflow

The first feature followed this workflow:

```text
feature/system-info
        
   Pull Request
        
       dev
        
   Pull Request
        
       main
        
     v1.0.0
```

---

## Versioning

This project uses Git tags to identify stable releases.

Current stable release:

```text
v1.0.0
```

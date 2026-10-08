# Changelog

All notable changes to this project will be documented in this file.

---

## [Unreleased]

### Planned

- Continue improving project documentation
- Add more Git workflow examples
- Add additional DevOps practice scenarios

---

## [1.0.1] - Documentation and README Finalization

### Added

- Finalized the project `README.md`
- Added project architecture/workflow image
- Added additional project evidence
- Added detailed branching strategy documentation
- Added Git command reference documentation
- Added documentation for the complete Git workflow
- Added release information for `v1.0.1`

### Updated

- Updated project documentation to reflect the final repository structure
- Updated Git workflow documentation
- Updated release-tag information
- Updated project evidence references
- Updated documentation for:
  - `feature/system-info`
  - `feature/documentation`
  - `feature/readme-finalization`

### Git Workflow

The README finalization followed this workflow:

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

### Release

Release tag:

```text
v1.0.1
```

Release message:

```text
Documentation and README finalization
```

Related GitHub Issue:

```text
#7 - docs: update project documentation for v1.0.1 release with Additional Project Evidence
```

---

## [1.0.0] - First Stable Release

### Added

- Initial project structure
- Initial `README.md`
- `.gitignore`
- `CHANGELOG.md`
- Linux system information Bash script
- `main` branch
- `dev` integration branch
- `feature/system-info` branch
- Pull Request workflow
- Git release tagging

### Git Workflow

The first feature followed this workflow:

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

### Release

Release tag:

```text
v1.0.0
```

Release message:

```text
First stable release
```

---

## Version History

```text
v1.0.0
First stable release

v1.0.1
Documentation and README finalization
```
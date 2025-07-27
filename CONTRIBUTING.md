# Contributing to Get Resilient Public IP

We welcome contributions to this project! Whether it's bug reports, new features, documentation improvements, or anything else, your help is appreciated. This document outlines the process for contributing using our Git Flow branching strategy and our changelog automation via [`gitchangelog`](https://github.com/cbdq-io/gitchangelog).

---

## 📘 Project Standards

* **Branching strategy**: We use [Git Flow](https://nvie.com/posts/a-successful-git-branching-model/) for structured development.
* **Changelog automation**: Commit messages must follow a consistent format for `gitchangelog` to generate structured release notes.
* **Code style**: Keep shell code POSIX-compliant and scripts simple, portable, and testable.

---

## 📆 Development Workflow

### 1. Fork the Repository

Create a personal fork of the repository on GitHub.

### 2. Clone and Setup

```bash
git clone git@github.com:your-username/github-action-get-public-ip.git
cd github-action-get-public-ip
git flow init -d
```

### 3. Start a Feature Branch

```bash
git flow feature start your-feature-name
```

> Use `feature/`, `bugfix/`, or `hotfix/` as appropriate. Keep branch names lowercase and hyphenated.

### 4. Make Your Changes

* Modify files under `action.yaml`, `.github/workflows`, or `README.md`
* Add/update tests in `.github/workflows/test.yaml`

### 5. Commit Using Conventional Format

```bash
git add .
git commit -m "feature: add support for custom IP sources via input"
```

**Examples**:

* `fix: correct IP regex for strict parsing`
* `feature: allow fallback retries to be configured`
* `docs: update usage section in README`

These follow a format suitable for [`gitchangelog`](https://github.com/cbdq-io/gitchangelog).

### 6. Finish the Feature

```bash
git flow feature finish your-feature-name
```

This merges the feature into `develop`.

---

## 🌟 Releases

Releases are managed via Git Flow:

```bash
git flow release start v1.1.0
# Optional: update README or version info
./generate_changelog.sh > CHANGELOG.md
# Commit changelog and finalize
git commit -am "chore: prepare release v1.1.0"
git flow release finish v1.1.0
```

This will merge into `main` and tag the release.

---

## 🔧 Testing

All PRs and merges to `develop` or `main` automatically trigger the CI workflow defined in `.github/workflows/test.yaml`.

Please ensure your changes:

* Run successfully in CI
* Don’t break existing functionality

---

## 🌐 Publishing

To publish to the GitHub Marketplace:

* Ensure the `action.yaml` is in the root directory
* Push to `main` and create a GitHub release or tag (e.g., `v1.1.0`)
* Go to the repo homepage and select **Publish to Marketplace**

---

## 📬 Questions or Issues?

Please open an issue or discussion on the [GitHub repo](https://github.com/cbdq-io/github-action-get-public-ip).

We welcome feedback, improvements, and ideas!


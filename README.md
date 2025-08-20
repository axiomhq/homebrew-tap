# Homebrew Casks and Formulas

> Homebrew Casks and Formulas for Axiom, Inc. open source projects.

[![Brew Workflow][workflow_badge]][workflow]

---

## Table of Contents

1. [Introduction](#introduction)
1. [Usage](#usage)
1. [Contributing](#contributing)
1. [License](#license)

## Introduction

This repository is a collection of Homebrew Casks and Formulas for some of the
Axiom, Inc. open source projects, a so called [Tap][1].

[1]: https://docs.brew.sh/Taps

## Usage

There are two ways to use the Casks and Formulas in this repository.

### Tap installation

Install the tap first and install the Cask or Formula like any other core
Cask or Formula.

```shell
brew tap axiomhq/tap
brew install --cask <cask>
# or
brew install <formula>
```

### Direct installation

Directly install the Cask or Formula from the tap before installing the tap
first.

```shell
brew install --cask axiomhq/tap/<cask>
brew install axiomhq/tap/<formula>
```

## Contributing

Casks and Formulas are mostly auto-committed to this repository. If you find any
issues, please fill an issue in the upstream repository.

## License

&copy; Axiom, Inc., 2023

Casks and Formulas are licensed individually, depending on the license their
upstream repository declares.

<!-- Badges -->

[workflow]: https://github.com/axiomhq/homebrew-tap/actions/workflows/brew.yaml
[workflow_badge]: https://img.shields.io/github/actions/workflow/status/axiomhq/homebrew-tap/brew.yaml?branch=main&ghcache=unused

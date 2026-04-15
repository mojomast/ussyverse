# 🏗️ Ussyverse Architecture

> _How 84 projects live together in harmony (mostly)_

---

## 📖 Overview

The **Ussyverse** is a git monorepo that aggregates 84 independent projects under a single roof. Each project is a **git submodule** — a full, standalone repository living at `github.com/mojomast/<project>` — linked into the monorepo for discoverability, cross-referencing, and collective documentation.

```
ussyverse/                         ← This repo (mojomast/ussyverse)
├── README.md
├── docs/
│   ├── ARCHITECTURE.md            ← You are here
│   ├── CONTRIBUTING.md
│   └── PROJECT_INDEX.md
├── add-project.sh                 ← Submodule bootstrap script
└── projects/                      ← All submodules live here
    ├── ai-agents/                 ← Category directories
    │   ├── Beatrice/              ← git submodule → mojomast/Beatrice
    │   ├── becomussy/             ← git submodule → mojomast/becomussy
    │   └── ...
    ├── chat-bots/
    │   ├── Tchaikovskussy/
    │   └── ...
    ├── code-analysis/
    ├── creative/
    ├── data-science/
    ├── dev-tools/
    ├── games/
    ├── infra/
    ├── media/
    ├── security/
    └── web-apps/
```

---

## 🤔 Why Git Submodules?

We chose git submodules over alternatives (monorepo tools, npm workspaces, etc.) for several reasons:

### ✅ Advantages

| Reason | Explanation |
|:-------|:------------|
| **🧩 Independence** | Each project keeps its own git history, branches, releases, and CI/CD. No cross-contamination. |
| **⏎ Selective Clone** | Contributors only need to clone the projects they work on. No need to download all 84 repos. |
| **🏷️ Per-Project Releases** | Semantic versioning, GitHub Releases, and tags work per-project, not per-monorepo. |
| **👥 Access Control** | Private projects (like `mcpussy`) stay private while being indexed in the public monorepo. |
| **🔧 Tech Stack Freedom** | Python, Go, TypeScript, PowerShell, C#, Shell — each project uses whatever it needs. No shared build system required. |
| **📊 Discoverability** | The monorepo acts as a catalog. Browse by category, see descriptions, find related projects. |

### ⚠️ Trade-offs

| Challenge | Mitigation |
|:----------|:-----------|
| **Submodule drift** | The `add-project.sh` script pins to `main` branch. Run `git submodule update --remote` to sync. |
| **Extra git commands** | Documented in README. Most operations are standard submodule workflows. |
| **No atomic cross-project commits** | By design. Projects are independent. Cross-project changes use individual PRs. |

---

## 🗂️ Category System

Projects are organized into **11 categories** under `projects/`:

```
projects/
├── ai-agents/       🤖  16 projects — autonomous agents, MCP servers, AI toolbelts
├── chat-bots/       💬   8 projects — Discord bots, chat interfaces, translation
├── code-analysis/   🔬  13 projects — static analysis, forensics, visualization
├── creative/        🎨   8 projects — art, music, proxies, generators
├── data-science/    📈   6 projects — data pipelines, stats, visualization
├── dev-tools/       🛠️  14 projects — build tools, environments, orchestrators
├── games/           🎮   6 projects — MUDs, roguelikes, simulators
├── infra/           🏗️   4 projects — dashboards, terminals, family tools
├── media/           🎬   2 projects — content pipelines, series packages
├── security/        🔒   4 projects — incident response, VM control, AI harness
└── web-apps/        🌐   3 projects — browsers, emulators, web tools
```

### Category Assignment Rules

1. **Primary function wins** — a tool that analyzes code goes in `code-analysis`, even if it has a web UI.
2. **When in doubt, `dev-tools`** — the catch-all for developer productivity tools.
3. **AI agents ≠ chat bots** — agents are autonomous; chat bots are interactive. If it runs without human input, it's an agent.
4. **Games are games** — even if they use AI. `rpg-dm-bot` is in games because its purpose is gaming, not chatting.
5. **Security is domain-specific** — tools designed for security operations, not general-purpose tools that happen to be secure.

### Adding a New Category

If you feel a new category is needed (e.g., `blockchain`, `iot`):

1. Create a directory under `projects/`
2. Add it to `categories.json`
3. Update the README category table and stats
4. Submit a PR with your reasoning

---

## 🔗 Submodule Configuration

Each submodule is configured in `.gitmodules` with these defaults:

```ini
[submodule "projects/<category>/<name>"]
    path = projects/<category>/<name>
    url = https://github.com/mojomast/<name>.git
    branch = main
```

### Key Properties

| Property | Value | Reason |
|:---------|:------|:-------|
| **URL** | `https://github.com/mojomast/<name>.git` | Public HTTPS for broad access |
| **Branch** | `main` | Tracks the default branch |
| **Path** | `projects/<category>/<name>` | Category-scoped for organization |

---

## 🔄 Data Flow

```
┌─────────────────┐     ┌──────────────────┐     ┌─────────────────┐
│  Developer       │     │  ussyverse        │     │  Individual     │
│  Workstation     │     │  (monorepo)       │     │  Project Repos  │
│                  │     │                   │     │                 │
│  git clone       │────▶│  projects/        │────▶│  mojomast/*     │
│  --recursive     │     │  ├── ai-agents/   │     │  (84 repos)     │
│                  │     │  ├── chat-bots/   │     │                 │
│  git submodule   │◀────│  └── ...          │◀────│  push / PR      │
│  update --remote │     │  .gitmodules      │     │                 │
│                  │     │  README.md        │     │  CI/CD per repo │
└─────────────────┘     └──────────────────┘     └─────────────────┘
         │                       │
         │                       │
         ▼                       ▼
  Local development      Documentation hub
  & testing              & project catalog
```

### Workflow

1. **Clone** the monorepo (with or without `--recursive`)
2. **Navigate** to the project you want via `projects/<category>/<name>`
3. **Work** inside the submodule as if it were a standalone repo
4. **Push** changes to the individual project's remote
5. **Update** the monorepo's submodule reference with `git add projects/<category>/<name>` and commit

---

## 📐 Design Principles

1. **🌍 Convention over configuration** — Category directories, naming conventions, and the `add-project.sh` script keep things consistent without heavy tooling.
2. **🧱 Loose coupling** — Projects don't depend on each other at the code level. Shared utilities are duplicated or extracted into their own repos.
3. **📖 Documentation as code** — The README, PROJECT_INDEX, and architecture docs are versioned alongside the project list.
4. **🚀 Ship fast** — New projects are added with a single script. No approval gates, no shared CI bottleneck.
5. **🎉 Fun matters** — This is the Ussyverse. The naming convention is intentional. The vibe is real.

---

## 📊 Project Metadata

Project metadata is maintained in two JSON files:

- **`/tmp/our_projects.json`** — Full project data (name, language, description, URL, visibility)
- **`/tmp/categories.json`** — Category → project name mapping

These are the source of truth for generating documentation. When adding a project:

1. Add the repo to the `mojomast` org on GitHub
2. Run `add-project.sh <category> <name>`
3. Update the JSON files with the new project's metadata
4. Regenerate or manually update the README and PROJECT_INDEX

---

## 🔮 Future Considerations

- **CI/CD Monorepo Pipeline** — GitHub Actions that detect changed submodules and run per-project tests
- **Dependency Graph** — Auto-generated visualization of cross-project dependencies
- **Shared Secrets Management** — Centralized secrets for projects that share infrastructure
- **Nix Flakes** — Reproducible dev environments per project
- **Dashboard** — Live project health, commit activity, and release tracking

---

<div align="center">

_🏗️ Built on git submodules, maintained with love, powered by vibes._

[← Back to README](../README.md) · [🤝 Contributing →](CONTRIBUTING.md) · [📋 Project Index →](PROJECT_INDEX.md)

</div>

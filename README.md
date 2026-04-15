<p align="center">
<img src="https://raw.githubusercontent.com/mojomast/ussyverse/main/assets/ussyverse-banner.png" alt="Ussyverse" width="800"/>
</p>

```
 ██╗   ██╗██╗   ██╗███████╗███████╗██████╗  ██████╗ ████████╗██╗  ██╗
 ██║   ██║██║   ██║██╔════╝██╔════╝██╔══██╗██╔═══██╗╚══██╔══╝██║  ██║
 ██║   ██║██║   ██║███████╗█████╗  ██████╔╝██║   ██║   ██║   ███████║
 ██║   ██║██║   ██║╚════██║██╔══╝  ██╔══██╗██║   ██║   ██║   ██╔══██║
 ╚██████╔╝╚██████╔╝███████║███████╗██║  ██║╚██████╔╝   ██║   ██║  ██║
  ╚═════╝  ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚═╝  ╚═╝
                        🌌 THE MONOREPO 🌌
```

<div align="center">

[![Project Count](https://img.shields.io/badge/projects-84-blueviolet?style=for-the-badge&logo=github)](https://github.com/mojomast/ussyverse)
[![Categories](https://img.shields.io/badge/categories-11-ff69b4?style=for-the-badge&logo=layered)]()
[![Languages](https://img.shields.io/badge/languages-10-00d4aa?style=for-the-badge&logo=code)]()
[![Org](https://img.shields.io/badge/org-mojomast-181717?style=for-the-badge&logo=github)](https://github.com/mojomast)
[![License](https://img.shields.io/badge/license-open-success?style=for-the-badge)]()

**84 projects. 11 categories. One universe.** 🚀

_The Ussyverse is a sprawling monorepo of experimental, production, and just-plain-fun projects — all unified under one roof._

[📖 Architecture](docs/ARCHITECTURE.md) · [🤝 Contributing](docs/CONTRIBUTING.md) · [📋 Project Index](docs/PROJECT_INDEX.md)

</div>

---

## 📑 Table of Contents

- [📊 Project Stats](#-project-stats)
- [🗂️ Category Overview](#-category-overview)
- [🏗️ Architecture](#-architecture)
- [🤖 AI Agents](#-ai-agents)
- [💬 Chat Bots](#-chat-bots)
- [🔬 Code Analysis](#-code-analysis)
- [🎨 Creative](#-creative)
- [📈 Data Science](#-data-science)
- [🛠️ Dev Tools](#-dev-tools)
- [🎮 Games](#-games)
- [🏗️ Infra](#-infra)
- [🎬 Media](#-media)
- [🔒 Security](#-security)
- [🌐 Web Apps](#-web-apps)
- [🚀 Getting Started](#-getting-started)
- [🗺️ Roadmap](#-roadmap)

---

## 📊 Project Stats

| Metric | Value |
|:-------|------:|
| 🗂️ Total Projects | **84** |
| 📂 Categories | **11** |
| 💻 Languages | **10** |
| 🐍 Python | 45 |
| 🔷 TypeScript | 16 |
| 🔵 Go | 9 |
| 🟡 JavaScript | 5 |
| 🟠 HTML | 3 |
| ⚡ PowerShell | 2 |
| 🐚 Shell | 1 |
| 🟣 Svelte | 1 |
| 🎮 C# | 1 |
| 📄 Other | 1 |
| 🏠 GitHub Org | [mojomast](https://github.com/mojomast) |

---

## 🗂️ Category Overview

```
 🤖 ai-agents      ████████████████████████████░░░░  16 projects
 🛠️ dev-tools      ██████████████████████████░░░░░░  14 projects
 🔬 code-analysis  ████████████████████████░░░░░░░░  13 projects
 💬 chat-bots      ███████████████░░░░░░░░░░░░░░░░░   8 projects
 🎨 creative       ███████████████░░░░░░░░░░░░░░░░░   8 projects
 📈 data-science   ███████████░░░░░░░░░░░░░░░░░░░░░   6 projects
 🎮 games          ███████████░░░░░░░░░░░░░░░░░░░░░   6 projects
 🏗️ infra          ████████░░░░░░░░░░░░░░░░░░░░░░░░   4 projects
 🔒 security       ████████░░░░░░░░░░░░░░░░░░░░░░░░   4 projects
 🌐 web-apps       ██████░░░░░░░░░░░░░░░░░░░░░░░░░░   3 projects
 🎬 media          ████░░░░░░░░░░░░░░░░░░░░░░░░░░░░   2 projects
```

---

## 🏗️ Architecture

```
                    ┌─────────────────────────────────┐
                    │         🌌 USSYVERSE            │
                    │      (mojomast/ussyverse)        │
                    │       Git Monorepo Root          │
                    └────────────┬────────────────────┘
                                 │
                    ┌────────────┴────────────────────┐
                    │       📂 projects/               │
                    │    (git submodules root)         │
                    └────────────┬────────────────────┘
                                 │
          ┌──────────┬──────────┼──────────┬──────────┬──────────┐
          │          │          │          │          │          │
    ┌─────┴─────┐┌───┴───┐┌────┴────┐┌────┴────┐┌────┴────┐┌───┴────┐
    │ai-agents  ││chat-  ││code-    ││creative ││data-    ││dev-    │
    │  (16) 🤖 ││bots   ││analysis ││  (8) 🎨 ││science  ││tools   │
    │           ││ (8) 💬││ (13) 🔬 ││         ││ (6) 📈 ││(14) 🛠️│
    └─────┬─────┘└───┬───┘└────┬────┘└────┬────┘└────┬────┘└───┬────┘
          │          │          │          │          │          │
    ┌─────┴────┐ ┌───┴───┐ ┌───┴───┐ ┌───┴───┐ ┌───┴───┐
    │ games    │ │ infra │ │ media │ │security│ │web-apps│
    │  (6) 🎮  │ │(4) 🏗️ │ │(2) 🎬 │ │ (4) 🔒 │ │(3) 🌐 │
    └──────────┘ └───────┘ └───────┘ └───────┘ └───────┘

    Each project = git submodule → https://github.com/mojomast/<project>
```

📖 **Full architecture docs:** [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md)

---

## 🤖 AI Agents

> _16 projects — the brain trust of the Ussyverse_ 🧠✨

| Project | Lang | Description | Link |
|:--------|:----:|:------------|:-----|
| **Beatrice** | 🐍 Python | IRC-aware OpenRouter bot with safe web fetch, typed memory, profiles, and admin-gated autonomous runtime changes | [→ GitHub](https://github.com/mojomast/Beatrice) |
| **becomussy** | 🐍 Python | Governed continuity system for agent self-development — persistent memory, reflection journals, versioned self-model with semantic diffing | [→ GitHub](https://github.com/mojomast/becomussy) |
| **clanker01** | 🔵 Go | SWARM: Multi-Agent AI Coding Platform — fully built by GLM-4.7 | [→ GitHub](https://github.com/mojomast/clanker01) |
| **clanker02** | 🔷 TypeScript | Knexus — Privacy-first, context-aware knowledge assistant | [→ GitHub](https://github.com/mojomast/clanker02) |
| **clanker03** | 🔷 TypeScript | AgentReplay — Time-travel debugger for AI agents. Record, replay, step through decision chains | [→ GitHub](https://github.com/mojomast/clanker03) |
| **clanker04** | 🔵 Go | ParallelForge — Git worktree agent orchestrator. Spawn parallel AI agents, compare solutions, merge the best | [→ GitHub](https://github.com/mojomast/clanker04) |
| **clanker06** | 📄 — | ProductMind — AI-Native Product Management Agent. Transforms feedback into structured PRDs | [→ GitHub](https://github.com/mojomast/clanker06) |
| **clanker07** | 🟣 Svelte | AuthBot — AI-Powered Prior Authorization Automation. Reduces prior auth from hours to minutes | [→ GitHub](https://github.com/mojomast/clanker07) |
| **devussy** | 🐍 Python | Interview → DevPlan. Multi-stage AI planning pipeline with live progress. Circular development go brrrrrr! 🔄 | [→ GitHub](https://github.com/mojomast/devussy) |
| **hermes-agent** | 🐍 Python | The agent that grows with you 🌱 | [→ GitHub](https://github.com/mojomast/hermes-agent) |
| **mcpussy** | 🔷 TypeScript | 🐱 MCP Server Generator — wrap any HTTP API into a Model Context Protocol server with a single command | [→ GitHub](https://github.com/mojomast/mcpussy) |
| **ralphussy** | 🐚 Shell | The Autonomous AI Coding Toolbelt (CLI + TUI + Swarm) | [→ GitHub](https://github.com/mojomast/ralphussy) |
| **roguelitussy** | 🎮 C# | Deterministic Godot 4.4 roguelike engine with shared contracts & content schemas | [→ GitHub](https://github.com/mojomast/roguelitussy) |
| **swarmussy** | 🐍 Python | Experimental multi-agent orchestration framework for collaborative software development | [→ GitHub](https://github.com/mojomast/swarmussy) |
| **uberclawcontrol** | 🟠 HTML | Open source mission control for your OpenClaw agents 🦞 | [→ GitHub](https://github.com/mojomast/uberclawcontrol) |
| **ussycode** | 🔵 Go | Self-hosted dev environment platform. Instant SSH-accessible microVMs with persistent disks & AI agent support | [→ GitHub](https://github.com/mojomast/ussycode) |

---

## 💬 Chat Bots

> _8 projects — talking to humans since 2025_ 🗣️💬

| Project | Lang | Description | Link |
|:--------|:----:|:------------|:-----|
| **Tchaikovskussy** | 🐍 Python | Communication-first multilingual chat with BabelFish-style per-user translation & shared caching | [→ GitHub](https://github.com/mojomast/Tchaikovskussy) |
| **botmanagussy** | 🐍 Python | Bot management for the Ussyverse | [→ GitHub](https://github.com/mojomast/botmanagussy) |
| **diffusionchatussy** | 🔷 TypeScript | Chat where every message is tone-rewritten by an LLM. Watch text resolve from noise via Mercury 2 diffusion 🌊 | [→ GitHub](https://github.com/mojomast/diffusionchatussy) |
| **gemini-nano-banana-discord-bot** | 🐍 Python | Discord bot that generates, edits, and blends images via Gemini Nano Banana 🍌 | [→ GitHub](https://github.com/mojomast/gemini-nano-banana-discord-bot) |
| **ragussy** | 🔷 TypeScript | Universal RAG chatbot with full management UI. Point at your markdown docs and get AI-powered Q&A | [→ GitHub](https://github.com/mojomast/ragussy) |
| **ussybot** | 🐍 Python | Ussyverse Discord 'Project of the Week' first weekend project — BRRR Bot 🤖 | [→ GitHub](https://github.com/mojomast/ussybot) |
| **ussyring** | 🐍 Python | Simple webring API and embeddable widget. Join the ussy.host + lesbianguide.de webring! 🔄 | [→ GitHub](https://github.com/mojomast/ussyring) |
| **xcancelussybot** | 🟡 JavaScript | 🚀 Discord bot that auto-converts x.com links to xcancel.com | [→ GitHub](https://github.com/mojomast/xcancelussybot) |

---

## 🔬 Code Analysis

> _13 projects — x-raying your codebase since 2026_ 🔍🧬

| Project | Lang | Description | Link |
|:--------|:----:|:------------|:-----|
| **alembicussy** | 🐍 Python | ⚗️ ALEMBIC — Fractional Distillation Tower Puzzle. Separate mixtures using real boiling point physics | [→ GitHub](https://github.com/mojomast/alembicussy) |
| **churnmap** | 🐍 Python | 🗺️ Territory map visualization of git co-change analysis — see your codebase as a game map | [→ GitHub](https://github.com/mojomast/churnmap) |
| **kintsugiussy** | 🐍 Python | Annotate bug repair sites as structured golden joints — queryable, testable markers. Code stronger at the scars ✨ | [→ GitHub](https://github.com/mojomast/kintsugiussy) |
| **kompressiussy** | 🐍 Python | Algorithmic code complexity analysis using compression — NCD similarity, UPGMA clustering, entropy density ranking | [→ GitHub](https://github.com/mojomast/kompressiussy) |
| **morsethussy** | 🐍 Python | Topological invariants of code structure via persistent homology. Betti numbers reveal circular deps & missing abstractions | [→ GitHub](https://github.com/mojomast/morsethussy) |
| **snapshotussy** | 🐍 Python | 📸 Freeze and thaw your entire dev state: terminals, files, processes, environment, and mental context notes | [→ GitHub](https://github.com/mojomast/snapshotussy) |
| **stenography** | 🐍 Python | 🔍 Steganography scanner for source code — detects invisible Unicode attacks (zero-width chars, BiDi overrides, homoglyphs) | [→ GitHub](https://github.com/mojomast/stenography) |
| **strudelussy** | 🔷 TypeScript | 🎵 AI-powered Strudel music DAW dashboard — chat to compose, iterate, and control your music | [→ GitHub](https://github.com/mojomast/strudelussy) |
| **tellussy** | 🐍 Python | 🏛️ TELL — The Mound: Builder & Excavator. Build a settlement, then excavate your own ruins | [→ GitHub](https://github.com/mojomast/tellussy) |
| **topussy** | 🔷 TypeScript | btop-style OpenTUI monitor with multi-host remote mode, process tree, signals, and Linux metrics | [→ GitHub](https://github.com/mojomast/topussy) |
| **unconformity** | 🐍 Python | 🕳️ Git forensics for what's MISSING — gaps, force-pushes, squash merges, deleted branches, rebases | [→ GitHub](https://github.com/mojomast/unconformity) |
| **ussycodeproxy** | 🟠 HTML | ussyco.de webring API + automatic subdomain provisioning service | [→ GitHub](https://github.com/mojomast/ussycodeproxy) |
| **voltronussy** | 🔷 TypeScript | Tiny ECS game engine for friends to build games together. Your game is your sandbox! 🦁 | [→ GitHub](https://github.com/mojomast/voltronussy) |

---

## 🎨 Creative

> _8 projects — where art meets code_ 🖌️🎭

| Project | Lang | Description | Link |
|:--------|:----:|:------------|:-----|
| **365cspadminussy** | ⚡ PowerShell | Comprehensive PowerShell toolkit for Microsoft CSP partners to administer & audit customer tenants via GDAP | [→ GitHub](https://github.com/mojomast/365cspadminussy) |
| **ArtistSiteussy** | 🔷 TypeScript | Production-ready Next.js 14 website template for contemporary artists — bilingual, portfolio, Stripe shop, admin panel | [→ GitHub](https://github.com/mojomast/ArtistSiteussy) |
| **driftlineussy** | 🐍 Python | 🌊 DRIFTLINE — Archipelago Adaptive Radiation Roguelike. Manage a phylogenetic tree across islands | [→ GitHub](https://github.com/mojomast/driftlineussy) |
| **fruityboofs** | 🟡 JavaScript | Browser-based vocal synth DAW built around Paul Batchelor's WASM engines. Step sequencer, transport, MIDI 🎤 | [→ GitHub](https://github.com/mojomast/fruityboofs) |
| **inkblotussy** | 🐍 Python | Inkblot patterns & creative generation | [→ GitHub](https://github.com/mojomast/inkblotussy) |
| **llmproxy** | 🐍 Python | Universal LLM Gateway: One API, every LLM. OpenAI/Anthropic-compatible endpoints with intelligent load-balancing | [→ GitHub](https://github.com/mojomast/llmproxy) |
| **partymemberbotussy** | 🐍 Python | Party member management bot | [→ GitHub](https://github.com/mojomast/partymemberbotussy) |
| **tarotussy** | 🐍 Python | Tarot card readings, computationally speaking 🔮 | [→ GitHub](https://github.com/mojomast/tarotussy) |

---

## 📈 Data Science

> _6 projects — data goes in, insights come out_ 📊🧪

| Project | Lang | Description | Link |
|:--------|:----:|:------------|:-----|
| **bananagen** | 🐍 Python | CLI tool for generating image assets using Gemini 2.5 Flash 🍌 | [→ GitHub](https://github.com/mojomast/bananagen) |
| **broipussy** | 🔷 TypeScript | BROIP Simulator: Bong Rip Over IP Protocol — distributed inhalation technology 🌬️ | [→ GitHub](https://github.com/mojomast/broipussy) |
| **endemicussy** | 🐍 Python | Endemic species data analysis | [→ GitHub](https://github.com/mojomast/endemicussy) |
| **ghstatsussy** | 🐍 Python | CLI-first GitHub activity infographic generator with polished self-contained HTML reports | [→ GitHub](https://github.com/mojomast/ghstatsussy) |
| **petrichorussy** | 🐍 Python | Data science toolkit | [→ GitHub](https://github.com/mojomast/petrichorussy) |
| **stemmaussy** | 🐍 Python | Phylogenetic & stemma analysis tools | [→ GitHub](https://github.com/mojomast/stemmaussy) |

---

## 🛠️ Dev Tools

> _14 projects — the workbench of the Ussyverse_ 🔧⚙️

| Project | Lang | Description | Link |
|:--------|:----:|:------------|:-----|
| **BackupUSSY** | 🐍 Python | 🚧 Comprehensive LTO tape archive solution for Windows. Enterprise-grade reliability for archival backups | [→ GitHub](https://github.com/mojomast/BackupUSSY) |
| **assayussy** | 🐍 Python | Code assay & analysis toolkit | [→ GitHub](https://github.com/mojomast/assayussy) |
| **blinkslice** | 🐍 Python | Time-slice development tool | [→ GitHub](https://github.com/mojomast/blinkslice) |
| **crystallossy** | 🐍 Python | Crystallographic dev tooling | [→ GitHub](https://github.com/mojomast/crystallossy) |
| **designussy** | 🐍 Python | Design system utilities | [→ GitHub](https://github.com/mojomast/designussy) |
| **fatigueussy** | 🐍 Python | Development fatigue analysis | [→ GitHub](https://github.com/mojomast/fatigueussy) |
| **geoffrussy** | 🔵 Go | Go 1.24 AI-driven software delivery orchestrator — interview → design → plan → review → develop. 16 AI providers 🚀 | [→ GitHub](https://github.com/mojomast/geoffrussy) |
| **reverseoracleussy** | 🐍 Python | Reverse oracle development tool | [→ GitHub](https://github.com/mojomast/reverseoracleussy) |
| **seralussy** | 🐍 Python | Serial development utilities | [→ GitHub](https://github.com/mojomast/seralussy) |
| **sigintussy** | 🔷 TypeScript | Signal intelligence for development | [→ GitHub](https://github.com/mojomast/sigintussy) |
| **stratagitussy** | 🐍 Python | Strategic git tooling | [→ GitHub](https://github.com/mojomast/stratagitussy) |
| **terrariumussy** | 🐍 Python | Terrarium-style development environment | [→ GitHub](https://github.com/mojomast/terrariumussy) |
| **timeloomussy** | 🐍 Python | Time weaving development tools | [→ GitHub](https://github.com/mojomast/timeloomussy) |
| **ussybiot** | 🐍 Python | Ussyverse BIOT toolkit | [→ GitHub](https://github.com/mojomast/ussybiot) |

---

## 🎮 Games

> _6 projects — because work should be play_ 🕹️🎲

| Project | Lang | Description | Link |
|:--------|:----:|:------------|:-----|
| **CONTAINERWARZ** | 🔷 TypeScript | Container warfare — battle of the pods ⚔️📦 | [→ GitHub](https://github.com/mojomast/CONTAINERWARZ) |
| **mudussy** | 🔷 TypeScript | Modular TypeScript/NestJS MUD engine with plugin architecture, real-time multiplayer (Socket.IO + Telnet) 🏰 | [→ GitHub](https://github.com/mojomast/mudussy) |
| **pawn-shop-pioneers** | 🟡 JavaScript | Idle/incremental game with crafting, pets, and biome exploration 🏪 | [→ GitHub](https://github.com/mojomast/pawn-shop-pioneers) |
| **rpg-dm-bot** | 🐍 Python | AI-powered Discord bot as Dungeon Master for tabletop RPG. Created by giving Claude a single prompt 🐉 | [→ GitHub](https://github.com/mojomast/rpg-dm-bot) |
| **scoreboardussy** | 🔷 TypeScript | Real-time web-based scoreboard for improv shows. React + Node.js + Express + Socket.IO 🎭 | [→ GitHub](https://github.com/mojomast/scoreboardussy) |
| **stallionussy** | 🔵 Go | STALLIONRUN — Comedy-first horse breeding, racing & genetics simulator. Live at horse.ussyco.de 🐴 | [→ GitHub](https://github.com/mojomast/stallionussy) |

---

## 🏗️ Infra

> _4 projects — keeping the lights on_ 💡🔌

| Project | Lang | Description | Link |
|:--------|:----:|:------------|:-----|
| **dashboardussy** | 🐍 Python | Flask-based VPS operations dashboard with movable widgets, network visibility, firewall posture & Fail2Ban | [→ GitHub](https://github.com/mojomast/dashboardussy) |
| **evenia-mudlet-llm** | 🐍 Python | Evenia MUD + Mudlet + LLM integration | [→ GitHub](https://github.com/mojomast/evenia-mudlet-llm) |
| **familydashboardussy** | 🔷 TypeScript | React + TypeScript family planning app — tasks, meals, grocery lists. Multi-user & mobile-first 👨‍👩‍👧‍👦 | [→ GitHub](https://github.com/mojomast/familydashboardussy) |
| **warpussy** | 🔵 Go | AI-enhanced terminal emulator with PTY management and AI integration 🖥️ | [→ GitHub](https://github.com/mojomast/warpussy) |

---

## 🎬 Media

> _2 projects — content pipelines & creative production_ 🎥📽️

| Project | Lang | Description | Link |
|:--------|:----:|:------------|:-----|
| **mediageckussy** | 🔷 TypeScript | Canon-first media package generator for TV, film, podcasts & web series with manifest-driven docs 🦎 | [→ GitHub](https://github.com/mojomast/mediageckussy) |
| **weouthere** | 🟠 HTML | Production-ready series package for WE OUT HERE — an indie dark sitcom / tech psychocomedy 📺 | [→ GitHub](https://github.com/mojomast/weouthere) |

---

## 🔒 Security

> _4 projects — defending the perimeter_ 🛡️🔐

| Project | Lang | Description | Link |
|:--------|:----:|:------------|:-----|
| **365compromisesleuth** | ⚡ PowerShell | Read-only M365 compromise evidence collection for incident response. Entra ID & Exchange Online forensic data 🔎 | [→ GitHub](https://github.com/mojomast/365compromisesleuth) |
| **fireslice** | 🔵 Go | Firecracker VM control plane for small operator-managed hosting. Split Docker-plus-host deployment 🔥 | [→ GitHub](https://github.com/mojomast/fireslice) |
| **openclawremoteussy** | 🔵 Go | Production-grade standalone OpenClaw remote gateway integration CLI/service 🦞 | [→ GitHub](https://github.com/mojomast/openclawremoteussy) |
| **openclawssy** | 🔵 Go | 🚧 Experimental AI harness/runtime — prototype in development, major rough edges | [→ GitHub](https://github.com/mojomast/openclawssy) |

---

## 🌐 Web Apps

> _3 projects — the internet, but ussier_ 🌍💫

| Project | Lang | Description | Link |
|:--------|:----:|:------------|:-----|
| **iMaCoMpUtERussy** | 🟡 JavaScript | The legendary 8-bit computer that never existed — interactive assembly, retro CRT graphics, programs hidden in YouTube videos 🖥️✨ | [→ GitHub](https://github.com/mojomast/iMaCoMpUtERussy) |
| **plan9webplumbussy** | 🐍 Python | Plan 9 from Bell Labs web plumber — plumbing the web the Plan 9 way 🔧 | [→ GitHub](https://github.com/mojomast/plan9webplumbussy) |
| **templeossy** | 🟡 JavaScript | Browser-hosted QEMU compiled to WebAssembly for 64-bit x86 guest operating systems 🏛️ | [→ GitHub](https://github.com/mojomast/templeossy) |

---

## 🚀 Getting Started

### Clone the entire Ussyverse

```bash
# Clone with all submodules (grab a coffee ☕ — this is 84 repos)
git clone --recursive https://github.com/mojomast/ussyverse.git

# Or clone first, then init submodules
git clone https://github.com/mojomast/ussyverse.git
cd ussyverse
git submodule update --init --recursive
```

### Clone just what you need

```bash
# Clone without submodules
git clone https://github.com/mojomast/ussyverse.git
cd ussyverse

# Init only one category
git submodule update --init projects/ai-agents

# Init a specific project
git submodule update --init projects/games/stallionussy
```

### Update all submodules

```bash
# Pull latest changes for every project
git submodule update --remote --recursive

# Or the shorthand
make update  # if you have the Makefile
```

### Add a new project

```bash
# Use the add-project script (see CONTRIBUTING.md for full details)
./add-project.sh <category> <project-name>

# Example
./add-project.sh ai-agents my-new-agent
```

📖 **Full contributing guide:** [docs/CONTRIBUTING.md](docs/CONTRIBUTING.md)

---

## 🗺️ Roadmap

- [ ] 🔮 Add CI/CD pipeline that runs across all 84 projects
- [ ] 📊 Automated project health dashboard
- [ ] 🤖 AI-powered project indexing & tagging
- [ ] 🌐 ussyco.de project showcase site
- [ ] 📦 Shared npm/PyPI package registry for Ussyverse utilities
- [ ] 🎯 100 projects milestone

---

<div align="center">

**Made with 🖤 by the [mojomast](https://github.com/mojomast) crew**

_The Ussyverse: where every project ends in "ussy" and every bug is a feature in waiting._

[⬆ Back to Top](#-ussyverse)

</div>

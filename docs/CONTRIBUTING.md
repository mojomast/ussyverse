# 🤝 Contributing to the Ussyverse

> _How to add projects, update docs, and keep the universe expanding_ 🌌

---

## 🚀 Quick Start: Adding a New Project

The fastest way to add a project to the Ussyverse:

```bash
# From the ussyverse root directory
./add-project.sh <category> <project-name>
```

### Example

```bash
# Add a new AI agent project
./add-project.sh ai-agents my-cool-agent

# Add a new game project
./add-project.sh games dungeon-crawlerussy
```

This will:
1. ✅ Create the `projects/<category>/<name>` directory
2. ✅ Initialize it as a git submodule pointing to `https://github.com/mojomast/<name>.git`
3. ✅ Update `.gitmodules` with the correct configuration
4. ✅ Stage the changes for commit

---

## 📋 Step-by-Step: Full Project Addition

### 1. 🏗️ Create the Repository on GitHub

```bash
# Create a new repo in the mojomast org
gh repo create mojomast/<project-name> --public --description "Your project description"
```

Or create it via the [GitHub web UI](https://github.com/organizations/mojomast/repositories/new).

### 2. 📥 Add as a Submodule

```bash
cd ~/ussyverse

# Run the add-project script
./add-project.sh <category> <project-name>

# Or manually:
git submodule add -b main \
  https://github.com/mojomast/<project-name>.git \
  projects/<category>/<project-name>
```

### 3. 📝 Update Project Metadata

Add your project to the metadata files:

**`/tmp/our_projects.json`** — Add an entry:
```json
{
  "name": "my-new-project",
  "language": "Python",
  "description": "A brief, punchy description of what it does",
  "created": "2026-04-15",
  "url": "https://github.com/mojomast/my-new-project",
  "private": false
}
```

**`/tmp/categories.json`** — Add the project name to the appropriate category array:
```json
{
  "ai-agents": [
    ...,
    "my-new-project"
  ]
}
```

### 4. 📖 Update Documentation

#### README.md
Add your project to the appropriate category table in `README.md`:

```markdown
| **my-new-project** | 🐍 Python | A brief, punchy description | [→ GitHub](https://github.com/mojomast/my-new-project) |
```

#### docs/PROJECT_INDEX.md
Add a detailed entry following the existing format.

### 5. ✅ Commit and Push

```bash
cd ~/ussyverse
git add .
git commit -m "feat: add my-new-project to <category>"
git push origin main
```

---

## 🛠️ The `add-project.sh` Script

### Usage

```bash
./add-project.sh <category> <project-name> [url]
```

### Arguments

| Argument | Required | Description |
|:---------|:--------:|:------------|
| `category` | ✅ | One of the 11 category directories (e.g., `ai-agents`, `games`) |
| `project-name` | ✅ | The GitHub repository name (e.g., `stallionussy`) |
| `url` | ❌ | Custom git URL. Defaults to `https://github.com/mojomast/<project-name>.git` |

### What It Does

```
1. 📂 Validates that the category exists under projects/
2. 🔍 Checks the project isn't already a submodule
3. 📥 Runs git submodule add with correct branch and path
4. ✅ Stages the changes for commit
```

### Valid Categories

| Category | Emoji | Description |
|:---------|:-----:|:------------|
| `ai-agents` | 🤖 | Autonomous AI agents, MCP servers, AI toolbelts |
| `chat-bots` | 💬 | Discord bots, chat interfaces, translation bots |
| `code-analysis` | 🔬 | Static analysis, forensics, code visualization |
| `creative` | 🎨 | Art, music, creative coding, proxies |
| `data-science` | 📈 | Data pipelines, stats, visualization |
| `dev-tools` | 🛠️ | Build tools, environments, orchestrators |
| `games` | 🎮 | MUDs, roguelikes, simulators, game engines |
| `infra` | 🏗️ | Dashboards, terminals, infrastructure |
| `media` | 🎬 | Content pipelines, series packages |
| `security` | 🔒 | Incident response, VM control, security tools |
| `web-apps` | 🌐 | Browsers, emulators, web tools |

---

## 📏 Naming Conventions

### The "Ussy" Suffix 🐱

Most projects in the Ussyverse end with `-ussy` or `ussy`. This is tradition, not law.

- ✅ **Recommended**: `my-projectussy`, `cool-toolussy`
- ✅ **Also fine**: `Beatrice`, `CONTAINERWARZ`, `fireslice` (projects with their own identity)
- ❌ **Avoid**: Inconsistent casing or special characters

### Case Conventions

| Style | Examples | When to Use |
|:------|:---------|:------------|
| `lowercaseussy` | `devussy`, `mudussy`, `stallionussy` | Most projects |
| `camelCaseussy` | `ArtistSiteussy`, `BackupUSSY` | When the name is compound |
| `ALLCAPS` | `CONTAINERWARZ` | When it's a GAME and you're LOUD |
| `kebab-case` | `pawn-shop-pioneers`, `rpg-dm-bot` | When the name reads better with hyphens |

---

## 🔄 Updating Submodules

### Pull latest for all projects

```bash
git submodule update --remote --recursive
```

### Pull latest for one project

```bash
cd projects/<category>/<name>
git pull origin main
cd ../../../  # back to ussyverse root
git add projects/<category>/<name>
git commit -m "chore: update <name> submodule"
```

### Fix a detached HEAD

Submodules are often in detached HEAD state. To work on a submodule:

```bash
cd projects/<category>/<name>
git checkout main
git pull origin main
# Now you can work normally
```

---

## 📝 Documentation Standards

### README Format

Each project should have its own `README.md` in its submodule repo. The monorepo `README.md` contains:

- **Brief description** — One line, informative, maybe funny
- **Language badge** — Use emoji: 🐍 Python, 🔷 TypeScript, 🔵 Go, etc.
- **GitHub link** — Always link to `mojomast/<name>`

### Description Guidelines

- **Be specific**: "CLI tool for X using Y" > "A tool for X"
- **Be fun**: "Circular development go brrrrrr!" is a valid description
- **Include stack**: Mention key technologies when relevant
- **Mark experiments**: Use 🚧 for projects in early development

---

## 🧪 Testing Your Changes

Before pushing to the monorepo:

```bash
# Verify all submodules are properly initialized
git submodule status

# Check for broken submodule references
git submodule foreach 'echo $path: $(git rev-parse HEAD)'

# Verify the category structure
ls -la projects/*/
```

---

## ❓ FAQ

### Q: Can I add a private project?
**A:** Yes! Set `private: true` in the metadata. The submodule reference will exist in the monorepo, but only people with access can clone it. Example: `mcpussy` 🔒

### Q: Can a project be in multiple categories?
**A:** No. Each project lives in exactly one category directory. Choose the one that best represents its **primary** purpose. You can mention secondary purposes in the description.

### Q: What if a project doesn't fit any category?
**A:** Add it to `dev-tools` (the catch-all) or propose a new category via PR.

### Q: How do I remove a project?
**A:** 
```bash
git submodule deinit -f projects/<category>/<name>
rm -rf .git/modules/projects/<category>/<name>
git rm -f projects/<category>/<name>
```
Then update the metadata files and documentation.

---

## 🎯 Contribution Checklist

- [ ] Repository created at `mojomast/<name>`
- [ ] `add-project.sh` run successfully
- [ ] Metadata added to `/tmp/our_projects.json`
- [ ] Category mapping updated in `/tmp/categories.json`
- [ ] README category table updated
- [ ] PROJECT_INDEX updated
- [ ] Changes committed with `feat: add <name> to <category>`

---

<div align="center">

_🤝 The Ussyverse grows with every contribution. Ship it!_

[← Back to README](../README.md) · [🏗️ Architecture →](ARCHITECTURE.md) · [📋 Project Index →](PROJECT_INDEX.md)

</div>

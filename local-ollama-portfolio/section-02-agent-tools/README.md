# Section 2 — Giving Agents Tools

**Original course:** [Giving Agents Tools](../../section-02-agent-tools/README.md). Original exercises include `@tool`, prebuilt tools, optional AWS tools, and advanced class-based/async patterns.

This folder adds a **new local alternative** for `qwen3:1.7b`. Python code chooses and executes allowed tools deterministically, and the model summarises the result. **It does not demonstrate autonomous tool selection** or reproduce the course's full AWS functionality.

## Files
- [8-cell local tools practical](02_agent_tools_local.ipynb): tip calculator, fictional stock tool, explicit routing, tests, allowlist, model explanation, JSON evidence.

## Run
Start Ollama, run `ollama pull qwen3:1.7b`, open this file in JupyterLab, and run Code Cells 1–8 in order.

**Evidence status:** New notebook source is uploaded, not independently executed on the learner's Windows PC.

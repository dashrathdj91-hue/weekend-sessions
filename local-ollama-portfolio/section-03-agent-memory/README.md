# Section 3 — Agents That Remember

**Original course:** [Agent Memory](../../section-03-agent-memory/README.md). The original exercises cover Mem0, per-user long-term memory and a LangGraph checkpointer backed by AgentCore Memory.

The uploaded [8-cell local memory practical](03_agent_memory_local.ipynb) is an original simplified **Ollama alternative**, using fictional preferences and explicit Python dictionaries. It tests isolation of demo data, builds a context, invokes the local model, clears session history and saves a JSON report.

**Important limits:** There is no Mem0 vector retrieval, no persistent memory service and no production authentication/isolation guarantee. It does not contain actual personal records.

## Run
Python 3.12, JupyterLab, running Ollama with `qwen3:1.7b`. Execute Cells 1–8 with Shift+Enter.

**Evidence status:** Source notebook uploaded; this new notebook has not been executed on the learner's machine.

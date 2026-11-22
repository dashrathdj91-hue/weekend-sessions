# AI Agent Bootcamp — Local AI Portfolio

**Author:** Dashrath Kumar  
**Focus:** Python · Agentic AI · Local LLMs · MCP · A2A · APIs · Docker · Evaluation  
**Runtime:** Windows / JupyterLab · Ollama · `qwen3:1.7b`  
**Cloud costs:** No AWS/Bedrock required for these local examples.

This folder contains **14 practical Jupyter notebooks** covering all seven course section numbers: three **new local introductory alternatives** in Sections 1–3 and eleven previously prepared local exercises in Sections 4–7. The learner reported successful runs for the earlier exercises; the **new Sections 1–3 notebooks have not yet been executed and verified on their Windows PC**. All files are clean sources without executed cell outputs. The original upstream teaching materials by Shivank Agrawal remain in the parent repository and are linked from the new guides.

## Portfolio projects

| Area | Notebook | What it demonstrates |
|---|---|---|
| Getting started | [First Agent (local)](section-01-first-agent/01_first_agent_local.ipynb) | Local Ollama chat, system prompts, simple validation and fictional document summary — **new/unverified** |
| Tools | [Python Tool Dispatcher (local)](section-02-agent-tools/02_agent_tools_local.ipynb) | Deterministic tool execution with fictional inventory, allowlist and Qwen3 result explanation — **new/unverified** |
| Memory | [Per-user Demo Memory (local)](section-03-agent-memory/03_agent_memory_local.ipynb) | Fictional user preferences, per-user context and session reset — **new/unverified** |
| Multi-agent | [Supervisor–Worker](section-04-multi-agent/01_supervisor_worker.ipynb) | Specialised news, finance and sentiment workers; supervisor synthesis on fictional data |
| Multi-agent | [Agent as Tool](section-04-multi-agent/02_agent_as_tool.ipynb) | Teacher orchestrator invoking math, writing and science specialists |
| Multi-agent | [Graph Pattern](section-04-multi-agent/03_graph_pattern.ipynb) | Rule-governed routing across order-check, risk and fulfilment nodes |
| Multi-agent | [Swarm Pattern](section-04-multi-agent/04_swarm_pattern.ipynb) | Bounded specialist handoffs for a fictional game-design workflow |
| MCP / A2A | [MCP Basics](section-05-mcp-a2a/01_mcp_basics.ipynb) | Local MCP server/client, tool discovery, tools, resources and prompts |
| MCP / A2A | [Strands + MCP](section-05-mcp-a2a/02_strands_mcp.ipynb) | Strands agent with local Ollama using MCP tools |
| MCP / A2A | [Local A2A Protocol](section-05-mcp-a2a/03_a2a_protocol.ipynb) | Agent Cards and local JSON-RPC calls for fictional travel agents |
| Local deployment | [FastAPI Agent API](section-06-local-deployment/01_fastapi_ollama.ipynb) | API validation, endpoints, local Ollama model call and health checks |
| Local deployment | [Docker + Ollama](section-06-local-deployment/02_docker_ollama.ipynb) | Local container packaging and API calls to host Ollama |
| Testing & governance | [Evaluation & Observability](section-07-evaluation-governance/01_eval_observability.ipynb) | Small benchmark suite, response latency, tracing and scoring |
| Testing & governance | [Governance & Approval Rules](section-07-evaluation-governance/02_governance_approvals.ipynb) | Deterministic approvals, forbidden actions and audit logs |

## Run locally

**Prerequisites:** Python 3.12, JupyterLab, Ollama, and the downloaded local model `qwen3:1.7b`. Docker Desktop is required only for the Docker practical.

```powershell
ollama pull qwen3:1.7b
python -m pip install jupyterlab requests
jupyter lab
```

Open a notebook and run the code cells from top to bottom with **Shift+Enter**. Each notebook contains its own additional install and setup guidance. Do not run overlapping API server notebooks on the same port without shutting down the previous server.

## Evidence & limitations

- **Notebooks:** The learner reported that the earlier 11 local exercises (Sections 4–7) passed. The newly created three introductory notebooks (Sections 1–3) have **not** been run or independently verified on the learner's machine. Completed execution logs and generated reports have not been retrieved from their laptop.
- **Data:** Several examples use fictional business records, orders, weather, flight and finance cases. They are not live commercial data.
- **Agent orchestration:** Some lessons use Python-controlled orchestration instead of fully autonomous SDK planners. In particular, the A2A notebook demonstrates compatible local HTTP patterns, **not** the complete official A2A SDK lifecycle.
- **Deployment:** FastAPI and Docker run locally. **AWS Lambda, ECS Fargate and AgentCore cloud deployment are not claimed** as completed.
- **Evaluation:** The included test set is educational, not production-grade model benchmarking.
- **Safety:** Local policy examples simulate decisions and never execute payments or real refunds.

## Repository structure

```text
section-01-first-agent/          1 new notebook
section-02-agent-tools/          1 new notebook
section-03-agent-memory/         1 new notebook
section-04-multi-agent/          4 notebooks
section-05-mcp-a2a/             3 notebooks
section-06-local-deployment/    2 notebooks
section-07-evaluation-governance/ 2 notebooks
docs/                            setup, progress & evidence guidance
.github/workflows/              notebook structure verification
```

See [Windows setup](docs/WINDOWS_SETUP.md), [progress and boundaries](docs/COMPLETION_STATUS.md), and [adding authentic evidence](docs/ADD_YOUR_RESULTS.md).

> **Privacy:** Never commit access keys, passwords, authentication tokens, personal data, downloaded models, or private execution logs to a public repository.
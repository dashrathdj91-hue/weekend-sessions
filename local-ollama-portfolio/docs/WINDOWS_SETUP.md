# Windows / JupyterLab Setup

1. Install Python 3.12, JupyterLab and [Ollama](https://ollama.com/download/windows).
2. In PowerShell, run `ollama pull qwen3:1.7b`, then `ollama list`.
3. Optionally create a virtual environment:

```powershell
py -3.12 -m venv .venv
Set-ExecutionPolicy -Scope Process Bypass -Force
.\.venv\Scripts\Activate.ps1
python -m pip install jupyterlab requests
python -m jupyter lab
```

4. Open each notebook and run its code cells sequentially with **Shift+Enter**.
5. If dependency installation changes the current Python environment, choose **Kernel → Restart Kernel** and rerun from the first cell.
6. Launch Docker Desktop before the Docker practical. Containers use `host.docker.internal` to access Ollama running on Windows.
7. Keep FastAPI development servers bound to `127.0.0.1` and shut down servers/containers after testing.

For Qwen3 empty responses, use `think: false` with sufficient output tokens, as demonstrated in the corrected FastAPI notebook.

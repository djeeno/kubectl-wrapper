# kubectl-wrapper
kubectl-wrapper displays the current-context and prompts for user confirmation when trying to execute kubectl's subcommands that can update the cluster's state.

## Install

```bash
# for curl
curl -LR https://github.com/djeeno/kubectl-wrapper/releases/latest/download/kubectl -o /usr/local/bin/kubectl ; chmod -v +x /usr/local/bin/kubectl

# for wget
wget -c https://github.com/djeeno/kubectl-wrapper/releases/latest/download/kubectl -O /usr/local/bin/kubectl ; chmod -v +x /usr/local/bin/kubectl
```

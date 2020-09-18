# kubectl-wrapper
kubectl-wrapper displays the current-context and prompts for user confirmation when trying to execute kubectl's subcommands that can update the cluster's state.

## Install

```bash
# for curl
curl -LR https://github.com/djeeno/kubectl-wrapper/releases/latest/download/kubectl -o /usr/local/bin/kubectl ; chmod -v +x /usr/local/bin/kubectl

# for wget
wget -c https://github.com/djeeno/kubectl-wrapper/releases/latest/download/kubectl -O /usr/local/bin/kubectl ; chmod -v +x /usr/local/bin/kubectl
```

## Features

### Switching context by environment variables `KUBECTL_CONTEXT`
```console
$ export KUBECTL_CONTEXT=gke_myproject_asia-northeast1_dev001
$ kubectl get pods
2006-01-02T15:04:05+0000 [   info] current-context: gke_myproject_asia-northeast1_dev001
NAME                     READY   STATUS    RESTARTS   AGE
api-15cd6c6a89-bhbfj     1/1     Running   0          2d17h
api-15cd6c6a89-r86m5     1/1     Running   0          2d17h
api-15cd6c6a89-z9r97     1/1     Running   0          2d17h

$ export KUBECTL_CONTEXT=gke_myproject_asia-northeast1_prd001
$ kubectl get pods
2006-01-02T15:04:05+0000 [   info] current-context: gke_myproject_asia-northeast1_prd001
NAME                     READY   STATUS    RESTARTS   AGE
api-ac6cf79d65-c69x4     1/1     Running   0          30m
api-ac6cf79d65-jfdss     1/1     Running   0          30m
api-ac6cf79d65-rkt7x     1/1     Running   0          30m
```

### Warning for target context
If not set `--context` option or `KUBECTL_CONTEXT`, display and confirm current-context.

```console
$ kubectl apply -f sample.yaml
2006-01-02T15:04:05+0000 [   info] kubectl config current-context => gke_myproject_asia-northeast1_prd001
2006-01-02T15:04:05+0000 [warning] press ENTER KEY to continue...
deployment.apps/sample configured
```

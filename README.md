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

### context switching by environment variables `KUBECTL_CONTEXT`
```console
$ export KUBECTL_CONTEXT=gke_myproject_asia-northeast1_dev001
$ kubectl get pods
2020-08-28T15:04:01+0900 [   info] current-context: gke_myproject_asia-northeast1_dev001
NAME                     READY   STATUS    RESTARTS   AGE
api-15cd6c6a89-bhbfj     1/1     Running   0          2d17h
api-15cd6c6a89-r86m5     1/1     Running   0          2d17h
api-15cd6c6a89-z9r97     1/1     Running   0          2d17h

$ export KUBECTL_CONTEXT=gke_myproject_asia-northeast1_prd001
$ kubectl get pods
2020-08-28T15:04:15+0900 [   info] current-context: gke_myproject_asia-northeast1_prd001
NAME                     READY   STATUS    RESTARTS   AGE
api-ac6cf79d65-c69x4     1/1     Running   0          30m
api-ac6cf79d65-jfdss     1/1     Running   0          30m
api-ac6cf79d65-rkt7x     1/1     Running   0          30m
```

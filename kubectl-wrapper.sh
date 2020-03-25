# Run the `source` command to load this file into the current shell like follow:
#   $ source kubectl-wrapper.sh

# kubect-wrapper displays the current-context and prompts for user confirmation
# when trying to execute kubectl's subcommands that can update the cluster's state.
kubectl() { (
  # if has 1 argument || has -h --help --dry-run option || Sub-commands that are not dangerous if executed without confirmation; then
  if [ $# -le 1 ] || { echo " $* " | grep -Eq -- ' -h | --help | --dry-run '; } \
    || { echo " $* " | grep -Eq ' api-resources | api-version | cluster-info | completion | config | describe | diff | explain | get | logs | top | version | wait '; }; then
    command kubectl "$@"
    return $?
  fi
  printf "\e[01;33m%s\n%s\e[0m" "# CurrentContext: " "#   "
  command kubectl config current-context
  printf "\e[01;33m%s\e[0m" "# Press Enter key to continue... "
  read -r
  command kubectl "$@"
)}

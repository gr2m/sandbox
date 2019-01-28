workflow "on pull request merge, delete the branch" {
  on = "pull_request"
  resolves = ["jessfraz/branch-cleanup-action@master"]
}

action "jessfraz/branch-cleanup-action@master" {
  uses = "jessfraz/branch-cleanup-action@master"
  secrets = ["GITHUB_TOKEN"]
}

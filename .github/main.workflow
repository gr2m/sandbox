workflow "Set status on pull_request" {
  on = "pull_request"
  resolves = ["Set status"]
}

action "Set status" {
  uses = "wip/app@master"
  secrets = ["GITHUB_TOKEN"]
}

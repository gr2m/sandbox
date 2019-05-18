workflow "Debug" {
  on = "push"
  resolves = ["curl1", "curl2"]
}

action "curl1" {
  uses = "actions/bin/curl@master"
  args = [
    "-H\"Authorization: token $GITHUB_TOKEN\"",
    "-i",
    "https://api.github.com/installation/repositories"
  ]
  secrets = ["GITHUB_TOKEN"]
}

action "curl2" {
  uses = "actions/bin/curl@master"
  args = [
    "-H\"Authorization: token $GITHUB_TOKEN\"",
    "-i",
    "https://api.github.com/repos/gr2m/sandbox"
  ]
  secrets = ["GITHUB_TOKEN"]
}

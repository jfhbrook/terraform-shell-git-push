module = {
  name        = "git-push"
  provider    = "shell"
  version     = "1.0.0"
  description = "Push to a git repository"
  scripts = {
    format = [
      "terraform fmt -recursive"
    ]

    lint = [
      "tflint --recursive",
      "shellcheck ./lifecycle/*.sh"
    ]
  }
}

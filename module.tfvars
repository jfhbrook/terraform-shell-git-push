module = {
  description = "Push to a git repository"
  git = {
    main_branch = "main"
  }
  name      = "git-push"
  namespace = "jfhbrook"
  provider  = "shell"
  scripts = {
    format = ["terraform fmt -recursive"]
    lint   = ["tflint --recursive", "shellcheck ./lifecycle/*.sh"]
  }
  version = "1.0.0"
}

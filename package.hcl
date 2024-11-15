package {
  version = "1.0.0"

  scripts {
    format = [
      "terraform fmt -recursive"
    ]

    lint = [
      "tflint --recursive",
      "shellcheck ./lifecycle/*.sh"
    ]
  }
}

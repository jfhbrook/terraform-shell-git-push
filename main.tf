resource "shell_script" "git_push" {
  lifecycle_commands {
    create = file("${path.module}/lifecycle/create.sh")
    read   = file("${path.module}/lifecycle/read.sh")
    update = file("${path.module}/lifecycle/create.sh")
    delete = file("${path.module}/lifecycle/delete.sh")
  }

  environment = {
    remote = var.remote
    branch = var.branch
  }

  interpreter       = ["/usr/bin/env", "bash", "-c"]
  working_directory = var.path
}

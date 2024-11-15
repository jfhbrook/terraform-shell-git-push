output "path" {
  description = "The path to the git repository"
  value       = shell_script.git_push.output.path
}

output "remote" {
  description = "The name of the git remote that was pushed to"
  value       = shell_script.git_push.output.remote
}

output "branch" {
  description = "The branch that was pushed to"
  value       = shell_script.git_push.output.branch
}

output "sha" {
  description = "The SHA for the commit that was pushed"
  value       = shell_script.git_push.output.sha
}

output "force" {
  description = "Whether or not the push was forced"
  value       = var.force
}

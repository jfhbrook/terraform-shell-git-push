variable "path" {
  description = "The path to the git repository"
  type        = string
}

variable "remote" {
  description = "The name of the git remote to push to"
  type        = string
  default     = null
}

variable "branch" {
  description = "The branch to push"
  type        = string
  default     = null
}

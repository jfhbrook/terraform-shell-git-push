terraform {
  required_version = ">= 1.7.2"

  required_providers {
    shell = {
      source  = "scottwinkler/shell"
      version = "~> 1.7.10"
    }
  }
}

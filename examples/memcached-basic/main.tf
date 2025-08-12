terraform {
  required_version = ">= 1.6"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.0"
    }
  }
}

provider "google" {
  project = "my-project-id"
  region  = "us-central1"
}

module "memorystore_memcached" {
  source             = "../../modules/memcached"
  name               = "app-memcached"
  region             = "us-central1"
  authorized_network = "projects/my-project-id/global/networks/default"

  node_count     = 2
  node_cpu       = 2
  node_memory_mb = 4096

  labels = {
    env = "staging"
    app = "rd-conversas"
  }
}

output "endpoint" { value = module.memorystore_memcached.endpoint }


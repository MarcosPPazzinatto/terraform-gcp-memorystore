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

module "memorystore_redis" {
  source             = "../../modules/redis"
  name               = "app-cache"
  region             = "us-central1"
  tier               = "STANDARD_HA"
  memory_size_gb     = 4
  authorized_network = "projects/my-project-id/global/networks/default"
  redis_version      = "REDIS_6_X"
  labels = {
    env = "staging"
    app = "rd-conversas"
  }
}

output "host" { value = module.memorystore_redis.host }
output "port" { value = module.memorystore_redis.port }


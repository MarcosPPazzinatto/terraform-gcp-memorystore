resource "google_memcache_instance" "this" {
  name               = var.name
  region             = var.region
  authorized_network = var.authorized_network
  display_name       = var.display_name

  node_count = var.node_count

  node_config {
    cpu_count      = var.node_cpu
    memory_size_mb = var.node_memory_mb
  }

  parameters {
    params = var.parameters
  }

  labels = var.labels

  maintenance_policy {
    weekly_maintenance_window {
      day = var.maintenance_day
      start_time {
        hours   = var.maintenance_start_hour
        minutes = var.maintenance_start_minute
      }
    }
  }
}


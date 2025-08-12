resource "google_redis_instance" "this" {
  name               = var.name
  tier               = var.tier
  memory_size_gb     = var.memory_size_gb
  region             = var.region
  authorized_network = var.authorized_network
  redis_version      = var.redis_version

  display_name = var.display_name
  reserved_ip_range = var.reserved_ip_range

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

  # Optional flags (kept minimal to avoid provider/API drift)
  # auth_enabled = var.auth_enabled
}


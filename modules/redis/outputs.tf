output "id" {
  description = "ID of the Redis instance."
  value       = google_redis_instance.this.id
}

output "host" {
  description = "Host of the Redis instance."
  value       = google_redis_instance.this.host
}

output "port" {
  description = "Port of the Redis instance."
  value       = google_redis_instance.this.port
}

output "current_location_id" {
  description = "Zone/Location where the instance is currently provisioned."
  value       = google_redis_instance.this.current_location_id
}


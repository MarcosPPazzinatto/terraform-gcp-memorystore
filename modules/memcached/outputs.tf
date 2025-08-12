output "id" {
  description = "ID of the Memcached instance."
  value       = google_memcache_instance.this.id
}

output "endpoint" {
  description = "Memcached endpoint (IP and port)."
  value       = google_memcache_instance.this.discovery_endpoint
}

output "node_count" {
  description = "Number of nodes."
  value       = google_memcache_instance.this.node_count
}


variable "name" {
  type        = string
  description = "Name of the Redis instance."
}

variable "region" {
  type        = string
  description = "GCP region for the instance."
}

variable "tier" {
  type        = string
  description = "Service tier: BASIC or STANDARD_HA."
  default     = "BASIC"
}

variable "memory_size_gb" {
  type        = number
  description = "Memory size in GB."
}

variable "authorized_network" {
  type        = string
  description = "Full resource path of the authorized VPC network."
}

variable "redis_version" {
  type        = string
  description = "Redis version (e.g., REDIS_6_X, REDIS_7_0)."
  default     = "REDIS_6_X"
}

variable "display_name" {
  type        = string
  description = "Optional display name."
  default     = null
}

variable "reserved_ip_range" {
  type        = string
  description = "CIDR range for the instance if you want to reserve IPs in a specific range."
  default     = null
}

variable "labels" {
  type        = map(string)
  description = "Resource labels."
  default     = {}
}

variable "maintenance_day" {
  type        = string
  description = "Maintenance day (e.g., MONDAY)."
  default     = "MONDAY"
}

variable "maintenance_start_hour" {
  type        = number
  description = "Maintenance start hour (0–23)."
  default     = 3
}

variable "maintenance_start_minute" {
  type        = number
  description = "Maintenance start minute (0–59)."
  default     = 0
}

# variable "auth_enabled" {
#   type        = bool
#   description = "Enable Redis AUTH. Token is not retrievable via Terraform."
#   default     = false
# }


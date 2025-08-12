variable "name" {
  type        = string
  description = "Name of the Memcached instance."
}

variable "region" {
  type        = string
  description = "GCP region for the instance."
}

variable "authorized_network" {
  type        = string
  description = "Full resource path of the authorized VPC network."
}

variable "display_name" {
  type        = string
  description = "Optional display name."
  default     = null
}

variable "node_count" {
  type        = number
  description = "Number of Memcached nodes."
  default     = 1
}

variable "node_cpu" {
  type        = number
  description = "vCPU per node."
  default     = 2
}

variable "node_memory_mb" {
  type        = number
  description = "Memory per node in MB."
  default     = 4096
}

variable "parameters" {
  type        = map(string)
  description = "Memcached parameters map."
  default     = {}
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


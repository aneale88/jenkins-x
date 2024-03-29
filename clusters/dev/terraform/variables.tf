variable "credentials" {
  description = "Path to the GCP service account key"
}

variable "gcp_zone" {
  description = "GCP zone, e.g. us-east1-b (which must be in gcp_region)"
}

variable "gcp_project" {
  description = "GCP project name"
}

variable "cluster_name" {
  description = "Name of the K8s cluster"
}

variable "organisation" {
  description = "Organisation name for the cluster"
}

variable "cloud_provider" {
  description = "The cloud provider, currently only GKE is supported"
}

variable "min_node_count" {
  description = "Min Number of worker VMs to create"
  default = 3
}

variable "max_node_count" {
  description = "Max Number of worker VMs to create"
  default = 5
}

variable "node_machine_type" {
  description = "GCE machine type"
  default = "n1-standard-2"
}

variable "node_preemptible" {
  description = "Use preemptible nodes"
  default = "false"
}

variable "node_disk_size" {
  description = "Node disk size in GB"
  default = "20"
}

variable "node_devstorage_role" {
  description = "The devstorage oauth role to add to the node pool"
  default = "https://www.googleapis.com/auth/devstorage.read_only"
}


variable "enable_kubernetes_alpha" {
  default ="false"
} 

variable "enable_legacy_abac" {
  default ="true"
} 

variable "auto_repair" {
  default ="false"
} 

variable "auto_upgrade" {
  default = "false"
} 

variable "created_by" {
  description = "The user that created the cluster"
  default = "Unknown"
}

variable "created_timestamp" {
  description = "The timestamp this cluster was created"
  default = "Unknown"
}

variable "monitoring_service" {
  description = "The monitoring service to use. Can be monitoring.googleapis.com, monitoring.googleapis.com/kubernetes (beta) and none"
  default = "monitoring.googleapis.com"
}

variable "logging_service" {
  description = "The logging service to use. Can be logging.googleapis.com, logging.googleapis.com/kubernetes (beta) and none"
  default = "logging.googleapis.com"
}


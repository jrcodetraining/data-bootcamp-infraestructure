
variable "project_id" {
    description = "The project in which the cluster will exist"
}

variable "region" {
    description = "The region in which the cluster and associated nodes will be created in"
}

variable "zone" {
    description = "The zone in which the cluster and associated nodes will be created in"
}

variable "location" {
    description = "The location in which the cluster and associated nodes will be created in"
}

variable "cluster_name" {
    description = "The name of the cluster, unique within the project and zoneData"
}

variable "staging_bucket" {
    description = "The Cloud Storage staging bucket used to stage files, such as Hadoop jars, between client machines and the cluster"
    default =   ""
}

variable "raw_bucket" {
    description = "The Cloud Storage raw bucket used to raw files"
    default =   ""
}

variable "master_num_instances" {
    description = "Specifies the number of master nodes to create"
    default     = 1
}

variable "master_machine_type" {
    description = "The name of a Google Compute Engine machine type to create for the master"
    default     = "n1-standard-1"
}

variable "master_boot_disk_type" {
    description = "Specifies the tpye of master nodes boot disk"
    default     = "pd-standard"
}

variable "master_boot_disk_size_gb" {
    description = "Size of the primary disk attached to each node, specified in GB"
    default     = 15
}

variable "master_num_local_ssds" {
    description = "The amount of local SSD disks that will be attached to master cluster node"
    default     = 0
}

variable "worker_num_instances" {
    description = "Specifies the number of worker nodes to create"
    default     = 2
}

variable "worker_machine_type" {
    description = "The name of a Google Compute Engine machine type to create for the worker nodes"
    default     = "n1-standard-1"
}

variable "worker_boot_disk_type" {
    description = "Specifies the tpye of worker nodes boot disk"
    default     = "pd-standard"
}

variable "worker_boot_disk_size_gb" {
    description = "Size of the primary disk attached to each worker node, specified in GB"
    default     = 15
}

variable "worker_num_local_ssds" {
    description = "The amount of local SSD disks that will be attached to each worker cluster node"
    default     = 0
}


variable "internal_ip_only" {
    description = ""
    default     = false
}

variable "shielded_enable_secure_boot" {
    description = ""
    default     = false
}

variable "shielded_enable_vtpm" {
    description = ""
    default     = false
}

variable "shielded_enable_integrity_monitoring" {
    description = ""
    default     = false
}

variable "image_version" {
    description = "The Cloud Dataproc image version to use for the cluster"
    default     = "2.0-debian10"
}

variable "service_account_scopes" {
    description = ""
    default = ["cloud-platform"]
}

variable "optional_components" {
    description = ""
    default = ["JUPYTER"]
}

variable "enable_http_port_access" {
    description = ""
    default     = true
}


resource "google_storage_bucket" "bucket" {
  project  = var.project_id
  name     = var.staging_bucket
  location = var.location
}

resource "google_dataproc_cluster" "cluster" {
  project = var.project_id
  region  = var.region
  name    = var.cluster_name

  cluster_config {
    staging_bucket = var.staging_bucket

    gce_cluster_config {
      zone                   = var.zone
      internal_ip_only       = var.internal_ip_only
      service_account_scopes = var.service_account_scopes
      shielded_instance_config {
        enable_secure_boot          = var.shielded_enable_secure_boot
        enable_vtpm                 = var.shielded_enable_vtpm
        enable_integrity_monitoring = var.shielded_enable_integrity_monitoring
      }

    }

    master_config {
      num_instances = var.master_num_instances
      machine_type  = var.master_machine_type
      disk_config {
        boot_disk_type    = var.master_boot_disk_type
        boot_disk_size_gb = var.master_boot_disk_size_gb
        num_local_ssds    = var.master_num_local_ssds
      }
    }

    worker_config {
      num_instances = var.worker_num_instances
      machine_type  = var.worker_machine_type
      disk_config {
        boot_disk_type    = var.worker_boot_disk_type
        boot_disk_size_gb = var.worker_boot_disk_size_gb
        num_local_ssds    = var.worker_num_local_ssds
      }
    }

    software_config {
      image_version       = var.image_version
      optional_components = var.optional_components
    }

  }
}


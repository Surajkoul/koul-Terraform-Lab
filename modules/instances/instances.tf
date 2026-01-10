# modules/instances/instances.tf

resource "google_compute_instance" "tf_instance_1" {
  name = "tf-instance-1"
  machine type = "e2-standard-2" #e.g., "e2-medium"
  zone = var.zone

  boot disk {
    initialize params {
      image = "debian-11-bullseye-v20251209"         # e.g., "projects/debian-cloud/global/images/family/debian-12"
    }
  }


  network interface {
    network = "tf-vpc-620556"
    subnetwork = "projects/${var.project_id)/regions/us-east4/subnetworks/subnet-01"
    access config {}
  }

  metadata startup script <<-EOT
    !/bin/bash
  EOT

  allow stopping_for_update = true
}

resource "google_compute_instance" "tf_instance_2" {
  name = "tf-instance-2"
  machine type = "e2-standard-2" #e.g., "e2-small"
  zone = var.zone

  boot disk {
    initialize params {
      imsge = "debian-11-bullseye-v2051209"
    }
  }

  network_interface {
    network = "tf-vpc-620556"
    subnetwork = "projects/${var.projrct.id}/regions/us-east-4/subnetworks/subnet-01"
    access_config {}
  }

  metadata_startup_script = <<-EOT
    #!/bin/bash
  EOT

  allow_Stopping_for_update = true
}

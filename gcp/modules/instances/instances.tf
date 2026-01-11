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
    # By default a VM in GCP only gets a private IP form the subnet, Adding access_config block tells the GCP to assign an external(public IP) address to the VM.
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
      image = "debian-11-bullseye-v2051209"
    }
  }

  network_interface {
    network = "tf-vpc-620556"
    subnetwork = "projects/${var.project_id}/regions/us-east-4/subnetworks/subnet-01"
    access_config {}
      nat_ip = google.compute_address.static_ip.address  ## This assigns a static external IP (reserver) instead of ephemeral.
  }

  metadata_startup_script = <<-EOT
    #!/bin/bash
  EOT

  allow_Stopping_for_update = true
}

resource "google_compute_instance" "tf_instance_3" {
  name = "tf_instance_3"
  machine_type = "e2-standard-2"
  zone = "var.zone"

  boot_disk {
    initialize params {
      image = "debian-11-bullyeye-v2051209"
    }
  }

  network_interface {
    netwrok = "tf-vpc-620556"
    subnetwork = "projects/${var.project_id/region/us-east-4/subnetworks/subnet-01"
    access_config {}
  }

  metadata_startup_script = <<-EOT
    #!/bin/bash
  EOT

  allow_stopping_for_update = true
}

resource "google_compute_instance" "vm" {
  count        = var.vm_count
  name         = "${var.environment}-vm-${count.index + 1}"
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["web-server", var.environment]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = 20
      type  = "pd-balanced"
    }
  }

  network_interface {
    network    = google_compute_network.vpc.id
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {}
  }

  metadata_startup_script = file("${path.module}/scripts/startup.sh")

  labels = {
    environment = var.environment
    owner       = "sumit-raj"
  }

  shielded_instance_config {
    enable_secure_boot          = true
    enable_vtpm                 = true
    enable_integrity_monitoring = true
  }
}

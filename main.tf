resource "google_compute_instance" "demo" {
  name         = "${var.instance_name}"
  machine_type = "n1-standard-1"
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}

output "external_ip" {
  value = "${google_compute_instance.demo.network_interface.0.access_config.0.nat_ip}"
}

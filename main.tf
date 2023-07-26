provider "google" {
    project= "deployment-dev-394008"
    credentials = "${file("credentials1.json")}"
    region= "us-central1"
    zone="us-central1-c"


}
resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-c"
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
    boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }
}

 
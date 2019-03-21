data "google_compute_zones" "available" {
  region  = "${var.region}"
  project = "${var.project}"
}

// Resources for web

resource "google_compute_instance" "web_server_app" {
  count                     = "${var.web_server_count}"
  name                      = "${var.web_server_name}${count.index+1}"
  machine_type              = "${var.web_server_machine_type}"
  zone                      = "${element(data.google_compute_zones.available.names, count.index)}"
  tags                      = ["${var.web_server_name}"]
  allow_stopping_for_update = true

  labels {
    env = "${var.stages}"

    // Type is useful when to define a generic rule, e.g. StackDriver logger
    type = "${var.tomcat_server_type}"
  }

  boot_disk {
    initialize_params {
      image = "${var.web_server_image}"
      size  = "${var.web_server_size}"
      type  = "${var.disk_type_ssd}"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP - leaving this block empty will generate a new external IP and assign it to the machine
    }
  }

  // This is the same effect if create from GCP console with a default service account
  service_account {
    scopes = ["storage-ro", "logging-write", "service-management", "service-control", "trace-append", "monitoring-write"]
  }
}

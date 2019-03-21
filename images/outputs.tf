output "private_address" {
  value = "${google_compute_instance.web_server_app.*.network_interface.0.network_ip}"
}

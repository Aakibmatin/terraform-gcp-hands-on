output "instance_ip" {
  description = "External IP of the VM"
  value       = google_compute_instance.app_server.network_interface[0].access_config[0].nat_ip
}

output "instance_id" {
  description = "ID of the VM"
  value       = google_compute_instance.app_server.id
}

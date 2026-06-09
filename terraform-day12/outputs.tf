output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.day12_nginx.id
}
 
output "container_name" {

  description = "Name of the Docker container"
  value       = docker_container.day12_nginx.name
}

output "access_url" {
  description = "URL to access nignx"
  value       = "http://localhost:${var.external_port}"
}

variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "day12-nginx"
}
 
variable "external_port" {
  description = "External port to expose"
  type        = number
  default     = 8080
}
 
variable "nginx_image" {
  description = "Docker image to use"
  type        = string
  default     = "nginx:latest"
}

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "day11_nginx" {
  image = docker_image.nginx.image_id
  name  = "day11-terraform-nginx"
  ports {
    internal = 80
    external = 8080
  }
}

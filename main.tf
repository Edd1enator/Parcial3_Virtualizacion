terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}
 
provider "docker" {}

resource "docker_container" "apiholamundo" {
  image = "apiholamundorep:latest"
  name  = "apiholamundo"
  ports {
    internal = 3000
    external = 3000
  }
}

resource "docker_container" "mongo" {
  image = "mongo:latest"
  name  = "mongo"
  ports {
    internal = 27017
    external = 27017
  }
  network_mode = "bridge"
}

resource "docker_container" "landing" {
  image = "alexandroqc/simple-landing-page:latest"
  name  = "landing"
  ports {
    internal = 80
    external = 3131
  }
}

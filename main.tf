terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.22.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "iot-assignment-2" {
  name         = "ghcr.io/vincentbaeten/iot-assignment-2:sha-25bdee3"
  keep_locally = false
}

resource "docker_container" "iot-assignment-2" {
  image = docker_image.iot-assignment-2.image_id
  name  = "iot-assignment-2"
}

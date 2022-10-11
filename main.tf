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
  name         = "ghcr.io/vincentbaeten/iot-assignment-2:latest"
  keep_locally = false
}

resource "docker_container" "iot-assignment-2" {
  image = docker_image.iot-assignment-2.image_id
  name  = "iot-assignment-2"
}

# resource "fakewebservices_vpc" "primary_vpc" {
#   name       = "Primary VPC"
#   cidr_block = "0.0.0.0/1"
# }

# resource "fakewebservices_server" "servers" {
#   count = 2

#   name = "Server ${count.index + 1}"
#   type = "t2.micro"
#   vpc  = fakewebservices_vpc.primary_vpc.name
# }

# resource "fakewebservices_load_balancer" "primary_lb" {
#   name    = "Primary Load Balancer"
#   servers = fakewebservices_server.servers[*].name
# }

# resource "fakewebservices_database" "prod_db" {
#   name = "Production DB"
#   size = 256
# }

# resource "fakewebservices_server" "server-3" {
#   name = "Server 3"
#   type = "t2.macro"
# }

# resource "fakewebservices_server" "server-4" {
#   name = "Server 4"
#   type = "t2.macro"
# }

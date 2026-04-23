terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  # En Windows/WSL2, Terraform suele encontrar el socket automáticamente.
  # Si falla, puedes descomentar la siguiente línea:
  # host = "unix:///var/run/docker.sock"
}

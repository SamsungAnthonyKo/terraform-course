terraform {
  backend "remote" {
    hostname = "ansik.scalr.io"
    organization = "Environment A"
    workspaces {
      name = "sandbox"
    }
  }
}

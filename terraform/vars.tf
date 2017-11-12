variable "AWS_REGION" {
  default = "eu-west-1"
}

variable "AWS_AVAILABILITY_ZONE" {
  default = "eu-west-1a"
}

variable "AWS_INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "SSH_USER" {
  default = "ubuntu"
}

variable "SSH_PUBLIC_KEY_PATH" {
  default = "~/.ssh/id_rsa.pub"
}

variable "AMIS" {
  type = "map"

  default = {
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "S3_BUCKET" {
  description = "S3 Bucket"
  default     = "terraform-workshop-app-state-davidmolinero"
}

variable "DOCKER_USER" {
  description = "Docker user"
  default     = "davidmolinero"
}

variable "DOCKER_IMAGE" {
  description = "Docker image"
  default     = "terraform-workshop-app"
}

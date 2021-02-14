variable "server_region" {
  description = "Region to deploy server"
  type        = string
  default     = "us-west-2"
}


variable "availability_zone" {
    type = string
    default = "us-west-2a"

}

variable "bundles" {
    description ="bundle Id for your aws lightsail instance"
    type = string

}

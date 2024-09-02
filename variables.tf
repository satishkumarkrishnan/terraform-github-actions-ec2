variable "instanceTenancy" {
  default = "default"
}

variable "dnsSupport" {
  default = true
}

variable "dnsHostNames" {
  default = true
}

variable "vpc_CIDR" {
  default = "10.0.0.0/16"
}

variable "vpc" {
  type    = string
  default = "DDSL Virtual Private Cloud"
}
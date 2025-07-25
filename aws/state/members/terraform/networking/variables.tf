variable "default_region" {
  type    = string
  default = "eu-west-2"
}

variable "flags_global" {
  type    = map(any)
  default = {}
}

variable "flags_region" {
  type    = map(any)
  default = {}
}

variable "account_id" {
  type = string
}

variable "assume_role" {
  type = string
}

variable "config_logs_bucket_name" {
  type = string
}

## Default regions

variable "config_log_us_east_1" {
  type    = bool
  default = true
}
variable "config_log_us_east_2" {
  type    = bool
  default = true
}
variable "config_log_us_west_1" {
  type    = bool
  default = true
}
variable "config_log_us_west_2" {
  type    = bool
  default = true
}
variable "config_log_ap_south_1" {
  type    = bool
  default = true
}
variable "config_log_ap_northeast_1" {
  type    = bool
  default = true
}
variable "config_log_ap_northeast_2" {
  type    = bool
  default = true
}
variable "config_log_ap_northeast_3" {
  type    = bool
  default = true
}
variable "config_log_ap_southeast_1" {
  type    = bool
  default = true
}
variable "config_log_ap_southeast_2" {
  type    = bool
  default = true
}
variable "config_log_ca_central_1" {
  type    = bool
  default = true
}
variable "config_log_eu_central_1" {
  type    = bool
  default = true
}
variable "config_log_eu_west_1" {
  type    = bool
  default = true
}
variable "config_log_eu_west_2" {
  type    = bool
  default = true
}
variable "config_log_eu_west_3" {
  type    = bool
  default = true
}
variable "config_log_eu_north_1" {
  type    = bool
  default = true
}
variable "config_log_sa_east_1" {
  type    = bool
  default = true
}

## Optional regions

variable "config_log_af_south_1" {
  type    = bool
  default = false
}
variable "config_log_ap_east_1" {
  type    = bool
  default = false
}
variable "config_log_ap_south_2" {
  type    = bool
  default = false
}
variable "config_log_ap_southeast_3" {
  type    = bool
  default = false
}
variable "config_log_ap_southeast_5" {
  type    = bool
  default = false
}
variable "config_log_ap_southeast_4" {
  type    = bool
  default = false
}
variable "config_log_ap_east_2" {
  type    = bool
  default = false
}
variable "config_log_ap_southeast_7" {
  type    = bool
  default = false
}
variable "config_log_ca_west_1" {
  type    = bool
  default = false
}
variable "config_log_eu_south_1" {
  type    = bool
  default = false
}
variable "config_log_eu_south_2" {
  type    = bool
  default = false
}
variable "config_log_eu_central_2" {
  type    = bool
  default = false
}
variable "config_log_mx_central_1" {
  type    = bool
  default = false
}
variable "config_log_me_south_1" {
  type    = bool
  default = false
}
variable "config_log_me_central_1" {
  type    = bool
  default = false
}
variable "config_log_il_central_1" {
  type    = bool
  default = false
}
############ the variables in this file are passed in at environment level ############

variable "project" {
  default = ""
}

variable "region" {
  default = ""
}

variable "zone" {
  default = ""
}

variable "disk_type_ssd" {
  default = "pd-ssd"
}

variable "disk_type_standard" {
  default = "pd-standard"
}

variable "stages" {
  default = ""
}

//admin
variable "tomcat_server_type" {
  default = ""
}

variable "web_server_image" {
  default = ""
}

variable "web_server_count" {
  default = ""
}

variable "web_server_name" {
  default = ""
}

variable "web_server_machine_type" {
  default = ""
}

variable "web_server_size" {
  default     = ""
  description = "Boot disk size"
}

variable "web_server_allow_public_ip" {
  type        = "string"
  default     = "false"
  description = "The server has no public IP by default"
}

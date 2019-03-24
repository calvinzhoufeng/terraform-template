############ the variables in this file are passed in at environment level ############

variable "project" {
  default     = ""
  description = "The project name in GCP"
}

variable "region" {
  default     = ""
  description = "The region that project is located"
}

variable "zone" {
  default     = ""
  description = "The zone that instances are running in"
}

variable "disk_type_ssd" {
  default     = "pd-ssd"
  description = "SSD hard disk type"
}

variable "disk_type_standard" {
  default     = "pd-standard"
  description = "Standard hard disk type"
}

variable "stages" {
  default     = ""
  description = "Used as env value of labels key-value"
}

//admin
variable "tomcat_server_type" {
  default     = ""
  description = "Used as env value of labels key-value"
}

variable "web_server_image" {
  default     = ""
  description = "The image used when to create disk"
}

variable "web_server_count" {
  default     = 0
  description = "Indicate how many instances to be created for this app"
}

variable "web_server_name" {
  default     = ""
  description = "Indicate the app name"
}

variable "web_server_machine_type" {
  default     = ""
  description = "Indicate the server CPU and RAM"
}

variable "web_server_size" {
  default     = 0
  description = "Indicate the boot disk size"
}

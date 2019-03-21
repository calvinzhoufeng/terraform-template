#### Resolve all the variables defined in modules ####
############ the variables in this file are passed in at environment level ############
provider "google" {
  project = "${var.project}"
  region  = "${var.region}"
}

module web {
  source = "../images"

  //Overall env info
  zone   = "${var.zone}"
  stages = "${var.stages}"

  web_server_image = "${var.web_server_image}"

  //admin
  web_server_name         = "${var.web_server_name}"
  web_server_size         = "${var.web_server_size}"
  web_server_machine_type = "${var.web_server_machine_type}"
  web_server_count        = "${var.web_server_count}"
}

variable  "pname"{} 
variable "project_id"{}
variable "creds_file"{}
variable  "region"{}

variable  "machine_type"{}
variable "startup_script"{}
variable "count_int" {
  default = "1"
}

variable "ssh_cidr" {
  default = "0.0.0.0/0"
}

variable "gce_ssh_pub_key_file" {
  default = ""
}
variable "db_version" {
  default = ""
}
variable "sql_tier" {
  default = "db-f1-micro"
}

variable "db_disk_size" {
  default = "10"
}
variable "db_user_name" {
  default = "root"
}
variable "db_user_password" {
  default = "test123"
}
variable "authorized_network" {
  default = "0.0.0.0/0"
}
variable "connect_retry_interval" {
  default = "60"
}

variable "auto_create_subnetworks" {
  type        = string
  default     = "true"
  description = "Auto-creation of the associated subnet"
}
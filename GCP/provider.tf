provider "google" {
  credentials = "${file("${var.creds_file}")}"
  project = "${var.project_id}"
  region = "${var.region}"
}
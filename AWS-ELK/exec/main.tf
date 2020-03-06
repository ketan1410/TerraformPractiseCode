module "elk" {
source = "../"

  key = "newck"
  private_key = "${file("/tmp/newck.pem")}"
}
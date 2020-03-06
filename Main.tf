data "aws_availability_zones" "available" {}

resource "aws_instance" "firstdemo" {
  ami = lookup(var.amitype, var.region)
  availability_zone = data.aws_availability_zones.available.names[1]
  security_groups = var.sgs
  instance_type = lookup(var.instance_type, var.env)

  tags = {
    Name = "demoinstance"
  }
}

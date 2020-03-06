module "elb_http" {
  source = "github.com/terraform-aws-modules/terraform-aws-elb.git"

  name  =   "elb2"
  internal  =   "false"
  subnets   =   ["subnet-03e8624f","subnet-05be9d7f"]
  security_groups   =   ["sg-072f91c0da7a71adc"]

  listener = [
      {
          instance_port =   "80"
          instance_protocol =   "HTTP"
          lb_port   =   "80"
          lb_protocol   =   "HTTP"
      },
  ]
  
}

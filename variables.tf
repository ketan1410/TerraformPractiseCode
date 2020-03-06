variable "amitype" {
    type = map(string)
    default = {
        us-east-1 = "ami-14c5486b"
        us-east-2 = "ami-922914f7"
    }
}

variable "env" {
  
}

variable "region" {
  
}

variable "sgs" {
  type = list(string)
  default = ["sg-07b2fc6c", "sg-48bba323"]
}



variable "instance_type" {
  type = map(string)
  default = {
      dev = "t2.micro"
      test = "t2.small"
  }
}


resource "aws_instance" "firstdemo" {
    instance_type   = "t2.micro"
    ami = "ami-922914f7"
    key_name    = "newck"
    vpc_security_group_ids = ["sg-072f91c0da7a71adc"]

    provisioner "remote-exec" {
        inline  = [
            "sudo yum -y install http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm",
        ]

        connection  {
            type    = "ssh"
            host    = aws_instance.firstdemo.public_ip
            user    = "ec2-user"
            private_key = file("/tmp/newck.pem")
        }
    }

    tags = {
        Name    = "ProvisionerDemo"
    }
}

resource "null_resource" "cluster" {
    provisioner "file" {
        source  = "/tmp/newck.pem"
        destination = "/tmp/newck.pem"

        connection {
            type    = "ssh"
            host    = aws_instance.firstdemo.public_ip
            user    = "ec2-user"
            private_key = file("/tmp/newck.pem")
        }
    }
  
}


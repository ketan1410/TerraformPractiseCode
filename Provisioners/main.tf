resource "aws_instance" "demo" {
    ami = "ami-922914f7"
    instance_type   = "t2.micro"

    provisioner "local-exec" {
        command = "echo ${aws_instance.demo.private_ip} >> private.ip.txt"
    }

    provisioner "local-exec" {
        command = "sudo apt update && sudo apt install apache2 >> output.txt.txt"
    }

    tags = {
        Name    = "Demo_Instance"
    }
  
}

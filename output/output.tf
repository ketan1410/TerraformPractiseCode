resource "aws_instance" "firstdemo" {
    ami = "ami-922914f7"
    instance_type = "t2.micro"

}

output "privip" {
    value = aws_instance.firstdemo.private_ip
}

output "pubip" {
    value = aws_instance.firstdemo.public_ip
}

output "pubdns" {
    value = aws_instance.firstdemo.public_dns
}

output "privdns" {
    value = aws_instance.firstdemo.private_dns
}
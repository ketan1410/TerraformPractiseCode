resource "aws_security_group" "rds-prod" {
    tags = {
        Name    = "${var.PROJECT_NAME}-rds-production"
    }
    name    = "${var.PROJECT_NAME}-rds-production"
    vpc_id  = "vpc-0bce4d860b752d02b"
    ingress {
        from_port   = 3306
        to_port = 3306
        protocol    = "tcp"
        cidr_blocks = [var.RDS_CIDR]
    }
    egress {
        from_port   = 0
        to_port = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

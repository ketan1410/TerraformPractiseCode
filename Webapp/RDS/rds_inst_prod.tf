resource "aws_db_instance" "prod" {
    identifier  = "${var.PROJECT_NAME}-prod-rds"
    # final_snapshot_identifier = "${var.PROJECT_NAME}-prod-rds-final-snapshot"
    allocated_storage   = var.RDS_ALLOCATED_STORAGE
    storage_type    = "gp2"
    engine  = var.RDS_ENGINE
    engine_version  = var.ENGINE_VERSION
    instance_class  = var.DB_INSTANCE_CLASS
    backup_retention_period = var.BACKUP_RETENTION_PERIOD
    publicly_accessible = var.PUBLICLY_ACCESSIBLE
    username    = var.RDS_USERNAME
    password    = var.RDS_PASSWORD
    vpc_security_group_ids  = [aws_security_group.rds-prod.id]
    db_subnet_group_name    = aws_db_subnet_group.rds_subnet_group.name
    multi_az    = "true"
}

resource "aws_db_subnet_group" "rds_subnet_group" {
    name    = "${var.PROJECT_NAME}_aurora_db_subnet_group"
    description = "Allowded subnets for aurora DB cluster instances"
    subnet_ids  = ["subnet-0ad896aa718faf535", "subnet-09c9da8fb906c7bf5"]
    tags = {
        Name    = "${var.PROJECT_NAME}-rds-Subnet-Group"
    }
}

output "rds_prod_enpoint" {
  value = aws_db_instance.prod.endpoint
}


